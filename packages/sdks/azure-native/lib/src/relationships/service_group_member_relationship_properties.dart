// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ServiceGroupMember relationship properties.
class ServiceGroupMemberRelationshipProperties {
  /// The relationship target resource id.
  final pulumi.Input<String> targetId;
  /// The relationship target tenant id.
  final pulumi.Input<String>? targetTenant;

  /// Creates a new [ServiceGroupMemberRelationshipProperties].
  /// [targetId] The relationship target resource id.
  /// [targetTenant] The relationship target tenant id.
  ServiceGroupMemberRelationshipProperties({
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
      targetId: (map['targetId'] as String).input(),
      targetTenant: map['targetTenant'] == null ? null : (map['targetTenant'] as String).input(),
    );
  }
}

