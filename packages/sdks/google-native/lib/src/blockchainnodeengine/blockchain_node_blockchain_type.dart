import 'package:pulumi/pulumi.dart' as pulumi;

/// Immutable. The blockchain type of the node.
enum BlockchainNodeBlockchainType implements pulumi.PulumiEnum<String> {
  blockchainTypeUnspecified("BLOCKCHAIN_TYPE_UNSPECIFIED"),
  ethereum("ETHEREUM");

  const BlockchainNodeBlockchainType(this.wireValue);
  @override
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
