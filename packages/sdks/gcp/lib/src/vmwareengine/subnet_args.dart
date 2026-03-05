// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vmwareengine_subnet_subnet_args_doc}
/// The set of arguments for Subnet.
/// {@endtemplate}
/// {@macro pulumi_vmwareengine_subnet_subnet_args_doc}
class SubnetArgs {
  /// The IP address range of the subnet in CIDR format.
  final pulumi.Input<String> ipCidrRange;
  /// The ID of the subnet. For userDefined subnets, this name should be in the format of "service-n",
  /// where n ranges from 1 to 5.
  final pulumi.Input<String>? name;
  /// The resource name of the private cloud to create a new subnet in.
  /// Resource names are schemeless URIs that follow the conventions in https://cloud.google.com/apis/design/resource_names.
  /// For example: projects/my-project/locations/us-west1-a/privateClouds/my-cloud
  final pulumi.Input<String> parent;

  /// Creates a new [SubnetArgs].
  /// [ipCidrRange] The IP address range of the subnet in CIDR format.
  /// [name] The ID of the subnet. For userDefined subnets, this name should be in the format of "service-n",
  /// [parent] The resource name of the private cloud to create a new subnet in.
  SubnetArgs({
    required this.ipCidrRange,
    this.name,
    required this.parent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipCidrRange': ipCidrRange,
      'name': ?name,
      'parent': parent,
    };
  }

  factory SubnetArgs.fromMap(Map<String, dynamic> map) {
    return SubnetArgs(
      ipCidrRange: pulumi.Input.fromValue(map['ipCidrRange'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parent: pulumi.Input.fromValue(map['parent'] as String),
    );
  }
}

