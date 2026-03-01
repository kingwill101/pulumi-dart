// ignore_for_file: unused_element, unnecessary_cast


class AADProperties {
  final String? audience;
  final String? authority;
  final String? servicePrincipalClientId;
  final String? servicePrincipalObjectId;
  final String? tenantId;

  /// Creates a new [AADProperties].
  /// [audience] Optional.
  /// [authority] Optional.
  /// [servicePrincipalClientId] Optional.
  /// [servicePrincipalObjectId] Optional.
  /// [tenantId] Optional.
  AADProperties({
    this.audience,
    this.authority,
    this.servicePrincipalClientId,
    this.servicePrincipalObjectId,
    this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audience': ?audience,
      'authority': ?authority,
      'servicePrincipalClientId': ?servicePrincipalClientId,
      'servicePrincipalObjectId': ?servicePrincipalObjectId,
      'tenantId': ?tenantId,
    };
  }

  factory AADProperties.fromMap(Map<String, dynamic> map) {
    return AADProperties(
      audience: map['audience'] == null ? null : map['audience'] as String,
      authority: map['authority'] == null ? null : map['authority'] as String,
      servicePrincipalClientId: map['servicePrincipalClientId'] == null ? null : map['servicePrincipalClientId'] as String,
      servicePrincipalObjectId: map['servicePrincipalObjectId'] == null ? null : map['servicePrincipalObjectId'] as String,
      tenantId: map['tenantId'] == null ? null : map['tenantId'] as String,
    );
  }
}

