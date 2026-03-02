// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The details for the custom naming convention override for a specific resource type.
class CustomNamingConventionResponse {
  /// The custom naming formula for the resource type.
  final pulumi.Input<String> formula;
  /// The type of the resource.
  final pulumi.Input<String> resourceType;

  /// Creates a new [CustomNamingConventionResponse].
  /// [formula] The custom naming formula for the resource type.
  /// [resourceType] The type of the resource.
  CustomNamingConventionResponse({
    required this.formula,
    required this.resourceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'formula': formula,
      'resourceType': resourceType,
    };
  }

  factory CustomNamingConventionResponse.fromMap(Map<String, dynamic> map) {
    return CustomNamingConventionResponse(
      formula: (map['formula'] as String).input(),
      resourceType: (map['resourceType'] as String).input(),
    );
  }
}

