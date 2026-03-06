// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BlockchainNodesEthereumDetailsAdditionalEndpoint {
  /// The assigned URL for the node's Beacon API endpoint.
  final pulumi.Input<String>? beaconApiEndpoint;
  /// The assigned URL for the node's Beacon Prometheus metrics endpoint.
  final pulumi.Input<String>? beaconPrometheusMetricsApiEndpoint;
  /// The assigned URL for the node's execution client's Prometheus metrics endpoint.
  final pulumi.Input<String>? executionClientPrometheusMetricsApiEndpoint;

  /// Creates a new [BlockchainNodesEthereumDetailsAdditionalEndpoint].
  /// [beaconApiEndpoint] The assigned URL for the node's Beacon API endpoint.
  /// [beaconPrometheusMetricsApiEndpoint] The assigned URL for the node's Beacon Prometheus metrics endpoint.
  /// [executionClientPrometheusMetricsApiEndpoint] The assigned URL for the node's execution client's Prometheus metrics endpoint.
  const BlockchainNodesEthereumDetailsAdditionalEndpoint({
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
      beaconApiEndpoint: (() { final guardedValue = map['beaconApiEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      beaconPrometheusMetricsApiEndpoint: (() { final guardedValue = map['beaconPrometheusMetricsApiEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      executionClientPrometheusMetricsApiEndpoint: (() { final guardedValue = map['executionClientPrometheusMetricsApiEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

