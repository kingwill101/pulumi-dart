// ignore_for_file: unused_element, unnecessary_cast


class BlockchainNodesEthereumDetailsAdditionalEndpoint {
  /// The assigned URL for the node's Beacon API endpoint.
  final String? beaconApiEndpoint;
  /// The assigned URL for the node's Beacon Prometheus metrics endpoint.
  final String? beaconPrometheusMetricsApiEndpoint;
  /// The assigned URL for the node's execution client's Prometheus metrics endpoint.
  final String? executionClientPrometheusMetricsApiEndpoint;

  /// Creates a new [BlockchainNodesEthereumDetailsAdditionalEndpoint].
  /// [beaconApiEndpoint] The assigned URL for the node's Beacon API endpoint.
  /// [beaconPrometheusMetricsApiEndpoint] The assigned URL for the node's Beacon Prometheus metrics endpoint.
  /// [executionClientPrometheusMetricsApiEndpoint] The assigned URL for the node's execution client's Prometheus metrics endpoint.
  BlockchainNodesEthereumDetailsAdditionalEndpoint({
    this.beaconApiEndpoint,
    this.beaconPrometheusMetricsApiEndpoint,
    this.executionClientPrometheusMetricsApiEndpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'beaconApiEndpoint': ?beaconApiEndpoint,
      'beaconPrometheusMetricsApiEndpoint': ?beaconPrometheusMetricsApiEndpoint,
      'executionClientPrometheusMetricsApiEndpoint': ?executionClientPrometheusMetricsApiEndpoint,
    };
  }

  factory BlockchainNodesEthereumDetailsAdditionalEndpoint.fromMap(Map<String, dynamic> map) {
    return BlockchainNodesEthereumDetailsAdditionalEndpoint(
      beaconApiEndpoint: map['beaconApiEndpoint'] == null ? null : map['beaconApiEndpoint'] as String,
      beaconPrometheusMetricsApiEndpoint: map['beaconPrometheusMetricsApiEndpoint'] == null ? null : map['beaconPrometheusMetricsApiEndpoint'] as String,
      executionClientPrometheusMetricsApiEndpoint: map['executionClientPrometheusMetricsApiEndpoint'] == null ? null : map['executionClientPrometheusMetricsApiEndpoint'] as String,
    );
  }
}

