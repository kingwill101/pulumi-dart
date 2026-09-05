// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetOrganizationMetaTenantFlags {
  final pulumi.Input<String> accountCreation;
  final pulumi.Input<String> accountDeletion;
  final pulumi.Input<String> accountMigration;
  final pulumi.Input<String> accountMobility;
  final pulumi.Input<String> enterpriseCapability;
  final pulumi.Input<String> memberManagement;
  final pulumi.Input<String> subOrgCreation;

  /// Creates a new [GetOrganizationMetaTenantFlags].
  /// [accountCreation] Required.
  /// [accountDeletion] Required.
  /// [accountMigration] Required.
  /// [accountMobility] Required.
  /// [enterpriseCapability] Required.
  /// [memberManagement] Required.
  /// [subOrgCreation] Required.
  const GetOrganizationMetaTenantFlags({
    required this.accountCreation,
    required this.accountDeletion,
    required this.accountMigration,
    required this.accountMobility,
    required this.enterpriseCapability,
    required this.memberManagement,
    required this.subOrgCreation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountCreation': accountCreation,
      'accountDeletion': accountDeletion,
      'accountMigration': accountMigration,
      'accountMobility': accountMobility,
      'enterpriseCapability': enterpriseCapability,
      'memberManagement': memberManagement,
      'subOrgCreation': subOrgCreation,
    };
  }

  factory GetOrganizationMetaTenantFlags.fromMap(Map<String, dynamic> map) {
    return GetOrganizationMetaTenantFlags(
      accountCreation: pulumi.Input.fromValue(map['accountCreation'] as String),
      accountDeletion: pulumi.Input.fromValue(map['accountDeletion'] as String),
      accountMigration: pulumi.Input.fromValue(map['accountMigration'] as String),
      accountMobility: pulumi.Input.fromValue(map['accountMobility'] as String),
      enterpriseCapability: pulumi.Input.fromValue(map['enterpriseCapability'] as String),
      memberManagement: pulumi.Input.fromValue(map['memberManagement'] as String),
      subOrgCreation: pulumi.Input.fromValue(map['subOrgCreation'] as String),
    );
  }
}
