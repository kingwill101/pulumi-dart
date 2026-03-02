// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Resource Access Rule.
class ResourceAccessRuleResponse {
  /// Resource Id
  final pulumi.Input<String>? resourceId;
  /// Tenant Id
  final pulumi.Input<String>? tenantId;

  /// Creates a new [ResourceAccessRuleResponse].
  /// [resourceId] Resource Id
  /// [tenantId] Tenant Id
  ResourceAccessRuleResponse({
    this.resourceId,
    this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceId': ?resourceId,
      'tenantId': ?tenantId,
    };
  }

  factory ResourceAccessRuleResponse.fromMap(Map<String, dynamic> map) {
    return ResourceAccessRuleResponse(
      resourceId: map['resourceId'] == null ? null : (map['resourceId'] as String).input(),
      tenantId: map['tenantId'] == null ? null : (map['tenantId'] as String).input(),
    );
  }
}

