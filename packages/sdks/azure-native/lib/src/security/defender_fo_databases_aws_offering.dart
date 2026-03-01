// ignore_for_file: unused_element, unnecessary_cast

import 'defender_fo_databases_aws_offering_arc_auto_provisioning.dart';
import 'defender_fo_databases_aws_offering_databases_dspm.dart';
import 'defender_fo_databases_aws_offering_rds.dart';

/// The Defender for Databases AWS offering
class DefenderFoDatabasesAwsOffering {
  /// The ARC autoprovisioning configuration
  final DefenderFoDatabasesAwsOfferingArcAutoProvisioning? arcAutoProvisioning;
  /// The databases data security posture management (DSPM) configuration
  final DefenderFoDatabasesAwsOfferingDatabasesDspm? databasesDspm;
  /// The type of the security offering.
  /// Expected value is 'DefenderForDatabasesAws'.
  final String offeringType;
  /// The RDS configuration
  final DefenderFoDatabasesAwsOfferingRds? rds;

  /// Creates a new [DefenderFoDatabasesAwsOffering].
  /// [arcAutoProvisioning] The ARC autoprovisioning configuration
  /// [databasesDspm] The databases data security posture management (DSPM) configuration
  /// [offeringType] The type of the security offering.
  /// [rds] The RDS configuration
  DefenderFoDatabasesAwsOffering({
    this.arcAutoProvisioning,
    this.databasesDspm,
    required this.offeringType,
    this.rds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arcAutoProvisioning': ?arcAutoProvisioning == null ? null : arcAutoProvisioning!.toMap(),
      'databasesDspm': ?databasesDspm == null ? null : databasesDspm!.toMap(),
      'offeringType': offeringType,
      'rds': ?rds == null ? null : rds!.toMap(),
    };
  }

  factory DefenderFoDatabasesAwsOffering.fromMap(Map<String, dynamic> map) {
    return DefenderFoDatabasesAwsOffering(
      arcAutoProvisioning: map['arcAutoProvisioning'] == null ? null : DefenderFoDatabasesAwsOfferingArcAutoProvisioning.fromMap((map['arcAutoProvisioning'] as Map).cast<String, dynamic>()),
      databasesDspm: map['databasesDspm'] == null ? null : DefenderFoDatabasesAwsOfferingDatabasesDspm.fromMap((map['databasesDspm'] as Map).cast<String, dynamic>()),
      offeringType: map['offeringType'] as String,
      rds: map['rds'] == null ? null : DefenderFoDatabasesAwsOfferingRds.fromMap((map['rds'] as Map).cast<String, dynamic>()),
    );
  }
}

