// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AADProperties {
  final pulumi.Input<String?>? audience;
  final pulumi.Input<String?>? authority;
  final pulumi.Input<String?>? servicePrincipalClientId;
  final pulumi.Input<String?>? servicePrincipalObjectId;
  final pulumi.Input<String?>? tenantId;

  /// Creates a new [AADProperties].
  /// [audience] Optional.
  /// [authority] Optional.
  /// [servicePrincipalClientId] Optional.
  /// [servicePrincipalObjectId] Optional.
  /// [tenantId] Optional.
  const AADProperties({
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
      audience: (() { final guardedValue = map['audience']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      authority: (() { final guardedValue = map['authority']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      servicePrincipalClientId: (() { final guardedValue = map['servicePrincipalClientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      servicePrincipalObjectId: (() { final guardedValue = map['servicePrincipalObjectId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
