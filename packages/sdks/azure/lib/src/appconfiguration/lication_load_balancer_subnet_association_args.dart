// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appconfiguration_lication_load_balancer_subnet_association_lication_load_balancer_subnet_association_args_doc}
/// The set of arguments for LicationLoadBalancerSubnetAssociation.
/// {@endtemplate}
/// {@macro pulumi_appconfiguration_lication_load_balancer_subnet_association_lication_load_balancer_subnet_association_args_doc}
class LicationLoadBalancerSubnetAssociationArgs {
  /// The ID of the Application Gateway for Containers. Changing this forces a new resource to be created.
  final pulumi.Input<String> applicationLoadBalancerId;
  /// The name which should be used for this Application Gateway for Containers Association. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The ID of the subnet which the Application Gateway for Containers associated to.
  ///
  /// &gt; **Note:** The subnet to be used must have a delegation for  `Microsoft.ServiceNetworking/trafficControllers` as shown in the example above.
  final pulumi.Input<String> subnetId;
  /// A mapping of tags which should be assigned to the Application Gateway for Containers Association.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [LicationLoadBalancerSubnetAssociationArgs].
  /// [applicationLoadBalancerId] The ID of the Application Gateway for Containers. Changing this forces a new resource to be created.
  /// [name] The name which should be used for this Application Gateway for Containers Association. Changing this forces a new resource to be created.
  /// [subnetId] The ID of the subnet which the Application Gateway for Containers associated to.
  /// [tags] A mapping of tags which should be assigned to the Application Gateway for Containers Association.
  const LicationLoadBalancerSubnetAssociationArgs({
    required this.applicationLoadBalancerId,
    this.name,
    required this.subnetId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationLoadBalancerId': applicationLoadBalancerId,
      'name': ?name,
      'subnetId': subnetId,
      'tags': ?tags,
    };
  }

  factory LicationLoadBalancerSubnetAssociationArgs.fromMap(Map<String, dynamic> map) {
    return LicationLoadBalancerSubnetAssociationArgs(
      applicationLoadBalancerId: pulumi.Input.fromValue(map['applicationLoadBalancerId'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnetId: pulumi.Input.fromValue(map['subnetId'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

