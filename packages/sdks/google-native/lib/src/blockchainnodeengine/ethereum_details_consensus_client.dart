/// Immutable. The consensus client.
enum EthereumDetailsConsensusClient {
  consensusClientUnspecified("CONSENSUS_CLIENT_UNSPECIFIED"),
  lighthouse("LIGHTHOUSE"),
  erigonEmbeddedConsensusLayer("ERIGON_EMBEDDED_CONSENSUS_LAYER");

  const EthereumDetailsConsensusClient(this.wireValue);
  final String wireValue;

  static EthereumDetailsConsensusClient fromValue(String value) {
    for (final item in EthereumDetailsConsensusClient.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EthereumDetailsConsensusClient value: $value');
  }
}
