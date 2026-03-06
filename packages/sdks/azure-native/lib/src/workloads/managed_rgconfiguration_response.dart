// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Managed resource group configuration
class ManagedRGConfigurationResponse {
  /// Managed resource group name
  final pulumi.Input<String>? name;

  /// Creates a new [ManagedRGConfigurationResponse].
  /// [name] Managed resource group name
  const ManagedRGConfigurationResponse({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory ManagedRGConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return ManagedRGConfigurationResponse(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

