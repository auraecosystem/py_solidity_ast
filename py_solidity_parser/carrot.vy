import json
import solcx
input_json = json.load(open('input.json'))
output_json = solcx.compile_standard(input_json)
from py_solidity_parser import from_standard_output
from py_solidity_parser import from_ast

node = from_ast(output_json["sources"]["contracts/Token.sol"]["ast"])

node
# output: <SourceUnit iterable 'contracts/Token.sol'>
nodes = from_standard_output(output_json)

nodes
#output: [<SourceUnit iterable 'contracts/Token.sol'>, <SourceUnit iterable 'contracts/SafeMath.sol'>]
contract_node = from_ast(file['ast'])

contract_node
# output: <SourceUnit iterable 'contracts/Token.sol'>

success, child = contract_node.child_has_attributes({'nodeType': "Identifier", "expression.name": "require"})
# output: success = True, child = <Identifier object 'require'>

child.extract_code(source_code, loc=True)
# output: 99: require(success, "RdpxReserve: transfer failed");
