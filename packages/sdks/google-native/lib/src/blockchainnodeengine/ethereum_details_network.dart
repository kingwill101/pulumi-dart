/// Immutable. The Ethereum environment being accessed.
enum EthereumDetailsNetwork {
  networkUnspecified("NETWORK_UNSPECIFIED"),
  mainnet("MAINNET"),
  testnetGoerliPrater("TESTNET_GOERLI_PRATER"),
  testnetSepolia("TESTNET_SEPOLIA"),
  testnetHolesky("TESTNET_HOLESKY");

  const EthereumDetailsNetwork(this.wireValue);
  final String wireValue;

  static EthereumDetailsNetwork fromValue(String value) {
    for (final item in EthereumDetailsNetwork.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EthereumDetailsNetwork value: $value');
  }
}

