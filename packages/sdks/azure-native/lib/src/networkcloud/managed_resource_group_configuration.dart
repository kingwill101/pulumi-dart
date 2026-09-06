// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ManagedResourceGroupConfiguration {
  /// The location of the managed resource group. If not specified, the location of the parent resource is chosen.
  final pulumi.Input<String?>? location;
  /// The name for the managed resource group. If not specified, the unique name is automatically generated.
  final pulumi.Input<String?>? name;

  /// Creates a new [ManagedResourceGroupConfiguration].
  /// [location] The location of the managed resource group. If not specified, the location of the parent resource is chosen.
  /// [name] The name for the managed resource group. If not specified, the unique name is automatically generated.
  const ManagedResourceGroupConfiguration({
    this.location,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'name': ?name,
    };
  }

  factory ManagedResourceGroupConfiguration.fromMap(Map<String, dynamic> map) {
    return ManagedResourceGroupConfiguration(
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
