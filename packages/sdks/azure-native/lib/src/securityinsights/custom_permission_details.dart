// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The Custom permissions required for the connector.
class CustomPermissionDetails {
  /// Gets or sets the custom permissions description.
  final pulumi.Input<String> description;
  /// Gets or sets the custom permissions name.
  final pulumi.Input<String> name;

  /// Creates a new [CustomPermissionDetails].
  /// [description] Gets or sets the custom permissions description.
  /// [name] Gets or sets the custom permissions name.
  CustomPermissionDetails({
    required this.description,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'name': name,
    };
  }

  factory CustomPermissionDetails.fromMap(Map<String, dynamic> map) {
    return CustomPermissionDetails(
      description: pulumi.Input.fromValue(map['description'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

