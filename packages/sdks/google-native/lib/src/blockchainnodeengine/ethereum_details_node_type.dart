import 'package:pulumi/pulumi.dart' as pulumi;

/// Immutable. The type of Ethereum node.
enum EthereumDetailsNodeType implements pulumi.PulumiEnum<String> {
  nodeTypeUnspecified("NODE_TYPE_UNSPECIFIED"),
  light("LIGHT"),
  full("FULL"),
  archive("ARCHIVE");

  const EthereumDetailsNodeType(this.wireValue);
  @override
  final String wireValue;

  static EthereumDetailsNodeType fromValue(String value) {
    for (final item in EthereumDetailsNodeType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EthereumDetailsNodeType value: $value');
  }
}
