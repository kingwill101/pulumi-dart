// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Managed resource group configuration
class ManagedRGConfiguration {
  /// Managed resource group name
  final pulumi.Input<String>? name;

  /// Creates a new [ManagedRGConfiguration].
  /// [name] Managed resource group name
  ManagedRGConfiguration({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory ManagedRGConfiguration.fromMap(Map<String, dynamic> map) {
    return ManagedRGConfiguration(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

