// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccountManagedBy {
  /// ID of the parent Organization, if one exists
  final pulumi.Input<String?>? parentOrgId;
  /// Name of the parent Organization, if one exists
  final pulumi.Input<String?>? parentOrgName;

  /// Creates a new [AccountManagedBy].
  /// [parentOrgId] ID of the parent Organization, if one exists
  /// [parentOrgName] Name of the parent Organization, if one exists
  const AccountManagedBy({
    this.parentOrgId,
    this.parentOrgName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parentOrgId': ?parentOrgId,
      'parentOrgName': ?parentOrgName,
    };
  }

  factory AccountManagedBy.fromMap(Map<String, dynamic> map) {
    return AccountManagedBy(
      parentOrgId: (() { final guardedValue = map['parentOrgId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parentOrgName: (() { final guardedValue = map['parentOrgName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
