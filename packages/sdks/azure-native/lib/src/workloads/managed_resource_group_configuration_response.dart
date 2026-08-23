// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Managed resource group configuration
class ManagedResourceGroupConfigurationResponse {
  /// Managed resource group name
  final pulumi.Input<String>? name;

  /// Creates a new [ManagedResourceGroupConfigurationResponse].
  /// [name] Managed resource group name
  const ManagedResourceGroupConfigurationResponse({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory ManagedResourceGroupConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return ManagedResourceGroupConfigurationResponse(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
