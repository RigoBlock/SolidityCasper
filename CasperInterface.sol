//! Casper Interface /* && Casper Interface contract */.
//! By Gabriele Rigo (RigoBlock, Rigo Investment Sagl), 2017.
//! Released under the Apache Licence 2.

pragma solidity ^0.4.15;

//this is the Casper Interface

interface Casper {
    
    //EVENTS

    
    //NON-CONSTANT METHODS
    
    function initiate(uint _epoch_length, uint _withdrawal_delay, address _owner, address _sighasher, address _purity_checker, uint8 _base_interest_factor, uint8 _base_penalty_factor);
    function initiate_epoch(uint epoch);
    function deposit(address validation_addr, address withdrawal_addr) payable;   //would be nice to have: returns (bool success) {}
    function logout(bytes logout_msg);
    function withdraw(uint validator_index);  //would be nice to have: returns (bool success) {}
    function proc_reward(uint validator_index, uint16 reward);
    function prepare(bytes prepare_msg);
    function commit(bytes commit_msg);
    function double_prepare_slash(bytes prepare1, bytes prepare2);
    function prepare_commit_inconsistency_slash(bytes prepare_msg, bytes commit_msg);
    
    
    //CONSTANT METHODS

    //function balance_of(address validator) constant returns (uint) {}   //would be nice to have balances by address in addition of balances by validator_index

    function get_deposit_size(uint validator_index) constant returns (uint);
    function get_total_curdyn_deposits() constant returns (uint);
    function get_total_prevdyn_deposits() constant returns (uint);
    function get_recommended_ancestry_hash() constant returns (bytes);
    function get_recommended_source_epoch() constant returns (uint);
    function get_recommended_source_ancestry_hash() constant returns (bytes);
    function get_main_hash_prepared_frac() constant returns (uint8);
    function get_main_hash_committed_frac() constant returns (uint8);
    
}

/*

//the below is the Casper Interface contract
//this is not necessary if one uses the interface
//it helps people who are used to contracts to read

contract CasperFace {
    
    //EVENTS

    
    //NON-CONSTANT METHODS
    
    function initiate(uint _epoch_length, uint _withdrawal_delay, address _owner, address _sighasher, address _purity_checker, uint8 _base_interest_factor, uint8 _base_penalty_factor) {}
    function initiate_epoch(uint epoch) {}
    function deposit(address validation_addr, address withdrawal_addr) payable {}   //would be nice to have: returns (bool success) {}
    function logout(bytes logout_msg) {}
    function withdraw(uint validator_index) {}  //would be nice to have: returns (bool success) {}
    function proc_reward(uint validator_index, uint16 reward) {}
    function prepare(bytes prepare_msg) {}
    function commit(bytes commit_msg) {}
    function double_prepare_slash(bytes prepare1, bytes prepare2) {}
    function prepare_commit_inconsistency_slash(bytes prepare_msg, bytes commit_msg) {}
    
    
    //CONSTANT METHODS

    //function balance_of(address _who) constant returns (uint) {}   //would be nice to have balances by address in addition of balances by validator_index

    function get_deposit_size(uint validator_index) constant returns (uint) {}
    function get_total_curdyn_deposits() constant returns (uint) {}
    function get_total_prevdyn_deposits() constant returns (uint) {}
    function get_recommended_ancestry_hash() constant returns (bytes) {}
    function get_recommended_source_epoch() constant returns (uint) {}
    function get_recommended_source_ancestry_hash() constant returns (bytes) {}
    function get_main_hash_prepared_frac() constant returns (uint8) {}
    function get_main_hash_committed_frac() constant returns (uint8) {}
    
}
*/
