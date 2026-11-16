// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAccountsResultManagedBy {
  /// ID of the parent Organization, if one exists
  final pulumi.Input<String> parentOrgId;
  /// Name of the parent Organization, if one exists
  final pulumi.Input<String> parentOrgName;
  /// ID of the root Organization, if one exists
  final pulumi.Input<String> rootOrgId;
  /// Indicates whether the parent Organization hierarchy should be displayed
  final pulumi.Input<bool> shouldDisplayParentOrgs;

  /// Creates a new [GetAccountsResultManagedBy].
  /// [parentOrgId] ID of the parent Organization, if one exists
  /// [parentOrgName] Name of the parent Organization, if one exists
  /// [rootOrgId] ID of the root Organization, if one exists
  /// [shouldDisplayParentOrgs] Indicates whether the parent Organization hierarchy should be displayed
  const GetAccountsResultManagedBy({
    required this.parentOrgId,
    required this.parentOrgName,
    required this.rootOrgId,
    required this.shouldDisplayParentOrgs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parentOrgId': parentOrgId,
      'parentOrgName': parentOrgName,
      'rootOrgId': rootOrgId,
      'shouldDisplayParentOrgs': shouldDisplayParentOrgs,
    };
  }

  factory GetAccountsResultManagedBy.fromMap(Map<String, dynamic> map) {
    return GetAccountsResultManagedBy(
      parentOrgId: pulumi.Input.fromValue(map['parentOrgId'] as String),
      parentOrgName: pulumi.Input.fromValue(map['parentOrgName'] as String),
      rootOrgId: pulumi.Input.fromValue(map['rootOrgId'] as String),
      shouldDisplayParentOrgs: pulumi.Input.fromValue(map['shouldDisplayParentOrgs'] as bool),
    );
  }
}
