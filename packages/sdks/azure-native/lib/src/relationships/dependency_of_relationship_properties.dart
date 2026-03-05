// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// dependencyOf relationship properties.
class DependencyOfRelationshipProperties {
  /// The relationship target resource id.
  final pulumi.Input<String> targetId;
  /// The relationship target tenant id.
  final pulumi.Input<String>? targetTenant;

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
      targetId: pulumi.Input.fromValue(map['targetId'] as String),
      targetTenant: (() { final guardedValue = map['targetTenant']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

