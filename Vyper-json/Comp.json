{
    // Required: Source code language. Must be set to "Vyper".
    "language": "Vyper",
    // Required
    // Source codes given here will be compiled.
    "sources": {
        "contracts/foo.vy": {
            // Optional: keccak256 hash of the source file
            "keccak256": "0x234...",
            // Required: literal contents of the source file
            "content": "@external\ndef foo() -> bool:\n    return True"
        }
    },
    // Optional
    // Sources given here are made available for import by the contracts
    // that are compiled. If the suffix is ".vy", the compiler will expect
    // Vyper syntax. If the suffix is "abi" the compiler will expect an
    // ABI object.
    "interfaces": {
        "contracts/bar.vy": {
            "content": ""
        },
        "contracts/baz.json": {
            "abi": []
        }
    },
    // Optional
    // Storage layout overrides for the contracts that are compiled
    "storage_layout_overrides": {
        "contracts/foo.vy": {
            "a": {"type": "uint256", "slot": 1, "n_slots": 1},
            "b": {"type": "uint256", "slot": 0, "n_slots": 1},
        }
    },
    // Required
    "settings": {
        "evmVersion": "prague",  // EVM version to compile for. Can be london, paris, shanghai, cancun or prague (default).
        // optional, optimization mode
        // defaults to "gas". can be one of "gas", "codesize", "none",
        // false  and true (the last two are for backwards compatibility).
        "optimize": "gas",
        // optional, whether or not the bytecode should include Vyper's signature
        // defaults to true
        "bytecodeMetadata": true,
        // optional, whether to use the experimental venom pipeline
        // defaults to false
        "experimentalCodegen": false,
        // the search paths to use for resolving imports
        "search_paths": [],
        // The following is used to select desired outputs based on file names.
        // File names are given as keys, a star as a file name matches all files.
        // Outputs can also follow the Solidity format where second level keys
        // denoting contract names - all 2nd level outputs are applied to the file.
        //
        // To select all possible compiler outputs: "outputSelection: { '*': ["*"] }"
        // Note that this might slow down the compilation process needlessly.
        //
        // The available output types are as follows:
        //
        //    abi - The contract ABI
        //    ast - Abstract syntax tree
        //    interface - Derived interface of the contract, in proper Vyper syntax
        //    ir - intermediate representation of the code
        //    userdoc - Natspec user documentation
        //    devdoc - Natspec developer documentation
        //    evm.bytecode.object - Bytecode object
        //    evm.bytecode.opcodes - Opcodes list
        //    evm.bytecode.sourceMap - Source mapping (useful for debugging)
        //    evm.deployedBytecode.object - Deployed bytecode object
        //    evm.deployedBytecode.opcodes - Deployed opcodes list
        //    evm.deployedBytecode.sourceMap - Deployed source mapping (useful for debugging)
        //    evm.methodIdentifiers - The list of function hashes
        //    layout - Storage layout of the contract
        //
        // Using `evm`, `evm.bytecode`, etc. will select every target part of that output.
        // Additionally, `*` can be used as a wildcard to request everything.
        // Note that the sourceMapFull.pc_ast_map is the recommended source map to use;
        // the other types are included for legacy and compatibility reasons.
        //
        "outputSelection": {
            "*": ["evm.bytecode", "abi"],  // Enable the abi and bytecode outputs for every single contract
            "contracts/foo.vy": ["ast"]  // Enable the ast output for contracts/foo.vy
        }
    }
}
