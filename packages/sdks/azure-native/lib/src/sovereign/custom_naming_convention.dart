// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The details for the custom naming convention override for a specific resource type.
class CustomNamingConvention {
  /// The custom naming formula for the resource type.
  final pulumi.Input<String> formula;
  /// The type of the resource.
  final pulumi.Input<String> resourceType;

  /// Creates a new [CustomNamingConvention].
  /// [formula] The custom naming formula for the resource type.
  /// [resourceType] The type of the resource.
  const CustomNamingConvention({
    required this.formula,
    required this.resourceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'formula': formula,
      'resourceType': resourceType,
    };
  }

  factory CustomNamingConvention.fromMap(Map<String, dynamic> map) {
    return CustomNamingConvention(
      formula: pulumi.Input.fromValue(map['formula'] as String),
      resourceType: pulumi.Input.fromValue(map['resourceType'] as String),
    );
  }
}

