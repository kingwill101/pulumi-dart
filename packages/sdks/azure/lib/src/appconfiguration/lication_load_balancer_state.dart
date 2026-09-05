// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering LicationLoadBalancer resources.
class LicationLoadBalancerState {
  /// The Azure Region where the Application Gateway for Containers (ALB) should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? location;
  /// The name which should be used for this Application Gateway for Containers (ALB). Changing this forces a new resource to be created.
  final pulumi.Input<String?>? name;
  /// The primary configuration endpoints of the Application Gateway for Containers (ALB).
  final pulumi.Input<String?>? primaryConfigurationEndpoint;
  /// The name of Resource Group where the Application Gateway for Containers (ALB) should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? resourceGroupName;
  /// A mapping of tags which should be assigned to the Application Gateway for Containers (ALB).
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [LicationLoadBalancerState].
  /// [location] The Azure Region where the Application Gateway for Containers (ALB) should exist. Changing this forces a new resource to be created.
  /// [name] The name which should be used for this Application Gateway for Containers (ALB). Changing this forces a new resource to be created.
  /// [primaryConfigurationEndpoint] The primary configuration endpoints of the Application Gateway for Containers (ALB).
  /// [resourceGroupName] The name of Resource Group where the Application Gateway for Containers (ALB) should exist. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags which should be assigned to the Application Gateway for Containers (ALB).
  const LicationLoadBalancerState({
    this.location,
    this.name,
    this.primaryConfigurationEndpoint,
    this.resourceGroupName,
    this.tags,
  });

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
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      primaryConfigurationEndpoint: (() { final guardedValue = map['primaryConfigurationEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
