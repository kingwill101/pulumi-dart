// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connector_subnet.dart';

/// {@template pulumi_vpcaccess_connector_connector_args_doc}
/// The set of arguments for Connector.
/// {@endtemplate}
/// {@macro pulumi_vpcaccess_connector_connector_args_doc}
class ConnectorArgs {
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
  /// The subnet in which to house the connector
  /// Structure is documented below.
  final pulumi.Input<ConnectorSubnet>? subnet;

  /// Creates a new [ConnectorArgs].
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
  /// [subnet] The subnet in which to house the connector
  ConnectorArgs({
    pulumi.Output<String>? ipCidrRange,
    pulumi.Output<String>? machineType,
    pulumi.Output<int>? maxInstances,
    pulumi.Output<int>? maxThroughput,
    pulumi.Output<int>? minInstances,
    pulumi.Output<int>? minThroughput,
    pulumi.Output<String>? name,
    pulumi.Output<String>? network,
    pulumi.Output<String>? project,
    pulumi.Output<String>? region,
    pulumi.Output<ConnectorSubnet>? subnet,
  }) :
      ipCidrRange = pulumi.Input.asOptionalInput<String>(ipCidrRange),
      machineType = pulumi.Input.asOptionalInput<String>(machineType),
      maxInstances = pulumi.Input.asOptionalInput<int>(maxInstances),
      maxThroughput = pulumi.Input.asOptionalInput<int>(maxThroughput),
      minInstances = pulumi.Input.asOptionalInput<int>(minInstances),
      minThroughput = pulumi.Input.asOptionalInput<int>(minThroughput),
      name = pulumi.Input.asOptionalInput<String>(name),
      network = pulumi.Input.asOptionalInput<String>(network),
      project = pulumi.Input.asOptionalInput<String>(project),
      region = pulumi.Input.asOptionalInput<String>(region),
      subnet = pulumi.Input.asOptionalInput<ConnectorSubnet>(subnet);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
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
      'subnet': ?pulumi.Input.mapOptionalInputValue<ConnectorSubnet, Map<String, dynamic>>(subnet, (value) => value.toMap()),
    };
  }

  factory ConnectorArgs.fromMap(Map<String, dynamic> map) {
    return ConnectorArgs(
      ipCidrRange: map['ipCidrRange'] == null ? null : pulumi.Output.create<String>(map['ipCidrRange'] as String),
      machineType: map['machineType'] == null ? null : pulumi.Output.create<String>(map['machineType'] as String),
      maxInstances: map['maxInstances'] == null ? null : pulumi.Output.create<int>(map['maxInstances'] as int),
      maxThroughput: map['maxThroughput'] == null ? null : pulumi.Output.create<int>(map['maxThroughput'] as int),
      minInstances: map['minInstances'] == null ? null : pulumi.Output.create<int>(map['minInstances'] as int),
      minThroughput: map['minThroughput'] == null ? null : pulumi.Output.create<int>(map['minThroughput'] as int),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      network: map['network'] == null ? null : pulumi.Output.create<String>(map['network'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      subnet: map['subnet'] == null ? null : pulumi.Output.create<ConnectorSubnet>(ConnectorSubnet.fromMap((map['subnet'] as Map).cast<String, dynamic>())),
    );
  }
}

