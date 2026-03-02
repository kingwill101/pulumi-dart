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
  KekIdentityPropertiesResponse({
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
      useSystemAssignedIdentity: map['useSystemAssignedIdentity'] == null ? null : (map['useSystemAssignedIdentity']!).input(),
      userAssignedIdentity: map['userAssignedIdentity'] == null ? null : (map['userAssignedIdentity']! as String).input(),
    );
  }
}

