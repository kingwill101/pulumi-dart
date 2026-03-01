// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'subnet.dart';

/// {@template pulumi_vpcaccess_v1_connector_args_doc}
/// The set of arguments for Connector.
/// {@endtemplate}
/// {@macro pulumi_vpcaccess_v1_connector_args_doc}
class ConnectorArgs {
  /// Required. The ID to use for this connector.
  final pulumi.Input<String> connectorId;
  /// The range of internal addresses that follows RFC 4632 notation. Example: `10.132.0.0/28`.
  final pulumi.Input<String>? ipCidrRange;
  final pulumi.Input<String>? location;
  /// Machine type of VM Instance underlying connector. Default is e2-micro
  final pulumi.Input<String>? machineType;
  /// Maximum value of instances in autoscaling group underlying the connector.
  final pulumi.Input<int>? maxInstances;
  /// Maximum throughput of the connector in Mbps. Default is 300, max is 1000. If both max-throughput and max-instances are provided, max-instances takes precedence over max-throughput.
  final pulumi.Input<int>? maxThroughput;
  /// Minimum value of instances in autoscaling group underlying the connector.
  final pulumi.Input<int>? minInstances;
  /// Minimum throughput of the connector in Mbps. Default and min is 200. If both min-throughput and min-instances are provided, min-instances takes precedence over min-throughput.
  final pulumi.Input<int>? minThroughput;
  /// The resource name in the format `projects/*/locations/*/connectors/*`.
  final pulumi.Input<String>? name;
  /// Name of a VPC network.
  final pulumi.Input<String>? network;
  final pulumi.Input<String>? project;
  /// The subnet in which to house the VPC Access Connector.
  final pulumi.Input<Subnet>? subnet;

  /// Creates a new [ConnectorArgs].
  /// [connectorId] Required. The ID to use for this connector.
  /// [ipCidrRange] The range of internal addresses that follows RFC 4632 notation. Example: `10.132.0.0/28`.
  /// [location] Optional.
  /// [machineType] Machine type of VM Instance underlying connector. Default is e2-micro
  /// [maxInstances] Maximum value of instances in autoscaling group underlying the connector.
  /// [maxThroughput] Maximum throughput of the connector in Mbps. Default is 300, max is 1000. If both max-throughput and max-instances are provided, max-instances takes precedence over max-throughput.
  /// [minInstances] Minimum value of instances in autoscaling group underlying the connector.
  /// [minThroughput] Minimum throughput of the connector in Mbps. Default and min is 200. If both min-throughput and min-instances are provided, min-instances takes precedence over min-throughput.
  /// [name] The resource name in the format `projects/*/locations/*/connectors/*`.
  /// [network] Name of a VPC network.
  /// [project] Optional.
  /// [subnet] The subnet in which to house the VPC Access Connector.
  ConnectorArgs({
    required pulumi.Output<String> connectorId,
    pulumi.Output<String>? ipCidrRange,
    pulumi.Output<String>? location,
    pulumi.Output<String>? machineType,
    pulumi.Output<int>? maxInstances,
    pulumi.Output<int>? maxThroughput,
    pulumi.Output<int>? minInstances,
    pulumi.Output<int>? minThroughput,
    pulumi.Output<String>? name,
    pulumi.Output<String>? network,
    pulumi.Output<String>? project,
    pulumi.Output<Subnet>? subnet,
  }) :
      connectorId = pulumi.Input.asInput<String>(connectorId),
      ipCidrRange = pulumi.Input.asOptionalInput<String>(ipCidrRange),
      location = pulumi.Input.asOptionalInput<String>(location),
      machineType = pulumi.Input.asOptionalInput<String>(machineType),
      maxInstances = pulumi.Input.asOptionalInput<int>(maxInstances),
      maxThroughput = pulumi.Input.asOptionalInput<int>(maxThroughput),
      minInstances = pulumi.Input.asOptionalInput<int>(minInstances),
      minThroughput = pulumi.Input.asOptionalInput<int>(minThroughput),
      name = pulumi.Input.asOptionalInput<String>(name),
      network = pulumi.Input.asOptionalInput<String>(network),
      project = pulumi.Input.asOptionalInput<String>(project),
      subnet = pulumi.Input.asOptionalInput<Subnet>(subnet);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectorId': connectorId,
      'ipCidrRange': ?ipCidrRange,
      'location': ?location,
      'machineType': ?machineType,
      'maxInstances': ?maxInstances,
      'maxThroughput': ?maxThroughput,
      'minInstances': ?minInstances,
      'minThroughput': ?minThroughput,
      'name': ?name,
      'network': ?network,
      'project': ?project,
      'subnet': ?pulumi.Input.mapOptionalInputValue<Subnet, Map<String, dynamic>>(subnet, (value) => value.toMap()),
    };
  }

  factory ConnectorArgs.fromMap(Map<String, dynamic> map) {
    return ConnectorArgs(
      connectorId: pulumi.Output.create<String>(map['connectorId'] as String),
      ipCidrRange: map['ipCidrRange'] == null ? null : pulumi.Output.create<String>(map['ipCidrRange'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      machineType: map['machineType'] == null ? null : pulumi.Output.create<String>(map['machineType'] as String),
      maxInstances: map['maxInstances'] == null ? null : pulumi.Output.create<int>(map['maxInstances'] as int),
      maxThroughput: map['maxThroughput'] == null ? null : pulumi.Output.create<int>(map['maxThroughput'] as int),
      minInstances: map['minInstances'] == null ? null : pulumi.Output.create<int>(map['minInstances'] as int),
      minThroughput: map['minThroughput'] == null ? null : pulumi.Output.create<int>(map['minThroughput'] as int),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      network: map['network'] == null ? null : pulumi.Output.create<String>(map['network'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      subnet: map['subnet'] == null ? null : pulumi.Output.create<Subnet>(Subnet.fromMap((map['subnet'] as Map).cast<String, dynamic>())),
    );
  }
}

