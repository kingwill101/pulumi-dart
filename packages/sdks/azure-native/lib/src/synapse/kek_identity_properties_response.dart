// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Key encryption key properties
class KekIdentityPropertiesResponse {
  /// Boolean specifying whether to use system assigned identity or not
  final pulumi.Input<dynamic>? useSystemAssignedIdentity;
  /// User assigned identity resource Id
  final pulumi.Input<String>? userAssignedIdentity;

  /// Creates a new [KekIdentityPropertiesResponse].
  /// [useSystemAssignedIdentity] Boolean specifying whether to use system assigned identity or not
  /// [userAssignedIdentity] User assigned identity resource Id
  const KekIdentityPropertiesResponse({
    this.useSystemAssignedIdentity,
    this.userAssignedIdentity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'useSystemAssignedIdentity': ?useSystemAssignedIdentity,
      'userAssignedIdentity': ?userAssignedIdentity,
    };
  }

  factory KekIdentityPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return KekIdentityPropertiesResponse(
      useSystemAssignedIdentity: (() { final guardedValue = map['useSystemAssignedIdentity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      userAssignedIdentity: (() { final guardedValue = map['userAssignedIdentity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
