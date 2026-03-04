/// Immutable. The blockchain type of the node.
enum BlockchainNodeBlockchainType {
  blockchainTypeUnspecified("BLOCKCHAIN_TYPE_UNSPECIFIED"),
  ethereum("ETHEREUM");

  const BlockchainNodeBlockchainType(this.wireValue);
  final String wireValue;

  static BlockchainNodeBlockchainType fromValue(String value) {
    for (final item in BlockchainNodeBlockchainType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BlockchainNodeBlockchainType value: $value');
  }
}
