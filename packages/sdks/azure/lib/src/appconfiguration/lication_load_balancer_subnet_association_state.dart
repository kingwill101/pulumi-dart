// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering LicationLoadBalancerSubnetAssociation resources.
class LicationLoadBalancerSubnetAssociationState {
  /// The ID of the Application Gateway for Containers. Changing this forces a new resource to be created.
  final pulumi.Input<String>? applicationLoadBalancerId;
  /// The name which should be used for this Application Gateway for Containers Association. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The ID of the subnet which the Application Gateway for Containers associated to.
  ///
  /// > **Note:** The subnet to be used must have a delegation for  `Microsoft.ServiceNetworking/trafficControllers` as shown in the example above.
  final pulumi.Input<String>? subnetId;
  /// A mapping of tags which should be assigned to the Application Gateway for Containers Association.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [LicationLoadBalancerSubnetAssociationState].
  /// [applicationLoadBalancerId] The ID of the Application Gateway for Containers. Changing this forces a new resource to be created.
  /// [name] The name which should be used for this Application Gateway for Containers Association. Changing this forces a new resource to be created.
  /// [subnetId] The ID of the subnet which the Application Gateway for Containers associated to.
  /// [tags] A mapping of tags which should be assigned to the Application Gateway for Containers Association.
  LicationLoadBalancerSubnetAssociationState({
    pulumi.Output<String>? applicationLoadBalancerId,
    pulumi.Output<String>? name,
    pulumi.Output<String>? subnetId,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      applicationLoadBalancerId = pulumi.Input.asOptionalInput<String>(applicationLoadBalancerId),
      name = pulumi.Input.asOptionalInput<String>(name),
      subnetId = pulumi.Input.asOptionalInput<String>(subnetId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationLoadBalancerId': ?applicationLoadBalancerId,
      'name': ?name,
      'subnetId': ?subnetId,
      'tags': ?tags,
    };
  }

  factory LicationLoadBalancerSubnetAssociationState.fromMap(Map<String, dynamic> map) {
    return LicationLoadBalancerSubnetAssociationState(
      applicationLoadBalancerId: map['applicationLoadBalancerId'] == null ? null : pulumi.Output.create<String>(map['applicationLoadBalancerId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      subnetId: map['subnetId'] == null ? null : pulumi.Output.create<String>(map['subnetId'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

