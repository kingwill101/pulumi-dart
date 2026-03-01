// ignore_for_file: unused_element, unnecessary_cast

import 'defender_for_databases_gcp_offering_arc_auto_provisioning.dart';
import 'defender_for_databases_gcp_offering_defender_for_databases_arc_auto_provisioning.dart';

/// The Defender for Databases GCP offering configurations
class DefenderForDatabasesGcpOffering {
  /// The ARC autoprovisioning configuration
  final DefenderForDatabasesGcpOfferingArcAutoProvisioning? arcAutoProvisioning;
  /// The native cloud connection configuration
  final DefenderForDatabasesGcpOfferingDefenderForDatabasesArcAutoProvisioning? defenderForDatabasesArcAutoProvisioning;
  /// The type of the security offering.
  /// Expected value is 'DefenderForDatabasesGcp'.
  final String offeringType;

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
      'arcAutoProvisioning': ?arcAutoProvisioning == null ? null : arcAutoProvisioning!.toMap(),
      'defenderForDatabasesArcAutoProvisioning': ?defenderForDatabasesArcAutoProvisioning == null ? null : defenderForDatabasesArcAutoProvisioning!.toMap(),
      'offeringType': offeringType,
    };
  }

  factory DefenderForDatabasesGcpOffering.fromMap(Map<String, dynamic> map) {
    return DefenderForDatabasesGcpOffering(
      arcAutoProvisioning: map['arcAutoProvisioning'] == null ? null : DefenderForDatabasesGcpOfferingArcAutoProvisioning.fromMap((map['arcAutoProvisioning'] as Map).cast<String, dynamic>()),
      defenderForDatabasesArcAutoProvisioning: map['defenderForDatabasesArcAutoProvisioning'] == null ? null : DefenderForDatabasesGcpOfferingDefenderForDatabasesArcAutoProvisioning.fromMap((map['defenderForDatabasesArcAutoProvisioning'] as Map).cast<String, dynamic>()),
      offeringType: map['offeringType'] as String,
    );
  }
}

