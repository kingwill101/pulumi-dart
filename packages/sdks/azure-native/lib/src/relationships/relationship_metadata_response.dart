// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Provides information about the relationship properties.
class RelationshipMetadataResponse {
  /// The type of the relationship source resource.
  final pulumi.Input<String> sourceType;
  /// The type of the relationship target resource.
  final pulumi.Input<String> targetType;

  /// Creates a new [RelationshipMetadataResponse].
  /// [sourceType] The type of the relationship source resource.
  /// [targetType] The type of the relationship target resource.
  const RelationshipMetadataResponse({
    required this.sourceType,
    required this.targetType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sourceType': sourceType,
      'targetType': targetType,
    };
  }

  factory RelationshipMetadataResponse.fromMap(Map<String, dynamic> map) {
    return RelationshipMetadataResponse(
      sourceType: pulumi.Input.fromValue(map['sourceType'] as String),
      targetType: pulumi.Input.fromValue(map['targetType'] as String),
    );
  }
}

