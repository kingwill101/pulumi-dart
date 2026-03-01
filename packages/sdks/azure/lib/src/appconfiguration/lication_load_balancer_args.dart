// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appconfiguration_lication_load_balancer_lication_load_balancer_args_doc}
/// The set of arguments for LicationLoadBalancer.
/// {@endtemplate}
/// {@macro pulumi_appconfiguration_lication_load_balancer_lication_load_balancer_args_doc}
class LicationLoadBalancerArgs {
  /// The Azure Region where the Application Gateway for Containers (ALB) should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The name which should be used for this Application Gateway for Containers (ALB). Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of Resource Group where the Application Gateway for Containers (ALB) should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A mapping of tags which should be assigned to the Application Gateway for Containers (ALB).
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [LicationLoadBalancerArgs].
  /// [location] The Azure Region where the Application Gateway for Containers (ALB) should exist. Changing this forces a new resource to be created.
  /// [name] The name which should be used for this Application Gateway for Containers (ALB). Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of Resource Group where the Application Gateway for Containers (ALB) should exist. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags which should be assigned to the Application Gateway for Containers (ALB).
  LicationLoadBalancerArgs({
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory LicationLoadBalancerArgs.fromMap(Map<String, dynamic> map) {
    return LicationLoadBalancerArgs(
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

