import 'package:pulumi/pulumi.dart' as pulumi;

/// Immutable. The execution client
enum EthereumDetailsExecutionClient implements pulumi.PulumiEnum<String> {
  executionClientUnspecified("EXECUTION_CLIENT_UNSPECIFIED"),
  geth("GETH"),
  erigon("ERIGON");

  const EthereumDetailsExecutionClient(this.wireValue);
  @override
  final String wireValue;

  static EthereumDetailsExecutionClient fromValue(String value) {
    for (final item in EthereumDetailsExecutionClient.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EthereumDetailsExecutionClient value: $value');
  }
}
