import json
import solcx
input_json = json.load(open('input.json'))
output_json = solcx.compile_standard(input_json)
