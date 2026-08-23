// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'defender_fo_databases_aws_offering_arc_auto_provisioning.dart';
import 'defender_fo_databases_aws_offering_databases_dspm.dart';
import 'defender_fo_databases_aws_offering_rds.dart';

/// The Defender for Databases AWS offering
class DefenderFoDatabasesAwsOffering {
  /// The ARC autoprovisioning configuration
  final pulumi.Input<DefenderFoDatabasesAwsOfferingArcAutoProvisioning>? arcAutoProvisioning;
  /// The databases data security posture management (DSPM) configuration
  final pulumi.Input<DefenderFoDatabasesAwsOfferingDatabasesDspm>? databasesDspm;
  /// The type of the security offering.
  /// Expected value is 'DefenderForDatabasesAws'.
  final pulumi.Input<String> offeringType;
  /// The RDS configuration
  final pulumi.Input<DefenderFoDatabasesAwsOfferingRds>? rds;

  /// Creates a new [DefenderFoDatabasesAwsOffering].
  /// [arcAutoProvisioning] The ARC autoprovisioning configuration
  /// [databasesDspm] The databases data security posture management (DSPM) configuration
  /// [offeringType] The type of the security offering.
  /// [rds] The RDS configuration
  const DefenderFoDatabasesAwsOffering({
    this.arcAutoProvisioning,
    this.databasesDspm,
    required this.offeringType,
    this.rds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arcAutoProvisioning': ?pulumi.Input.mapOptionalInputValue<DefenderFoDatabasesAwsOfferingArcAutoProvisioning, Map<String, dynamic>>(arcAutoProvisioning, (value) => value.toMap()),
      'databasesDspm': ?pulumi.Input.mapOptionalInputValue<DefenderFoDatabasesAwsOfferingDatabasesDspm, Map<String, dynamic>>(databasesDspm, (value) => value.toMap()),
      'offeringType': offeringType,
      'rds': ?pulumi.Input.mapOptionalInputValue<DefenderFoDatabasesAwsOfferingRds, Map<String, dynamic>>(rds, (value) => value.toMap()),
    };
  }

  factory DefenderFoDatabasesAwsOffering.fromMap(Map<String, dynamic> map) {
    return DefenderFoDatabasesAwsOffering(
      arcAutoProvisioning: (() { final guardedValue = map['arcAutoProvisioning']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DefenderFoDatabasesAwsOfferingArcAutoProvisioning.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      databasesDspm: (() { final guardedValue = map['databasesDspm']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DefenderFoDatabasesAwsOfferingDatabasesDspm.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      offeringType: pulumi.Input.fromValue(map['offeringType'] as String),
      rds: (() { final guardedValue = map['rds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DefenderFoDatabasesAwsOfferingRds.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
