// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ManagedResourceGroupConfigurationResponse {
  /// The location of the managed resource group. If not specified, the location of the parent resource is chosen.
  final pulumi.Input<String>? location;
  /// The name for the managed resource group. If not specified, the unique name is automatically generated.
  final pulumi.Input<String>? name;

  /// Creates a new [ManagedResourceGroupConfigurationResponse].
  /// [location] The location of the managed resource group. If not specified, the location of the parent resource is chosen.
  /// [name] The name for the managed resource group. If not specified, the unique name is automatically generated.
  const ManagedResourceGroupConfigurationResponse({
    this.location,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'name': ?name,
    };
  }

  factory ManagedResourceGroupConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return ManagedResourceGroupConfigurationResponse(
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

