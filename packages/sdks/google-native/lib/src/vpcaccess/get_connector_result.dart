// ignore_for_file: unused_element, unnecessary_cast

import 'subnet_response.dart';

/// Result data returned by getConnector.
class GetConnectorResult {
  /// List of projects using the connector.
  final List<String>? connectedProjects;
  /// The range of internal addresses that follows RFC 4632 notation. Example: `10.132.0.0/28`.
  final String? ipCidrRange;
  /// Machine type of VM Instance underlying connector. Default is e2-micro
  final String? machineType;
  /// Maximum value of instances in autoscaling group underlying the connector.
  final int? maxInstances;
  /// Maximum throughput of the connector in Mbps. Default is 300, max is 1000. If both max-throughput and max-instances are provided, max-instances takes precedence over max-throughput.
  final int? maxThroughput;
  /// Minimum value of instances in autoscaling group underlying the connector.
  final int? minInstances;
  /// Minimum throughput of the connector in Mbps. Default and min is 200. If both min-throughput and min-instances are provided, min-instances takes precedence over min-throughput.
  final int? minThroughput;
  /// The resource name in the format `projects/*/locations/*/connectors/*`.
  final String? name;
  /// Name of a VPC network.
  final String? network;
  /// State of the VPC access connector.
  final String? state;
  /// The subnet in which to house the VPC Access Connector.
  final SubnetResponse? subnet;

  /// Creates a new [GetConnectorResult].
  /// [connectedProjects] List of projects using the connector.
  /// [ipCidrRange] The range of internal addresses that follows RFC 4632 notation. Example: `10.132.0.0/28`.
  /// [machineType] Machine type of VM Instance underlying connector. Default is e2-micro
  /// [maxInstances] Maximum value of instances in autoscaling group underlying the connector.
  /// [maxThroughput] Maximum throughput of the connector in Mbps. Default is 300, max is 1000. If both max-throughput and max-instances are provided, max-instances takes precedence over max-throughput.
  /// [minInstances] Minimum value of instances in autoscaling group underlying the connector.
  /// [minThroughput] Minimum throughput of the connector in Mbps. Default and min is 200. If both min-throughput and min-instances are provided, min-instances takes precedence over min-throughput.
  /// [name] The resource name in the format `projects/*/locations/*/connectors/*`.
  /// [network] Name of a VPC network.
  /// [state] State of the VPC access connector.
  /// [subnet] The subnet in which to house the VPC Access Connector.
  const GetConnectorResult({
    this.connectedProjects,
    this.ipCidrRange,
    this.machineType,
    this.maxInstances,
    this.maxThroughput,
    this.minInstances,
    this.minThroughput,
    this.name,
    this.network,
    this.state,
    this.subnet,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectedProjects': ?connectedProjects,
      'ipCidrRange': ?ipCidrRange,
      'machineType': ?machineType,
      'maxInstances': ?maxInstances,
      'maxThroughput': ?maxThroughput,
      'minInstances': ?minInstances,
      'minThroughput': ?minThroughput,
      'name': ?name,
      'network': ?network,
      'state': ?state,
      'subnet': ?subnet?.toMap(),
    };
  }

  factory GetConnectorResult.fromMap(Map<String, dynamic> map) {
    return GetConnectorResult(
      connectedProjects: (() { final guardedValue = map['connectedProjects']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      ipCidrRange: (() { final guardedValue = map['ipCidrRange']; if (guardedValue == null) return null; return guardedValue as String; })(),
      machineType: (() { final guardedValue = map['machineType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maxInstances: (() { final guardedValue = map['maxInstances']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      maxThroughput: (() { final guardedValue = map['maxThroughput']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      minInstances: (() { final guardedValue = map['minInstances']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      minThroughput: (() { final guardedValue = map['minThroughput']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      network: (() { final guardedValue = map['network']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      subnet: (() { final guardedValue = map['subnet']; if (guardedValue == null) return null; return SubnetResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}
