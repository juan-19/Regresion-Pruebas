//-------------------------------------------------------------------------
//						alu_sequence's - www.verificationguide.com
//-------------------------------------------------------------------------
int i=200000;
//=========================================================================
// alu_sequence - random stimulus 
//=========================================================================
class alu_sequence extends uvm_sequence#(alu_seq_item);
  
  `uvm_object_utils(alu_sequence)
  
  //--------------------------------------- 
  //Constructor
  //---------------------------------------
  function new(string name = "alu_sequence");
    super.new(name);
  endfunction
  
  `uvm_declare_p_sequencer(alu_sequencer)
  
  //---------------------------------------
  // create, randomize and send the item to driver
  //---------------------------------------
  virtual task body();
    repeat(i) begin
    req = alu_seq_item::type_id::create("req");
    wait_for_grant();
    req.randomize();
    send_request(req);
    wait_for_item_done();
   end
  endtask
endclass
//=========================================================================
//=========================================================================
// zero_sequence - "EQU" type
//=========================================================================
class equ_sequence extends uvm_sequence#(alu_seq_item);
  
  `uvm_object_utils(equ_sequence)
   
  //--------------------------------------- 
  //Constructor
  //---------------------------------------
  function new(string name = "equ_sequence");
    super.new(name);
  endfunction
  
  virtual task body();
    repeat(i) begin
    req = alu_seq_item::type_id::create("req");
    wait_for_grant();
      req.randomize();
    req.ALU_CTRL=4'b0000;
    send_request(req);
    wait_for_item_done();      
   end
    //`uvm_do_with(req,{req.ALU_CTRL==4'b0000;})
  endtask
endclass   //=========================================================================
//=========================================================================
// zero_sequence - "LESS" type
//=========================================================================
class le_sequence extends uvm_sequence#(alu_seq_item);
  
  `uvm_object_utils(le_sequence)
   
  //--------------------------------------- 
  //Constructor
  //---------------------------------------
  function new(string name = "le_sequence");
    super.new(name);
  endfunction
  
  virtual task body();
    repeat(i) begin
    req = alu_seq_item::type_id::create("req");
    wait_for_grant();
    req.randomize();
    req.ALU_CTRL=4'b0001;
    send_request(req);
    wait_for_item_done();        
   end
  endtask
endclass
//=========================================================================
//=========================================================================
// zero_sequence - "LESS UN" type
//=========================================================================
class leu_sequence extends uvm_sequence#(alu_seq_item);
  
  `uvm_object_utils(leu_sequence)
   
  //--------------------------------------- 
  //Constructor
  //---------------------------------------
  function new(string name = "leu_sequence");
    super.new(name);
  endfunction
  
  virtual task body();
    repeat(i) begin
    req = alu_seq_item::type_id::create("req");
    wait_for_grant();
    req.randomize();
    req.ALU_CTRL=4'b0010;
    send_request(req);
    wait_for_item_done();        
   end
  endtask
endclass
//=========================================================================
//=========================================================================
// zero_sequence - "GREATER" type
//=========================================================================
class gre_sequence extends uvm_sequence#(alu_seq_item);
  
  `uvm_object_utils(gre_sequence)
   
  //--------------------------------------- 
  //Constructor
  //---------------------------------------
  function new(string name = "gre_sequence");
    super.new(name);
  endfunction
  
  virtual task body();
    repeat(i) begin
    req = alu_seq_item::type_id::create("req");
    wait_for_grant();
    req.randomize();
    req.ALU_CTRL=4'b0011;
    send_request(req);
    wait_for_item_done();        
   end
  endtask
endclass
//=========================================================================
//=========================================================================
// zero_sequence - "GREATER UN" type
//=========================================================================
class greu_sequence extends uvm_sequence#(alu_seq_item);
  
  `uvm_object_utils(greu_sequence)
   
  //--------------------------------------- 
  //Constructor
  //---------------------------------------
  function new(string name = "greu_sequence");
    super.new(name);
  endfunction
  
  virtual task body();
    repeat(i) begin
    req = alu_seq_item::type_id::create("req");
    wait_for_grant();
    req.randomize();
    req.ALU_CTRL=4'b0100;
    send_request(req);
    wait_for_item_done();        
   end
  endtask
endclass
//=========================================================================
//=========================================================================
// OP_sequence - "ADD" type
//=========================================================================
class add_sequence extends uvm_sequence#(alu_seq_item);
  
  `uvm_object_utils(add_sequence)
   
  //--------------------------------------- 
  //Constructor
  //---------------------------------------
  function new(string name = "add_sequence");
    super.new(name);
  endfunction
  
  virtual task body();
    repeat(i) begin
    req = alu_seq_item::type_id::create("req");
    wait_for_grant();
    req.randomize();
    req.ALU_CTRL=4'b0101;
    send_request(req);
    wait_for_item_done();        
   end
  endtask
endclass
//=========================================================================
//=========================================================================
// OP_sequence - "ADD UN" type
//=========================================================================
class addu_sequence extends uvm_sequence#(alu_seq_item);
  
  `uvm_object_utils(addu_sequence)
   
  //--------------------------------------- 
  //Constructor
  //---------------------------------------
  function new(string name = "addu_sequence");
    super.new(name);
  endfunction
  
  virtual task body();
    repeat(i) begin
    req = alu_seq_item::type_id::create("req");
    wait_for_grant();
    req.randomize();
    req.ALU_CTRL=4'b0110;
    send_request(req);
    wait_for_item_done();        
   end
  endtask
endclass
//=========================================================================
//=========================================================================
// OP_sequence - "SUB UN" type
//=========================================================================
class subu_sequence extends uvm_sequence#(alu_seq_item);
  
  `uvm_object_utils(subu_sequence)
   
  //--------------------------------------- 
  //Constructor
  //---------------------------------------
  function new(string name = "subu_sequence");
    super.new(name);
  endfunction
  
  virtual task body();
    repeat(i) begin
    req = alu_seq_item::type_id::create("req");
    wait_for_grant();
    req.randomize();
    req.ALU_CTRL=4'b0111;
    send_request(req);
    wait_for_item_done();       
   end
  endtask
endclass
//=========================================================================
//=========================================================================
// SHIFT_sequence - "LEFT" type
//=========================================================================
class left_sequence extends uvm_sequence#(alu_seq_item);
  
  `uvm_object_utils(left_sequence)
   
  //--------------------------------------- 
  //Constructor
  //---------------------------------------
  function new(string name = "left_sequence");
    super.new(name);
  endfunction
  
  virtual task body();
    repeat(i) begin
    req = alu_seq_item::type_id::create("req");
    wait_for_grant();
    req.randomize();
    req.ALU_CTRL=4'b1000;
    send_request(req);
    wait_for_item_done();        
   end
  endtask
endclass
//=========================================================================
//=========================================================================
// SHIFT_sequence - "RIGHT" type
//=========================================================================
class ri_sequence extends uvm_sequence#(alu_seq_item);
  
  `uvm_object_utils(ri_sequence)
   
  //--------------------------------------- 
  //Constructor
  //---------------------------------------
  function new(string name = "ri_sequence");
    super.new(name);
  endfunction
  
  virtual task body();
    repeat(i) begin
    req = alu_seq_item::type_id::create("req");
    wait_for_grant();
    req.randomize();
    req.ALU_CTRL=4'b1001;
    send_request(req);
    wait_for_item_done();        
   end
  endtask
endclass
//=========================================================================
//=========================================================================
// SHIFT_sequence - "RIGHT ARITMETIC" type
//=========================================================================
class ria_sequence extends uvm_sequence#(alu_seq_item);
  
  `uvm_object_utils(ria_sequence)
   
  //--------------------------------------- 
  //Constructor
  //---------------------------------------
  function new(string name = "ria_sequence");
    super.new(name);
  endfunction
  
  virtual task body();
    repeat(i) begin
    req = alu_seq_item::type_id::create("req");
    wait_for_grant();
    req.randomize();
    req.ALU_CTRL=4'b1010;
    send_request(req);
    wait_for_item_done();        
   end
  endtask
endclass
//=========================================================================
//=========================================================================
// LOGIC_sequence - "OR" type
//=========================================================================
class or_sequence extends uvm_sequence#(alu_seq_item);
  
  `uvm_object_utils(or_sequence)
   
  //--------------------------------------- 
  //Constructor
  //---------------------------------------
  function new(string name = "or_sequence");
    super.new(name);
  endfunction
  
  virtual task body();
    repeat(i) begin
    req = alu_seq_item::type_id::create("req");
    wait_for_grant();
    req.randomize();
    req.ALU_CTRL=4'b1011;
    send_request(req);
    wait_for_item_done();        
   end
  endtask
endclass
//=========================================================================
//=========================================================================
// LOGIC_sequence - "XOR" type
//=========================================================================
class xor_sequence extends uvm_sequence#(alu_seq_item);
  
  `uvm_object_utils(xor_sequence)
   
  //--------------------------------------- 
  //Constructor
  //---------------------------------------
  function new(string name = "xor_sequence");
    super.new(name);
  endfunction
  
  virtual task body();
    repeat(i) begin
    req = alu_seq_item::type_id::create("req");
    wait_for_grant();
    req.randomize();
    req.ALU_CTRL=4'b1100;
    send_request(req);
    wait_for_item_done();        
   end
  endtask
endclass
//=========================================================================
//=========================================================================
// LOGIC_sequence - "AND" type
//=========================================================================
class and_sequence extends uvm_sequence#(alu_seq_item);
  
  `uvm_object_utils(and_sequence)
   
  //--------------------------------------- 
  //Constructor
  //---------------------------------------
  function new(string name = "and_sequence");
    super.new(name);
  endfunction
  
  virtual task body();
    repeat(i) begin
    req = alu_seq_item::type_id::create("req");
    wait_for_grant();
    req.randomize();
    req.ALU_CTRL=4'b1101;
    send_request(req);
    wait_for_item_done();        
   end
  endtask
endclass
//=========================================================================