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
  DefenderFoDatabasesAwsOfferingResponse({
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
      arcAutoProvisioning: map['arcAutoProvisioning'] == null ? null : (DefenderFoDatabasesAwsOfferingResponseArcAutoProvisioning.fromMap((map['arcAutoProvisioning'] as Map).cast<String, dynamic>())).input(),
      databasesDspm: map['databasesDspm'] == null ? null : (DefenderFoDatabasesAwsOfferingResponseDatabasesDspm.fromMap((map['databasesDspm'] as Map).cast<String, dynamic>())).input(),
      description: (map['description'] as String).input(),
      offeringType: (map['offeringType'] as String).input(),
      rds: map['rds'] == null ? null : (DefenderFoDatabasesAwsOfferingResponseRds.fromMap((map['rds'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

