// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ResourceAccessRoleResponse {
  /// The actions.
  final pulumi.Input<List<String>?>? actions;
  /// The allowed group claims.
  final pulumi.Input<List<String>?>? allowedGroupClaims;

  /// Creates a new [ResourceAccessRoleResponse].
  /// [actions] The actions.
  /// [allowedGroupClaims] The allowed group claims.
  const ResourceAccessRoleResponse({
    this.actions,
    this.allowedGroupClaims,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': ?actions,
      'allowedGroupClaims': ?allowedGroupClaims,
    };
  }

  factory ResourceAccessRoleResponse.fromMap(Map<String, dynamic> map) {
    return ResourceAccessRoleResponse(
      actions: (() { final guardedValue = map['actions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      allowedGroupClaims: (() { final guardedValue = map['allowedGroupClaims']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
