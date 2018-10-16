backup.txt		  nombre	prueba.txt	  testbench.sv
bash_snps_xt018-AMS_2017  nombre.cpp	regresion	  test.cpp
file			  nombre.txt	salida.txt	  test.sv
file.txt		  numeros.cpp	script		  test.txt
git.sh			  pruebas2.cpp	sim_cov_commands  upload.sh
leer			  pruebas.cpp	test
//////////Prueba Crazy
class alu_crazy_test extends alu_model_base_test;

  `uvm_component_utils(alu_crazy_test)
  
  //---------------------------------------
  // sequence instance 
  //--------------------------------------- 
  alu_sequence seq;

  //---------------------------------------
  // constructor
  //---------------------------------------
  function new(string name = "alu_crazy_test",uvm_component parent=null);
    super.new(name,parent);
  endfunction : new

  //---------------------------------------
  // build_phase
  //---------------------------------------
  virtual function void build_phase(uvm_phase phase);
    super.build_phase(phase);

    // Create the sequence
    seq = alu_sequence::type_id::create("seq");
  endfunction : build_phase
  
  //---------------------------------------
  // run_phase - starting the test
  //---------------------------------------
  task run_phase(uvm_phase phase);
    
    phase.raise_objection(this);
    seq.start(env.alu_agnt.sequencer);
    phase.drop_objection(this);
    
    //set a drain-time for the environment if desired
    //phase.phase_done.set_drain_time(this, 50);
  endtask : run_phase
  
endclass : alu_crazy_test

//////////Prueba Equal
class alu_equ_test extends alu_model_base_test;

  `uvm_component_utils(alu_equ_test)
  
  //---------------------------------------
  // sequence instance 
  //--------------------------------------- 
  equ_sequence seq;

  //---------------------------------------
  // constructor
  //---------------------------------------
  function new(string name = "alu_equ_test",uvm_component parent=null);
    super.new(name,parent);
  endfunction : new

  //---------------------------------------
  // build_phase
  //---------------------------------------
  virtual function void build_phase(uvm_phase phase);
    super.build_phase(phase);

    // Create the sequence
    seq = equ_sequence::type_id::create("seq");
  endfunction : build_phase
  
  //---------------------------------------
  // run_phase - starting the test
  //---------------------------------------
  task run_phase(uvm_phase phase);
    
    phase.raise_objection(this);
    seq.start(env.alu_agnt.sequencer);
    phase.drop_objection(this);
    
    //set a drain-time for the environment if desired
    phase.phase_done.set_drain_time(this, 50);
  endtask : run_phase
  
endclass : alu_equ_test

//////////Prueba Less

class alu_le_test extends alu_model_base_test;

  `uvm_component_utils(alu_le_test)
  
  //---------------------------------------
  // sequence instance 
  //--------------------------------------- 
  le_sequence seq;

  //---------------------------------------
  // constructor
  //---------------------------------------
  function new(string name = "alu_le_test",uvm_component parent=null);
    super.new(name,parent);
  endfunction : new

  //---------------------------------------
  // build_phase
  //---------------------------------------
  virtual function void build_phase(uvm_phase phase);
    super.build_phase(phase);

    // Create the sequence
    seq = le_sequence::type_id::create("seq");
  endfunction : build_phase
  
  //---------------------------------------
  // run_phase - starting the test
  //---------------------------------------
  task run_phase(uvm_phase phase);
    
    phase.raise_objection(this);
    seq.start(env.alu_agnt.sequencer);
    phase.drop_objection(this);
    
    //set a drain-time for the environment if desired
    phase.phase_done.set_drain_time(this, 50);
  endtask : run_phase
  
endclass : alu_le_test

//////////Prueba Less Unsig

class alu_leu_test extends alu_model_base_test;

  `uvm_component_utils(alu_leu_test)
  
  //---------------------------------------
  // sequence instance 
  //--------------------------------------- 
  leu_sequence seq;

  //---------------------------------------
  // constructor
  //---------------------------------------
  function new(string name = "alu_leu_test",uvm_component parent=null);
    super.new(name,parent);
  endfunction : new

  //---------------------------------------
  // build_phase
  //---------------------------------------
  virtual function void build_phase(uvm_phase phase);
    super.build_phase(phase);

    // Create the sequence
    seq = leu_sequence::type_id::create("seq");
  endfunction : build_phase
  
  //---------------------------------------
  // run_phase - starting the test
  //---------------------------------------
  task run_phase(uvm_phase phase);
    
    phase.raise_objection(this);
    seq.start(env.alu_agnt.sequencer);
    phase.drop_objection(this);
    
    //set a drain-time for the environment if desired
    phase.phase_done.set_drain_time(this, 50);
  endtask : run_phase
  
endclass : alu_leu_test

//////////Prueba GREAT

class alu_gre_test extends alu_model_base_test;

  `uvm_component_utils(alu_gre_test)
  
  //---------------------------------------
  // sequence instance 
  //--------------------------------------- 
  gre_sequence seq;

  //---------------------------------------
  // constructor
  //---------------------------------------
  function new(string name = "alu_gre_test",uvm_component parent=null);
    super.new(name,parent);
  endfunction : new

  //---------------------------------------
  // build_phase
  //---------------------------------------
  virtual function void build_phase(uvm_phase phase);
    super.build_phase(phase);

    // Create the sequence
    seq = gre_sequence::type_id::create("seq");
  endfunction : build_phase
  
  //---------------------------------------
  // run_phase - starting the test
  //---------------------------------------
  task run_phase(uvm_phase phase);
    
    phase.raise_objection(this);
    seq.start(env.alu_agnt.sequencer);
    phase.drop_objection(this);
    
    //set a drain-time for the environment if desired
    phase.phase_done.set_drain_time(this, 50);
  endtask : run_phase
  
endclass : alu_gre_test

//////////Prueba Great UN

class alu_greu_test extends alu_model_base_test;

  `uvm_component_utils(alu_greu_test)
  
  //---------------------------------------
  // sequence instance 
  //--------------------------------------- 
  greu_sequence seq;

  //---------------------------------------
  // constructor
  //---------------------------------------
  function new(string name = "alu_greu_test",uvm_component parent=null);
    super.new(name,parent);
  endfunction : new

  //---------------------------------------
  // build_phase
  //---------------------------------------
  virtual function void build_phase(uvm_phase phase);
    super.build_phase(phase);

    // Create the sequence
    seq = greu_sequence::type_id::create("seq");
  endfunction : build_phase
  
  //---------------------------------------
  // run_phase - starting the test
  //---------------------------------------
  task run_phase(uvm_phase phase);
    
    phase.raise_objection(this);
    seq.start(env.alu_agnt.sequencer);
    phase.drop_objection(this);
    
    //set a drain-time for the environment if desired
    phase.phase_done.set_drain_time(this, 50);
  endtask : run_phase
  
endclass : alu_greu_test

//////////Prueba Add

class alu_add_test extends alu_model_base_test;

  `uvm_component_utils(alu_add_test)
  
  //---------------------------------------
  // sequence instance 
  //--------------------------------------- 
  add_sequence seq;

  //---------------------------------------
  // constructor
  //---------------------------------------
  function new(string name = "add_le_test",uvm_component parent=null);
    super.new(name,parent);
  endfunction : new

  //---------------------------------------
  // build_phase
  //---------------------------------------
  virtual function void build_phase(uvm_phase phase);
    super.build_phase(phase);

    // Create the sequence
    seq = add_sequence::type_id::create("seq");
  endfunction : build_phase
  
  //---------------------------------------
  // run_phase - starting the test
  //---------------------------------------
  task run_phase(uvm_phase phase);
    
    phase.raise_objection(this);
    seq.start(env.alu_agnt.sequencer);
    phase.drop_objection(this);
    
    //set a drain-time for the environment if desired
    phase.phase_done.set_drain_time(this, 50);
  endtask : run_phase
  
endclass : alu_add_test

//////////Prueba Add UNS

class alu_addu_test extends alu_model_base_test;

  `uvm_component_utils(alu_addu_test)
  
  //---------------------------------------
  // sequence instance 
  //--------------------------------------- 
  addu_sequence seq;

  //---------------------------------------
  // constructor
  //---------------------------------------
  function new(string name = "alu_addu_test",uvm_component parent=null);
    super.new(name,parent);
  endfunction : new

  //---------------------------------------
  // build_phase
  //---------------------------------------
  virtual function void build_phase(uvm_phase phase);
    super.build_phase(phase);

    // Create the sequence
    seq = addu_sequence::type_id::create("seq");
  endfunction : build_phase
  
  //---------------------------------------
  // run_phase - starting the test
  //---------------------------------------
  task run_phase(uvm_phase phase);
    
    phase.raise_objection(this);
    seq.start(env.alu_agnt.sequencer);
    phase.drop_objection(this);
    
    //set a drain-time for the environment if desired
    phase.phase_done.set_drain_time(this, 50);
  endtask : run_phase
  
endclass : alu_addu_test

//////////Prueba Substract

class alu_subu_test extends alu_model_base_test;

  `uvm_component_utils(alu_subu_test)
  
  //---------------------------------------
  // sequence instance 
  //--------------------------------------- 
  subu_sequence seq;

  //---------------------------------------
  // constructor
  //---------------------------------------
  function new(string name = "alu_subu_test",uvm_component parent=null);
    super.new(name,parent);
  endfunction : new

  //---------------------------------------
  // build_phase
  //---------------------------------------
  virtual function void build_phase(uvm_phase phase);
    super.build_phase(phase);

    // Create the sequence
    seq = subu_sequence::type_id::create("seq");
  endfunction : build_phase
  
  //---------------------------------------
  // run_phase - starting the test
  //---------------------------------------
  task run_phase(uvm_phase phase);
    
    phase.raise_objection(this);
    seq.start(env.alu_agnt.sequencer);
    phase.drop_objection(this);
    
    //set a drain-time for the environment if desired
    phase.phase_done.set_drain_time(this, 50);
  endtask : run_phase
  
endclass : alu_subu_test

//////////Prueba Left

class alu_left_test extends alu_model_base_test;

  `uvm_component_utils(alu_left_test)
  
  //---------------------------------------
  // sequence instance 
  //--------------------------------------- 
  left_sequence seq;

  //---------------------------------------
  // constructor
  //---------------------------------------
  function new(string name = "alu_left_test",uvm_component parent=null);
    super.new(name,parent);
  endfunction : new

  //---------------------------------------
  // build_phase
  //---------------------------------------
  virtual function void build_phase(uvm_phase phase);
    super.build_phase(phase);

    // Create the sequence
    seq = left_sequence::type_id::create("seq");
  endfunction : build_phase
  
  //---------------------------------------
  // run_phase - starting the test
  //---------------------------------------
  task run_phase(uvm_phase phase);
    
    phase.raise_objection(this);
    seq.start(env.alu_agnt.sequencer);
    phase.drop_objection(this);
    
    //set a drain-time for the environment if desired
    phase.phase_done.set_drain_time(this, 50);
  endtask : run_phase
  
endclass : alu_left_test

//////////Prueba Right

class alu_ri_test extends alu_model_base_test;

  `uvm_component_utils(alu_ri_test)
  
  //---------------------------------------
  // sequence instance 
  //--------------------------------------- 
  ri_sequence seq;

  //---------------------------------------
  // constructor
  //---------------------------------------
  function new(string name = "alu_ri_test",uvm_component parent=null);
    super.new(name,parent);
  endfunction : new

  //---------------------------------------
  // build_phase
  //---------------------------------------
  virtual function void build_phase(uvm_phase phase);
    super.build_phase(phase);

    // Create the sequence
    seq = ri_sequence::type_id::create("seq");
  endfunction : build_phase
  
  //---------------------------------------
  // run_phase - starting the test
  //---------------------------------------
  task run_phase(uvm_phase phase);
    
    phase.raise_objection(this);
    seq.start(env.alu_agnt.sequencer);
    phase.drop_objection(this);
    
    //set a drain-time for the environment if desired
    phase.phase_done.set_drain_time(this, 50);
  endtask : run_phase
  
endclass : alu_ri_test

//////////Prueba Right A

class alu_ria_test extends alu_model_base_test;

  `uvm_component_utils(alu_ria_test)
  
  //---------------------------------------
  // sequence instance 
  //--------------------------------------- 
  ria_sequence seq;

  //---------------------------------------
  // constructor
  //---------------------------------------
  function new(string name = "alu_le_test",uvm_component parent=null);
    super.new(name,parent);
  endfunction : new

  //---------------------------------------
  // build_phase
  //---------------------------------------
  virtual function void build_phase(uvm_phase phase);
    super.build_phase(phase);

    // Create the sequence
    seq = ria_sequence::type_id::create("seq");
  endfunction : build_phase
  
  //---------------------------------------
  // run_phase - starting the test
  //---------------------------------------
  task run_phase(uvm_phase phase);
    
    phase.raise_objection(this);
    seq.start(env.alu_agnt.sequencer);
    phase.drop_objection(this);
    
    //set a drain-time for the environment if desired
    phase.phase_done.set_drain_time(this, 50);
  endtask : run_phase
  
endclass : alu_ria_test

//////////Prueba Or

class alu_or_test extends alu_model_base_test;

  `uvm_component_utils(alu_or_test)
  
  //---------------------------------------
  // sequence instance 
  //--------------------------------------- 
  or_sequence seq;

  //---------------------------------------
  // constructor
  //---------------------------------------
  function new(string name = "alu_or_test",uvm_component parent=null);
    super.new(name,parent);
  endfunction : new

  //---------------------------------------
  // build_phase
  //---------------------------------------
  virtual function void build_phase(uvm_phase phase);
    super.build_phase(phase);

    // Create the sequence
    seq = or_sequence::type_id::create("seq");
  endfunction : build_phase
  
  //---------------------------------------
  // run_phase - starting the test
  //---------------------------------------
  task run_phase(uvm_phase phase);
    
    phase.raise_objection(this);
    seq.start(env.alu_agnt.sequencer);
    phase.drop_objection(this);
    
    //set a drain-time for the environment if desired
    phase.phase_done.set_drain_time(this, 50);
  endtask : run_phase
  
endclass : alu_or_test

//////////Prueba XOR

class alu_xor_test extends alu_model_base_test;

  `uvm_component_utils(alu_xor_test)
  
  //---------------------------------------
  // sequence instance 
  //--------------------------------------- 
  xor_sequence seq;

  //---------------------------------------
  // constructor
  //---------------------------------------
  function new(string name = "alu_xor_test",uvm_component parent=null);
    super.new(name,parent);
  endfunction : new

  //---------------------------------------
  // build_phase
  //---------------------------------------
  virtual function void build_phase(uvm_phase phase);
    super.build_phase(phase);

    // Create the sequence
    seq = xor_sequence::type_id::create("seq");
  endfunction : build_phase
  
  //---------------------------------------
  // run_phase - starting the test
  //---------------------------------------
  task run_phase(uvm_phase phase);
    
    phase.raise_objection(this);
    seq.start(env.alu_agnt.sequencer);
    phase.drop_objection(this);
    
    //set a drain-time for the environment if desired
    phase.phase_done.set_drain_time(this, 50);
  endtask : run_phase
  
endclass : alu_xor_test

//////////Prueba And

class alu_and_test extends alu_model_base_test;

  `uvm_component_utils(alu_and_test)
  
  //---------------------------------------
  // sequence instance 
  //--------------------------------------- 
  and_sequence seq;

  //---------------------------------------
  // constructor
  //---------------------------------------
  function new(string name = "alu_and_test",uvm_component parent=null);
    super.new(name,parent);
  endfunction : new

  //---------------------------------------
  // build_phase
  //---------------------------------------
  virtual function void build_phase(uvm_phase phase);
    super.build_phase(phase);

    // Create the sequence
    seq = and_sequence::type_id::create("seq");
  endfunction : build_phase
  
  //---------------------------------------
  // run_phase - starting the test
  //---------------------------------------
  task run_phase(uvm_phase phase);
    
    phase.raise_objection(this);
    seq.start(env.alu_agnt.sequencer);
    phase.drop_objection(this);
    
    //set a drain-time for the environment if desired
    phase.phase_done.set_drain_time(this, 50);
  endtask : run_phase
  
  
endclass : alu_and_test
