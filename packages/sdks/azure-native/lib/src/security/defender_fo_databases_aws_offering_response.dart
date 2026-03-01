// ignore_for_file: unused_element, unnecessary_cast

import 'defender_fo_databases_aws_offering_response_arc_auto_provisioning.dart';
import 'defender_fo_databases_aws_offering_response_databases_dspm.dart';
import 'defender_fo_databases_aws_offering_response_rds.dart';

/// The Defender for Databases AWS offering
class DefenderFoDatabasesAwsOfferingResponse {
  /// The ARC autoprovisioning configuration
  final DefenderFoDatabasesAwsOfferingResponseArcAutoProvisioning? arcAutoProvisioning;
  /// The databases data security posture management (DSPM) configuration
  final DefenderFoDatabasesAwsOfferingResponseDatabasesDspm? databasesDspm;
  /// The offering description.
  final String description;
  /// The type of the security offering.
  /// Expected value is 'DefenderForDatabasesAws'.
  final String offeringType;
  /// The RDS configuration
  final DefenderFoDatabasesAwsOfferingResponseRds? rds;

  /// Creates a new [DefenderFoDatabasesAwsOfferingResponse].
  /// [arcAutoProvisioning] The ARC autoprovisioning configuration
  /// [databasesDspm] The databases data security posture management (DSPM) configuration
  /// [description] The offering description.
  /// [offeringType] The type of the security offering.
  /// [rds] The RDS configuration
  DefenderFoDatabasesAwsOfferingResponse({
    this.arcAutoProvisioning,
    this.databasesDspm,
    required this.description,
    required this.offeringType,
    this.rds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arcAutoProvisioning': ?arcAutoProvisioning == null ? null : arcAutoProvisioning!.toMap(),
      'databasesDspm': ?databasesDspm == null ? null : databasesDspm!.toMap(),
      'description': description,
      'offeringType': offeringType,
      'rds': ?rds == null ? null : rds!.toMap(),
    };
  }

  factory DefenderFoDatabasesAwsOfferingResponse.fromMap(Map<String, dynamic> map) {
    return DefenderFoDatabasesAwsOfferingResponse(
      arcAutoProvisioning: map['arcAutoProvisioning'] == null ? null : DefenderFoDatabasesAwsOfferingResponseArcAutoProvisioning.fromMap((map['arcAutoProvisioning'] as Map).cast<String, dynamic>()),
      databasesDspm: map['databasesDspm'] == null ? null : DefenderFoDatabasesAwsOfferingResponseDatabasesDspm.fromMap((map['databasesDspm'] as Map).cast<String, dynamic>()),
      description: map['description'] as String,
      offeringType: map['offeringType'] as String,
      rds: map['rds'] == null ? null : DefenderFoDatabasesAwsOfferingResponseRds.fromMap((map['rds'] as Map).cast<String, dynamic>()),
    );
  }
}

