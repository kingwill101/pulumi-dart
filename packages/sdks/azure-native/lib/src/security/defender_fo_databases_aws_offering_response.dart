// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'defender_fo_databases_aws_offering_response_arc_auto_provisioning.dart';
import 'defender_fo_databases_aws_offering_response_databases_dspm.dart';
import 'defender_fo_databases_aws_offering_response_rds.dart';

/// The Defender for Databases AWS offering
class DefenderFoDatabasesAwsOfferingResponse {
  /// The ARC autoprovisioning configuration
  final pulumi.Input<DefenderFoDatabasesAwsOfferingResponseArcAutoProvisioning>? arcAutoProvisioning;
  /// The databases data security posture management (DSPM) configuration
  final pulumi.Input<DefenderFoDatabasesAwsOfferingResponseDatabasesDspm>? databasesDspm;
  /// The offering description.
  final pulumi.Input<String> description;
  /// The type of the security offering.
  /// Expected value is 'DefenderForDatabasesAws'.
  final pulumi.Input<String> offeringType;
  /// The RDS configuration
  final pulumi.Input<DefenderFoDatabasesAwsOfferingResponseRds>? rds;

  /// Creates a new [DefenderFoDatabasesAwsOfferingResponse].
  /// [arcAutoProvisioning] The ARC autoprovisioning configuration
  /// [databasesDspm] The databases data security posture management (DSPM) configuration
  /// [description] The offering description.
  /// [offeringType] The type of the security offering.
  /// [rds] The RDS configuration
  const DefenderFoDatabasesAwsOfferingResponse({
    this.arcAutoProvisioning,
    this.databasesDspm,
    required this.description,
    required this.offeringType,
    this.rds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arcAutoProvisioning': ?pulumi.Input.mapOptionalInputValue<DefenderFoDatabasesAwsOfferingResponseArcAutoProvisioning, Map<String, dynamic>>(arcAutoProvisioning, (value) => value.toMap()),
      'databasesDspm': ?pulumi.Input.mapOptionalInputValue<DefenderFoDatabasesAwsOfferingResponseDatabasesDspm, Map<String, dynamic>>(databasesDspm, (value) => value.toMap()),
      'description': description,
      'offeringType': offeringType,
      'rds': ?pulumi.Input.mapOptionalInputValue<DefenderFoDatabasesAwsOfferingResponseRds, Map<String, dynamic>>(rds, (value) => value.toMap()),
    };
  }

  factory DefenderFoDatabasesAwsOfferingResponse.fromMap(Map<String, dynamic> map) {
    return DefenderFoDatabasesAwsOfferingResponse(
      arcAutoProvisioning: (() { final guardedValue = map['arcAutoProvisioning']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DefenderFoDatabasesAwsOfferingResponseArcAutoProvisioning.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      databasesDspm: (() { final guardedValue = map['databasesDspm']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DefenderFoDatabasesAwsOfferingResponseDatabasesDspm.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      description: pulumi.Input.fromValue(map['description'] as String),
      offeringType: pulumi.Input.fromValue(map['offeringType'] as String),
      rds: (() { final guardedValue = map['rds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DefenderFoDatabasesAwsOfferingResponseRds.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

