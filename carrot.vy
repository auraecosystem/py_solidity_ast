"""
@title A simulator for Bug Bunny, the most famous Rabbit
@license MIT
@author Warned Bros
@notice You can use this contract for only the most basic simulation
@dev
    Simply chewing a carrot does not count, carrots must pass
    the throat to be considered eaten
"""

@external
@payable
def doesEat(food: String[30], qty: uint256) -> bool:
    """
    @notice Determine if Bugs will accept `qty` of `food` to eat
    @dev Compares the entire string and does not rely on a hash
    @param food The name of a food to evaluate (in English)
    @param qty The number of food items to evaluate
    @return True if Bugs will eat it, False otherwise
    """

source_node
# output: <SourceUnit iterable 'contracts/math/SafeMath.sol'>

source_node.nodes
# output: [<PragmaDirective object>, <ContractDefinition iterable 'SafeMath'>]

source_node[1]
# output: <ContractDefinition iterable 'SafeMath'>

source_node['SafeMath']
# output: <ContractDefinition iterable 'SafeMath'>

source_node['SafeMath'].fields
['baseContracts', 'children', 'contractDependencies', 'contractKind', 'contract_id', 'dependencies', 'depth', 'documentation', 'fullyImplemented', 'id', 'is_child_of', 'is_parent_of', 'keys', 'libraries', 'linearizedBaseContracts', 'name', 'nodeType', 'nodes', 'offset', 'parent', 'parents', 'scope', 'src']

source_node['SafeMath'].nodes
[<FunctionDefinition iterable 'add'>, <FunctionDefinition iterable 'sub'>, <FunctionDefinition iterable 'mul'>, # output: <FunctionDefinition iterable 'div'>, <FunctionDefinition iterable 'mod'>]

source_node['SafeMath']['mul']
# output: # output: <FunctionDefinition iterable 'mul'>

source_node['SafeMath']['mul']
# output: [<IfStatement object>, <VariableDeclarationStatement object>, <FunctionCall object>, <Return object>]
contract_node = from_ast(file['ast'])

contract_node
# output: <SourceUnit iterable 'contracts/Token.sol'>

success, child = contract_node.child_has_attributes({'nodeType': "Identifier", "expression.name": "require"})
# output: success = True, child = <Identifier object 'require'>

child.extract_code(source_code, loc=True)
# output: 99: require(success, "RdpxReserve: transfer failed");
node.child_has_attributes({'nodeType': "Identifier", "expression.name": "require"})

# output: True, <Identifier object 'require'>
