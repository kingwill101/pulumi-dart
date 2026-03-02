// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Availability Set model
class VirtualMachinePropertiesResponseAvailabilitySets {
  /// Gets the ARM Id of the microsoft.scvmm/availabilitySets resource.
  final pulumi.Input<String>? id;
  /// Gets or sets the name of the availability set.
  final pulumi.Input<String>? name;

  /// Creates a new [VirtualMachinePropertiesResponseAvailabilitySets].
  /// [id] Gets the ARM Id of the microsoft.scvmm/availabilitySets resource.
  /// [name] Gets or sets the name of the availability set.
  VirtualMachinePropertiesResponseAvailabilitySets({
    this.id,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'name': ?name,
    };
  }

  factory VirtualMachinePropertiesResponseAvailabilitySets.fromMap(Map<String, dynamic> map) {
    return VirtualMachinePropertiesResponseAvailabilitySets(
      id: map['id'] == null ? null : (map['id'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
    );
  }
}

