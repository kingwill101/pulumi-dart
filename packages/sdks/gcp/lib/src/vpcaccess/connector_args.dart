// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connector_subnet.dart';

/// {@template pulumi_vpcaccess_connector_connector_args_doc}
/// The set of arguments for Connector.
/// {@endtemplate}
/// {@macro pulumi_vpcaccess_connector_connector_args_doc}
class ConnectorArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// The range of internal addresses that follows RFC 4632 notation. Example: `10.132.0.0/28`.
  final pulumi.Input<String?>? ipCidrRange;
  /// Machine type of VM Instance underlying connector. Default is e2-micro
  final pulumi.Input<String?>? machineType;
  /// Maximum value of instances in autoscaling group underlying the connector. Value must be between 3 and 10, inclusive. Must be
  /// higher than the value specified by min_instances. Required alongside `minInstances` if not using `minThroughput`/`maxThroughput`.
  final pulumi.Input<int?>? maxInstances;
  /// Maximum throughput of the connector in Mbps, must be greater than `minThroughput`. Default is 300. Refers to the expected throughput
  /// when using an e2-micro machine type. Value must be a multiple of 100 from 300 through 1000. Must be higher than the value specified by
  /// min_throughput. Only one of `maxThroughput` and `maxInstances` can be specified. The use of maxThroughput is discouraged in favor of max_instances.
  final pulumi.Input<int?>? maxThroughput;
  /// Minimum value of instances in autoscaling group underlying the connector. Value must be between 2 and 9, inclusive. Must be
  /// lower than the value specified by max_instances. Required alongside `maxInstances` if not using `minThroughput`/`maxThroughput`.
  final pulumi.Input<int?>? minInstances;
  /// Minimum throughput of the connector in Mbps. Default and min is 200. Refers to the expected throughput when using an e2-micro machine type.
  /// Value must be a multiple of 100 from 200 through 900. Must be lower than the value specified by max_throughput.
  /// Only one of `minThroughput` and `minInstances` can be specified. The use of minThroughput is discouraged in favor of min_instances.
  final pulumi.Input<int?>? minThroughput;
  /// The name of the resource (Max 25 characters).
  final pulumi.Input<String?>? name;
  /// Name or selfLink of the VPC network. Required if `ipCidrRange` is set.
  final pulumi.Input<String?>? network;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// Region where the VPC Access connector resides. If it is not provided, the provider region is used.
  final pulumi.Input<String?>? region;
  /// The subnet in which to house the connector
  /// Structure is documented below.
  final pulumi.Input<ConnectorSubnet?>? subnet;

  /// Creates a new [ConnectorArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [ipCidrRange] The range of internal addresses that follows RFC 4632 notation. Example: `10.132.0.0/28`.
  /// [machineType] Machine type of VM Instance underlying connector. Default is e2-micro
  /// [maxInstances] Maximum value of instances in autoscaling group underlying the connector. Value must be between 3 and 10, inclusive. Must be
  /// [maxThroughput] Maximum throughput of the connector in Mbps, must be greater than `minThroughput`. Default is 300. Refers to the expected throughput
  /// [minInstances] Minimum value of instances in autoscaling group underlying the connector. Value must be between 2 and 9, inclusive. Must be
  /// [minThroughput] Minimum throughput of the connector in Mbps. Default and min is 200. Refers to the expected throughput when using an e2-micro machine type.
  /// [name] The name of the resource (Max 25 characters).
  /// [network] Name or selfLink of the VPC network. Required if `ipCidrRange` is set.
  /// [project] The ID of the project in which the resource belongs.
  /// [region] Region where the VPC Access connector resides. If it is not provided, the provider region is used.
  /// [subnet] The subnet in which to house the connector
  const ConnectorArgs({
    this.deletionPolicy,
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
    this.subnet,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
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
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipCidrRange: (() { final guardedValue = map['ipCidrRange']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      machineType: (() { final guardedValue = map['machineType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxInstances: (() { final guardedValue = map['maxInstances']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      maxThroughput: (() { final guardedValue = map['maxThroughput']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      minInstances: (() { final guardedValue = map['minInstances']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      minThroughput: (() { final guardedValue = map['minThroughput']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      network: (() { final guardedValue = map['network']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnet: (() { final guardedValue = map['subnet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectorSubnet.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
