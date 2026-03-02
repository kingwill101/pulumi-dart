// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connector_subnet.dart';

/// Input properties used for looking up and filtering Connector resources.
class ConnectorState {
  /// List of projects using the connector.
  final pulumi.Input<List<String>>? connectedProjects;
  /// The range of internal addresses that follows RFC 4632 notation. Example: `10.132.0.0/28`.
  final pulumi.Input<String>? ipCidrRange;
  /// Machine type of VM Instance underlying connector. Default is e2-micro
  final pulumi.Input<String>? machineType;
  /// Maximum value of instances in autoscaling group underlying the connector. Value must be between 3 and 10, inclusive. Must be
  /// higher than the value specified by min_instances. Required alongside `min_instances` if not using `min_throughput`/`max_throughput`.
  final pulumi.Input<int>? maxInstances;
  /// Maximum throughput of the connector in Mbps, must be greater than `min_throughput`. Default is 300. Refers to the expected throughput
  /// when using an e2-micro machine type. Value must be a multiple of 100 from 300 through 1000. Must be higher than the value specified by
  /// min_throughput. Only one of `max_throughput` and `max_instances` can be specified. The use of max_throughput is discouraged in favor of max_instances.
  final pulumi.Input<int>? maxThroughput;
  /// Minimum value of instances in autoscaling group underlying the connector. Value must be between 2 and 9, inclusive. Must be
  /// lower than the value specified by max_instances. Required alongside `max_instances` if not using `min_throughput`/`max_throughput`.
  final pulumi.Input<int>? minInstances;
  /// Minimum throughput of the connector in Mbps. Default and min is 200. Refers to the expected throughput when using an e2-micro machine type.
  /// Value must be a multiple of 100 from 200 through 900. Must be lower than the value specified by max_throughput.
  /// Only one of `min_throughput` and `min_instances` can be specified. The use of min_throughput is discouraged in favor of min_instances.
  final pulumi.Input<int>? minThroughput;
  /// The name of the resource (Max 25 characters).
  final pulumi.Input<String>? name;
  /// Name or self_link of the VPC network. Required if `ip_cidr_range` is set.
  final pulumi.Input<String>? network;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Region where the VPC Access connector resides. If it is not provided, the provider region is used.
  final pulumi.Input<String>? region;
  /// The fully qualified name of this VPC connector
  final pulumi.Input<String>? selfLink;
  /// State of the VPC access connector.
  final pulumi.Input<String>? state;
  /// The subnet in which to house the connector
  /// Structure is documented below.
  final pulumi.Input<ConnectorSubnet>? subnet;

  /// Creates a new [ConnectorState].
  /// [connectedProjects] List of projects using the connector.
  /// [ipCidrRange] The range of internal addresses that follows RFC 4632 notation. Example: `10.132.0.0/28`.
  /// [machineType] Machine type of VM Instance underlying connector. Default is e2-micro
  /// [maxInstances] Maximum value of instances in autoscaling group underlying the connector. Value must be between 3 and 10, inclusive. Must be
  /// [maxThroughput] Maximum throughput of the connector in Mbps, must be greater than `min_throughput`. Default is 300. Refers to the expected throughput
  /// [minInstances] Minimum value of instances in autoscaling group underlying the connector. Value must be between 2 and 9, inclusive. Must be
  /// [minThroughput] Minimum throughput of the connector in Mbps. Default and min is 200. Refers to the expected throughput when using an e2-micro machine type.
  /// [name] The name of the resource (Max 25 characters).
  /// [network] Name or self_link of the VPC network. Required if `ip_cidr_range` is set.
  /// [project] The ID of the project in which the resource belongs.
  /// [region] Region where the VPC Access connector resides. If it is not provided, the provider region is used.
  /// [selfLink] The fully qualified name of this VPC connector
  /// [state] State of the VPC access connector.
  /// [subnet] The subnet in which to house the connector
  ConnectorState({
    this.connectedProjects,
    this.ipCidrRange,
    this.machineType,
    this.maxInstances,
    this.maxThroughput,
    this.minInstances,
    this.minThroughput,
    this.name,
    this.network,
    this.project,
    this.region,
    this.selfLink,
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
      'project': ?project,
      'region': ?region,
      'selfLink': ?selfLink,
      'state': ?state,
      'subnet': ?pulumi.Input.mapOptionalInputValue<ConnectorSubnet, Map<String, dynamic>>(subnet, (value) => value.toMap()),
    };
  }

  factory ConnectorState.fromMap(Map<String, dynamic> map) {
    return ConnectorState(
      connectedProjects: map['connectedProjects'] == null ? null : ((map['connectedProjects']! as List).cast<String>()).input(),
      ipCidrRange: map['ipCidrRange'] == null ? null : (map['ipCidrRange']! as String).input(),
      machineType: map['machineType'] == null ? null : (map['machineType']! as String).input(),
      maxInstances: map['maxInstances'] == null ? null : (map['maxInstances']! as int).input(),
      maxThroughput: map['maxThroughput'] == null ? null : (map['maxThroughput']! as int).input(),
      minInstances: map['minInstances'] == null ? null : (map['minInstances']! as int).input(),
      minThroughput: map['minThroughput'] == null ? null : (map['minThroughput']! as int).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      network: map['network'] == null ? null : (map['network']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      region: map['region'] == null ? null : (map['region']! as String).input(),
      selfLink: map['selfLink'] == null ? null : (map['selfLink']! as String).input(),
      state: map['state'] == null ? null : (map['state']! as String).input(),
      subnet: map['subnet'] == null ? null : (ConnectorSubnet.fromMap((map['subnet']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

