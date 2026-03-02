// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AADProperties {
  final pulumi.Input<String>? audience;
  final pulumi.Input<String>? authority;
  final pulumi.Input<String>? servicePrincipalClientId;
  final pulumi.Input<String>? servicePrincipalObjectId;
  final pulumi.Input<String>? tenantId;

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
      audience: map['audience'] == null ? null : (map['audience']! as String).input(),
      authority: map['authority'] == null ? null : (map['authority']! as String).input(),
      servicePrincipalClientId: map['servicePrincipalClientId'] == null ? null : (map['servicePrincipalClientId']! as String).input(),
      servicePrincipalObjectId: map['servicePrincipalObjectId'] == null ? null : (map['servicePrincipalObjectId']! as String).input(),
      tenantId: map['tenantId'] == null ? null : (map['tenantId']! as String).input(),
    );
  }
}

