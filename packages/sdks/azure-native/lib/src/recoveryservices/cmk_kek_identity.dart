// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The details of the identity used for CMK
class CmkKekIdentity {
  /// Indicate that system assigned identity should be used. Mutually exclusive with 'userAssignedIdentity' field
  final pulumi.Input<bool>? useSystemAssignedIdentity;

  /// The user assigned identity to be used to grant permissions in case the type of identity used is UserAssigned
  final pulumi.Input<String>? userAssignedIdentity;

  /// Creates a new [CmkKekIdentity].
  /// [useSystemAssignedIdentity] Indicate that system assigned identity should be used. Mutually exclusive with 'userAssignedIdentity' field
  /// [userAssignedIdentity] The user assigned identity to be used to grant permissions in case the type of identity used is UserAssigned
  CmkKekIdentity({this.useSystemAssignedIdentity, this.userAssignedIdentity});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'useSystemAssignedIdentity': ?useSystemAssignedIdentity,
      'userAssignedIdentity': ?userAssignedIdentity,
    };
  }

  factory CmkKekIdentity.fromMap(Map<String, dynamic> map) {
    return CmkKekIdentity(
      useSystemAssignedIdentity: (() {
        final guardedValue = map['useSystemAssignedIdentity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      userAssignedIdentity: (() {
        final guardedValue = map['userAssignedIdentity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
