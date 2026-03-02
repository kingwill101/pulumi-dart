// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'defender_for_databases_gcp_offering_arc_auto_provisioning.dart';
import 'defender_for_databases_gcp_offering_defender_for_databases_arc_auto_provisioning.dart';

/// The Defender for Databases GCP offering configurations
class DefenderForDatabasesGcpOffering {
  /// The ARC autoprovisioning configuration
  final pulumi.Input<DefenderForDatabasesGcpOfferingArcAutoProvisioning>? arcAutoProvisioning;
  /// The native cloud connection configuration
  final pulumi.Input<DefenderForDatabasesGcpOfferingDefenderForDatabasesArcAutoProvisioning>? defenderForDatabasesArcAutoProvisioning;
  /// The type of the security offering.
  /// Expected value is 'DefenderForDatabasesGcp'.
  final pulumi.Input<String> offeringType;

  /// Creates a new [DefenderForDatabasesGcpOffering].
  /// [arcAutoProvisioning] The ARC autoprovisioning configuration
  /// [defenderForDatabasesArcAutoProvisioning] The native cloud connection configuration
  /// [offeringType] The type of the security offering.
  DefenderForDatabasesGcpOffering({
    this.arcAutoProvisioning,
    this.defenderForDatabasesArcAutoProvisioning,
    required this.offeringType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arcAutoProvisioning': ?pulumi.Input.mapOptionalInputValue<DefenderForDatabasesGcpOfferingArcAutoProvisioning, Map<String, dynamic>>(arcAutoProvisioning, (value) => value.toMap()),
      'defenderForDatabasesArcAutoProvisioning': ?pulumi.Input.mapOptionalInputValue<DefenderForDatabasesGcpOfferingDefenderForDatabasesArcAutoProvisioning, Map<String, dynamic>>(defenderForDatabasesArcAutoProvisioning, (value) => value.toMap()),
      'offeringType': offeringType,
    };
  }

  factory DefenderForDatabasesGcpOffering.fromMap(Map<String, dynamic> map) {
    return DefenderForDatabasesGcpOffering(
      arcAutoProvisioning: map['arcAutoProvisioning'] == null ? null : (DefenderForDatabasesGcpOfferingArcAutoProvisioning.fromMap((map['arcAutoProvisioning']! as Map).cast<String, dynamic>())).input(),
      defenderForDatabasesArcAutoProvisioning: map['defenderForDatabasesArcAutoProvisioning'] == null ? null : (DefenderForDatabasesGcpOfferingDefenderForDatabasesArcAutoProvisioning.fromMap((map['defenderForDatabasesArcAutoProvisioning']! as Map).cast<String, dynamic>())).input(),
      offeringType: (map['offeringType'] as String).input(),
    );
  }
}

