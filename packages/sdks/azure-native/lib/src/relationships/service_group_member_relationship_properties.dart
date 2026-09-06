// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ServiceGroupMember relationship properties.
class ServiceGroupMemberRelationshipProperties {
  /// The relationship target resource id.
  final pulumi.Input<String> targetId;
  /// The relationship target tenant id.
  final pulumi.Input<String?>? targetTenant;

  /// Creates a new [ServiceGroupMemberRelationshipProperties].
  /// [targetId] The relationship target resource id.
  /// [targetTenant] The relationship target tenant id.
  const ServiceGroupMemberRelationshipProperties({
    required this.targetId,
    this.targetTenant,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'targetId': targetId,
      'targetTenant': ?targetTenant,
    };
  }

  factory ServiceGroupMemberRelationshipProperties.fromMap(Map<String, dynamic> map) {
    return ServiceGroupMemberRelationshipProperties(
      targetId: pulumi.Input.fromValue(map['targetId'] as String),
      targetTenant: (() { final guardedValue = map['targetTenant']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
