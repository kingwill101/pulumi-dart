// ignore_for_file: unused_element, unnecessary_cast


/// Provides information about the relationship properties.
class RelationshipMetadataResponse {
  /// The type of the relationship source resource.
  final String sourceType;
  /// The type of the relationship target resource.
  final String targetType;

  /// Creates a new [RelationshipMetadataResponse].
  /// [sourceType] The type of the relationship source resource.
  /// [targetType] The type of the relationship target resource.
  RelationshipMetadataResponse({
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
      sourceType: map['sourceType'] as String,
      targetType: map['targetType'] as String,
    );
  }
}

