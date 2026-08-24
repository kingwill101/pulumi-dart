// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class OrganizationMetaFlags {
  final pulumi.Input<String?>? accountCreation;
  final pulumi.Input<String?>? accountDeletion;
  final pulumi.Input<String?>? accountMigration;
  final pulumi.Input<String?>? accountMobility;
  final pulumi.Input<String?>? subOrgCreation;

  /// Creates a new [OrganizationMetaFlags].
  /// [accountCreation] Optional.
  /// [accountDeletion] Optional.
  /// [accountMigration] Optional.
  /// [accountMobility] Optional.
  /// [subOrgCreation] Optional.
  const OrganizationMetaFlags({
    this.accountCreation,
    this.accountDeletion,
    this.accountMigration,
    this.accountMobility,
    this.subOrgCreation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountCreation': ?accountCreation,
      'accountDeletion': ?accountDeletion,
      'accountMigration': ?accountMigration,
      'accountMobility': ?accountMobility,
      'subOrgCreation': ?subOrgCreation,
    };
  }

  factory OrganizationMetaFlags.fromMap(Map<String, dynamic> map) {
    return OrganizationMetaFlags(
      accountCreation: (() { final guardedValue = map['accountCreation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      accountDeletion: (() { final guardedValue = map['accountDeletion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      accountMigration: (() { final guardedValue = map['accountMigration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      accountMobility: (() { final guardedValue = map['accountMobility']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subOrgCreation: (() { final guardedValue = map['subOrgCreation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
