// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ResourceAccessRoleResponse {
  /// The actions.
  final pulumi.Input<List<String>>? actions;
  /// The allowed group claims.
  final pulumi.Input<List<String>>? allowedGroupClaims;

  /// Creates a new [ResourceAccessRoleResponse].
  /// [actions] The actions.
  /// [allowedGroupClaims] The allowed group claims.
  ResourceAccessRoleResponse({
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
      actions: map['actions'] == null ? null : ((map['actions'] as List).cast<String>()).input(),
      allowedGroupClaims: map['allowedGroupClaims'] == null ? null : ((map['allowedGroupClaims'] as List).cast<String>()).input(),
    );
  }
}

