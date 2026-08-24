// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAccountManagedBy {
  /// ID of the parent Organization, if one exists
  final pulumi.Input<String> parentOrgId;
  /// Name of the parent Organization, if one exists
  final pulumi.Input<String> parentOrgName;

  /// Creates a new [GetAccountManagedBy].
  /// [parentOrgId] ID of the parent Organization, if one exists
  /// [parentOrgName] Name of the parent Organization, if one exists
  const GetAccountManagedBy({
    required this.parentOrgId,
    required this.parentOrgName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parentOrgId': parentOrgId,
      'parentOrgName': parentOrgName,
    };
  }

  factory GetAccountManagedBy.fromMap(Map<String, dynamic> map) {
    return GetAccountManagedBy(
      parentOrgId: pulumi.Input.fromValue(map['parentOrgId'] as String),
      parentOrgName: pulumi.Input.fromValue(map['parentOrgName'] as String),
    );
  }
}
