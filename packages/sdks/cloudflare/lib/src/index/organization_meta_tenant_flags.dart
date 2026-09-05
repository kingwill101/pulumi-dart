// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class OrganizationMetaTenantFlags {
  final pulumi.Input<String?>? accountCreation;
  final pulumi.Input<String?>? accountDeletion;
  final pulumi.Input<String?>? accountMigration;
  final pulumi.Input<String?>? accountMobility;
  final pulumi.Input<String?>? enterpriseCapability;
  final pulumi.Input<String?>? memberManagement;
  final pulumi.Input<String?>? subOrgCreation;

  /// Creates a new [OrganizationMetaTenantFlags].
  /// [accountCreation] Optional.
  /// [accountDeletion] Optional.
  /// [accountMigration] Optional.
  /// [accountMobility] Optional.
  /// [enterpriseCapability] Optional.
  /// [memberManagement] Optional.
  /// [subOrgCreation] Optional.
  const OrganizationMetaTenantFlags({
    this.accountCreation,
    this.accountDeletion,
    this.accountMigration,
    this.accountMobility,
    this.enterpriseCapability,
    this.memberManagement,
    this.subOrgCreation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountCreation': ?accountCreation,
      'accountDeletion': ?accountDeletion,
      'accountMigration': ?accountMigration,
      'accountMobility': ?accountMobility,
      'enterpriseCapability': ?enterpriseCapability,
      'memberManagement': ?memberManagement,
      'subOrgCreation': ?subOrgCreation,
    };
  }

  factory OrganizationMetaTenantFlags.fromMap(Map<String, dynamic> map) {
    return OrganizationMetaTenantFlags(
      accountCreation: (() { final guardedValue = map['accountCreation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      accountDeletion: (() { final guardedValue = map['accountDeletion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      accountMigration: (() { final guardedValue = map['accountMigration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      accountMobility: (() { final guardedValue = map['accountMobility']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enterpriseCapability: (() { final guardedValue = map['enterpriseCapability']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      memberManagement: (() { final guardedValue = map['memberManagement']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subOrgCreation: (() { final guardedValue = map['subOrgCreation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
