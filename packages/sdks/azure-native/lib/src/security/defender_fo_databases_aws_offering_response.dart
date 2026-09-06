// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'defender_fo_databases_aws_offering_arc_auto_provisioning_response.dart';
import 'defender_fo_databases_aws_offering_databases_dspm_response.dart';
import 'defender_fo_databases_aws_offering_rds_response.dart';

/// The Defender for Databases AWS offering
class DefenderFoDatabasesAwsOfferingResponse {
  /// The ARC autoprovisioning configuration
  final pulumi.Input<DefenderFoDatabasesAwsOfferingArcAutoProvisioningResponse?>? arcAutoProvisioning;
  /// The databases data security posture management (DSPM) configuration
  final pulumi.Input<DefenderFoDatabasesAwsOfferingDatabasesDspmResponse?>? databasesDspm;
  /// The offering description.
  final pulumi.Input<String> description;
  /// The type of the security offering.
  /// Expected value is 'DefenderForDatabasesAws'.
  final pulumi.Input<String> offeringType;
  /// The RDS configuration
  final pulumi.Input<DefenderFoDatabasesAwsOfferingRdsResponse?>? rds;

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
      'arcAutoProvisioning': ?pulumi.Input.mapOptionalInputValue<DefenderFoDatabasesAwsOfferingArcAutoProvisioningResponse, Map<String, dynamic>>(arcAutoProvisioning, (value) => value.toMap()),
      'databasesDspm': ?pulumi.Input.mapOptionalInputValue<DefenderFoDatabasesAwsOfferingDatabasesDspmResponse, Map<String, dynamic>>(databasesDspm, (value) => value.toMap()),
      'description': description,
      'offeringType': offeringType,
      'rds': ?pulumi.Input.mapOptionalInputValue<DefenderFoDatabasesAwsOfferingRdsResponse, Map<String, dynamic>>(rds, (value) => value.toMap()),
    };
  }

  factory DefenderFoDatabasesAwsOfferingResponse.fromMap(Map<String, dynamic> map) {
    return DefenderFoDatabasesAwsOfferingResponse(
      arcAutoProvisioning: (() { final guardedValue = map['arcAutoProvisioning']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DefenderFoDatabasesAwsOfferingArcAutoProvisioningResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      databasesDspm: (() { final guardedValue = map['databasesDspm']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DefenderFoDatabasesAwsOfferingDatabasesDspmResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      description: pulumi.Input.fromValue(map['description'] as String),
      offeringType: pulumi.Input.fromValue(map['offeringType'] as String),
      rds: (() { final guardedValue = map['rds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DefenderFoDatabasesAwsOfferingRdsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
