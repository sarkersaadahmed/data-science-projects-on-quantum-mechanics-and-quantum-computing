# Import necessary libraries
from qiskit import QuantumCircuit, Aer, transpile, assemble

# Create a quantum circuit with 2 qubits and 2 classical bits
qc = QuantumCircuit(2, 2)

# Apply a Hadamard gate to the first qubit
qc.h(0)

# Apply a CNOT gate with the first qubit as control and the second qubit as target
qc.cx(0, 1)

# Measure the qubits and map the result to the classical bits
qc.measure([0, 1], [0, 1])

# Print the quantum circuit
print("Quantum Circuit:")
print(qc.draw())

# Simulate the quantum circuit on a classical computer
simulator = Aer.get_backend('qasm_simulator')
compiled_circuit = transpile(qc, simulator)
qobj = assemble(compiled_circuit)
result = simulator.run(qobj).result()

# Print the result of the simulation
print("\nSimulation Result:")
print(result.get_counts())
