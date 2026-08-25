// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GoldengateDeploymentPropertiesOggDataGroupRolesMapping {
  /// (Output)
  /// The administrator group id.
  final pulumi.Input<String?>? administratorGroupId;
  /// (Output)
  /// The operator group id.
  final pulumi.Input<String?>? operatorGroupId;
  /// (Output)
  /// The security group id.
  final pulumi.Input<String?>? securityGroupId;
  /// (Output)
  /// The user group id.
  ///
  /// &lt;a name="nestedPropertiesPlacements"&gt;&lt;/a&gt;The `placements` block contains:
  final pulumi.Input<String?>? userGroupId;

  /// Creates a new [GoldengateDeploymentPropertiesOggDataGroupRolesMapping].
  /// [administratorGroupId] (Output)
  /// [operatorGroupId] (Output)
  /// [securityGroupId] (Output)
  /// [userGroupId] (Output)
  const GoldengateDeploymentPropertiesOggDataGroupRolesMapping({
    this.administratorGroupId,
    this.operatorGroupId,
    this.securityGroupId,
    this.userGroupId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'administratorGroupId': ?administratorGroupId,
      'operatorGroupId': ?operatorGroupId,
      'securityGroupId': ?securityGroupId,
      'userGroupId': ?userGroupId,
    };
  }

  factory GoldengateDeploymentPropertiesOggDataGroupRolesMapping.fromMap(Map<String, dynamic> map) {
    return GoldengateDeploymentPropertiesOggDataGroupRolesMapping(
      administratorGroupId: (() { final guardedValue = map['administratorGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      operatorGroupId: (() { final guardedValue = map['operatorGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securityGroupId: (() { final guardedValue = map['securityGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userGroupId: (() { final guardedValue = map['userGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
