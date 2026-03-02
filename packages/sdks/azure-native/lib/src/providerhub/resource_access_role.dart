// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ResourceAccessRole {
  /// The actions.
  final pulumi.Input<List<String>>? actions;
  /// The allowed group claims.
  final pulumi.Input<List<String>>? allowedGroupClaims;

  /// Creates a new [ResourceAccessRole].
  /// [actions] The actions.
  /// [allowedGroupClaims] The allowed group claims.
  ResourceAccessRole({
    this.actions,
    this.allowedGroupClaims,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': ?actions,
      'allowedGroupClaims': ?allowedGroupClaims,
    };
  }

  factory ResourceAccessRole.fromMap(Map<String, dynamic> map) {
    return ResourceAccessRole(
      actions: map['actions'] == null ? null : ((map['actions']! as List).cast<String>()).input(),
      allowedGroupClaims: map['allowedGroupClaims'] == null ? null : ((map['allowedGroupClaims']! as List).cast<String>()).input(),
    );
  }
}

