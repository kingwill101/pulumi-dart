// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccountManagedBy {
  /// ID of the parent Organization, if one exists
  final pulumi.Input<String?>? parentOrgId;
  /// Name of the parent Organization, if one exists
  final pulumi.Input<String?>? parentOrgName;
  /// ID of the root Organization, if one exists
  final pulumi.Input<String?>? rootOrgId;
  /// Indicates whether the parent Organization hierarchy should be displayed
  final pulumi.Input<bool?>? shouldDisplayParentOrgs;

  /// Creates a new [AccountManagedBy].
  /// [parentOrgId] ID of the parent Organization, if one exists
  /// [parentOrgName] Name of the parent Organization, if one exists
  /// [rootOrgId] ID of the root Organization, if one exists
  /// [shouldDisplayParentOrgs] Indicates whether the parent Organization hierarchy should be displayed
  const AccountManagedBy({
    this.parentOrgId,
    this.parentOrgName,
    this.rootOrgId,
    this.shouldDisplayParentOrgs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parentOrgId': ?parentOrgId,
      'parentOrgName': ?parentOrgName,
      'rootOrgId': ?rootOrgId,
      'shouldDisplayParentOrgs': ?shouldDisplayParentOrgs,
    };
  }

  factory AccountManagedBy.fromMap(Map<String, dynamic> map) {
    return AccountManagedBy(
      parentOrgId: (() { final guardedValue = map['parentOrgId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parentOrgName: (() { final guardedValue = map['parentOrgName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rootOrgId: (() { final guardedValue = map['rootOrgId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      shouldDisplayParentOrgs: (() { final guardedValue = map['shouldDisplayParentOrgs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
