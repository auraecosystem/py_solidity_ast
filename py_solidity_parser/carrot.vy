import json
import solcx
input_json = json.load(open('input.json'))
output_json = solcx.compile_standard(input_json)
from py_solidity_parser import from_standard_output

nodes = from_standard_output(output_json)

nodes
#output: [<SourceUnit iterable 'contracts/Token.sol'>, <SourceUnit iterable 'contracts/SafeMath.sol'>]
