// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Managed resource group configuration
class ManagedResourceGroupConfiguration {
  /// Managed resource group name
  final pulumi.Input<String?>? name;

  /// Creates a new [ManagedResourceGroupConfiguration].
  /// [name] Managed resource group name
  const ManagedResourceGroupConfiguration({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory ManagedResourceGroupConfiguration.fromMap(Map<String, dynamic> map) {
    return ManagedResourceGroupConfiguration(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
