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
  const LicationLoadBalancerArgs({
    this.location,
    this.name,
    required this.resourceGroupName,
    this.tags,
  });

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
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

