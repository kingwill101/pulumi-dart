// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Fabric provider specific settings.
class AzureFabricCreationInput {
  /// Gets the class type.
  /// Expected value is 'Azure'.
  final pulumi.Input<String> instanceType;
  /// The Location.
  final pulumi.Input<String>? location;

  /// Creates a new [AzureFabricCreationInput].
  /// [instanceType] Gets the class type.
  /// [location] The Location.
  AzureFabricCreationInput({
    required this.instanceType,
    this.location,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceType': instanceType,
      'location': ?location,
    };
  }

  factory AzureFabricCreationInput.fromMap(Map<String, dynamic> map) {
    return AzureFabricCreationInput(
      instanceType: (map['instanceType'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
    );
  }
}

