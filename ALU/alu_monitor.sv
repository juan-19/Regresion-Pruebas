//-------------------------------------------------------------------------
//						alu_monitor - www.verificationguide.com 
//-------------------------------------------------------------------------`include "alu_coverage.sv"


class alu_monitor extends uvm_monitor;

  //---------------------------------------
  // Virtual Interface
  //---------------------------------------
  virtual alu_if vif;
  realtime covA, covB, covR, covC, covD;

  //---------------------------------------
  // analysis port, to send the transaction to scoreboard
  //---------------------------------------
  uvm_analysis_port #(alu_seq_item) item_collected_port;
  
  //---------------------------------------
  // The following property holds the transaction information currently
  // begin captured (by the collect_address_phase and data_phase methods).
  //---------------------------------------
  alu_seq_item trans_collected;

  `uvm_component_utils(alu_monitor)

  //---------------------------------------
  // new - constructor
  //---------------------------------------
  function new (string name, uvm_component parent);
    super.new(name, parent);
    trans_collected = new();
    item_collected_port = new("item_collected_port", this);
  endfunction : new

  //---------------------------------------
  // build_phase - getting the interface handle
  //---------------------------------------
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    if(!uvm_config_db#(virtual alu_if)::get(this, "", "vif", vif))
       `uvm_fatal("NOVIF",{"virtual interface must be set for: ",get_full_name(),".vif"});
  endfunction: build_phase
   
  
  

  
  //---------------------------------------
  // run_phase - convert the signal level activity to transaction level.
  // i.e, sample the values on interface signal ans assigns to transaction class fields
  //---------------------------------------
  virtual task run_phase(uvm_phase phase);
    int i;
    int o;
    o=0;
    i=0;
    forever begin
      @(posedge vif.MONITOR.clk);
        i++;
        trans_collected.ALU_CTRL = vif.ALU_CTRL;
      	trans_collected.Data_A=vif.Data_A;
     	trans_collected.Data_B=vif.Data_B;
      	trans_collected.Cin=vif.Cin;
     	trans_collected.result=vif.result;
     	trans_collected.Zero=vif.Zero;
     	trans_collected.Overflow=vif.Overflow;
     	trans_collected.Carry=vif.Carry;
      	trans_collected.Negative=vif.Negative;
    	item_collected_port.write(trans_collected);
      if (i>=5000) begin
        o++;
        $display("Intento : %0d",o);
        covA=vif.alu.Dato_1.get_coverage();
        $display("Coverage Data A : %0f",covA);
        covB=vif.alu.Dato_2.get_coverage();
        $display("Coverage Data B : %0f",covB);
        covR=vif.alu.Resultado.get_coverage();
        $display("Coverage Result : %0f",covR);
        covC=vif.alu.Control.get_coverage();
        $display("Coverage ALU_CTRL : %0f",covC);
        covD=vif.alu.CXZ.get_coverage();
        $display("Coverage Cruzado con Cero : %0f",covD);
        covD=vif.alu.CXC.get_coverage();
        $display("Coverage Cruzado con Carry : %0f",covD);
        covD=vif.alu.CXN.get_coverage();
        $display("Coverage Cruzado con Negativo : %0f",covD);
        covD=vif.alu.CXO.get_coverage();
        $display("Coverage Cruzado con Overflow : %0f",covD);
        i=0;
      end
      end
  endtask : run_phase

      
  
endclass : alu_monitor
