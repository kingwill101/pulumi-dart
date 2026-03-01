// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering LicationLoadBalancer resources.
class LicationLoadBalancerState {
  /// The Azure Region where the Application Gateway for Containers (ALB) should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The name which should be used for this Application Gateway for Containers (ALB). Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The primary configuration endpoints of the Application Gateway for Containers (ALB).
  final pulumi.Input<String>? primaryConfigurationEndpoint;
  /// The name of Resource Group where the Application Gateway for Containers (ALB) should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// A mapping of tags which should be assigned to the Application Gateway for Containers (ALB).
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [LicationLoadBalancerState].
  /// [location] The Azure Region where the Application Gateway for Containers (ALB) should exist. Changing this forces a new resource to be created.
  /// [name] The name which should be used for this Application Gateway for Containers (ALB). Changing this forces a new resource to be created.
  /// [primaryConfigurationEndpoint] The primary configuration endpoints of the Application Gateway for Containers (ALB).
  /// [resourceGroupName] The name of Resource Group where the Application Gateway for Containers (ALB) should exist. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags which should be assigned to the Application Gateway for Containers (ALB).
  LicationLoadBalancerState({
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? primaryConfigurationEndpoint,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      primaryConfigurationEndpoint = pulumi.Input.asOptionalInput<String>(primaryConfigurationEndpoint),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'name': ?name,
      'primaryConfigurationEndpoint': ?primaryConfigurationEndpoint,
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
    };
  }

  factory LicationLoadBalancerState.fromMap(Map<String, dynamic> map) {
    return LicationLoadBalancerState(
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      primaryConfigurationEndpoint: map['primaryConfigurationEndpoint'] == null ? null : pulumi.Output.create<String>(map['primaryConfigurationEndpoint'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

