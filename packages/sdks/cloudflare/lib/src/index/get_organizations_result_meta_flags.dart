// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetOrganizationsResultMetaFlags {
  final pulumi.Input<String> accountCreation;
  final pulumi.Input<String> accountDeletion;
  final pulumi.Input<String> accountMigration;
  final pulumi.Input<String> accountMobility;
  final pulumi.Input<String> subOrgCreation;

  /// Creates a new [GetOrganizationsResultMetaFlags].
  /// [accountCreation] Required.
  /// [accountDeletion] Required.
  /// [accountMigration] Required.
  /// [accountMobility] Required.
  /// [subOrgCreation] Required.
  const GetOrganizationsResultMetaFlags({
    required this.accountCreation,
    required this.accountDeletion,
    required this.accountMigration,
    required this.accountMobility,
    required this.subOrgCreation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountCreation': accountCreation,
      'accountDeletion': accountDeletion,
      'accountMigration': accountMigration,
      'accountMobility': accountMobility,
      'subOrgCreation': subOrgCreation,
    };
  }

  factory GetOrganizationsResultMetaFlags.fromMap(Map<String, dynamic> map) {
    return GetOrganizationsResultMetaFlags(
      accountCreation: pulumi.Input.fromValue(map['accountCreation'] as String),
      accountDeletion: pulumi.Input.fromValue(map['accountDeletion'] as String),
      accountMigration: pulumi.Input.fromValue(map['accountMigration'] as String),
      accountMobility: pulumi.Input.fromValue(map['accountMobility'] as String),
      subOrgCreation: pulumi.Input.fromValue(map['subOrgCreation'] as String),
    );
  }
}
