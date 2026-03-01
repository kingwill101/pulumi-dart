// ignore_for_file: unused_element, unnecessary_cast


/// dependencyOf relationship properties.
class DependencyOfRelationshipProperties {
  /// The relationship target resource id.
  final String targetId;
  /// The relationship target tenant id.
  final String? targetTenant;

  /// Creates a new [DependencyOfRelationshipProperties].
  /// [targetId] The relationship target resource id.
  /// [targetTenant] The relationship target tenant id.
  DependencyOfRelationshipProperties({
    required this.targetId,
    this.targetTenant,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'targetId': targetId,
      'targetTenant': ?targetTenant,
    };
  }

  factory DependencyOfRelationshipProperties.fromMap(Map<String, dynamic> map) {
    return DependencyOfRelationshipProperties(
      targetId: map['targetId'] as String,
      targetTenant: map['targetTenant'] == null ? null : map['targetTenant'] as String,
    );
  }
}

