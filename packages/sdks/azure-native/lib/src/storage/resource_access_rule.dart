// ignore_for_file: unused_element, unnecessary_cast


/// Resource Access Rule.
class ResourceAccessRule {
  /// Resource Id
  final String? resourceId;
  /// Tenant Id
  final String? tenantId;

  /// Creates a new [ResourceAccessRule].
  /// [resourceId] Resource Id
  /// [tenantId] Tenant Id
  ResourceAccessRule({
    this.resourceId,
    this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceId': ?resourceId,
      'tenantId': ?tenantId,
    };
  }

  factory ResourceAccessRule.fromMap(Map<String, dynamic> map) {
    return ResourceAccessRule(
      resourceId: map['resourceId'] == null ? null : map['resourceId'] as String,
      tenantId: map['tenantId'] == null ? null : map['tenantId'] as String,
    );
  }
}

