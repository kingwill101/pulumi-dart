// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Provides information about the origin of a relationship.
class RelationshipOriginInformationResponse {
  /// The name of the discovery engine that created the relationship.
  final pulumi.Input<String> discoveryEngine;
  /// Identifies the origin type of the relationship.
  final pulumi.Input<String> relationshipOriginType;

  /// Creates a new [RelationshipOriginInformationResponse].
  /// [discoveryEngine] The name of the discovery engine that created the relationship.
  /// [relationshipOriginType] Identifies the origin type of the relationship.
  RelationshipOriginInformationResponse({
    required this.discoveryEngine,
    required this.relationshipOriginType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'discoveryEngine': discoveryEngine,
      'relationshipOriginType': relationshipOriginType,
    };
  }

  factory RelationshipOriginInformationResponse.fromMap(Map<String, dynamic> map) {
    return RelationshipOriginInformationResponse(
      discoveryEngine: pulumi.Input.fromValue(map['discoveryEngine'] as String),
      relationshipOriginType: pulumi.Input.fromValue(map['relationshipOriginType'] as String),
    );
  }
}

