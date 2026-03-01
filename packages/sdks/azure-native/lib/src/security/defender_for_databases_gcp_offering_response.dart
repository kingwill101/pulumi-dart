// ignore_for_file: unused_element, unnecessary_cast

import 'defender_for_databases_gcp_offering_response_arc_auto_provisioning.dart';
import 'defender_for_databases_gcp_offering_response_defender_for_databases_arc_auto_provisioning.dart';

/// The Defender for Databases GCP offering configurations
class DefenderForDatabasesGcpOfferingResponse {
  /// The ARC autoprovisioning configuration
  final DefenderForDatabasesGcpOfferingResponseArcAutoProvisioning? arcAutoProvisioning;
  /// The native cloud connection configuration
  final DefenderForDatabasesGcpOfferingResponseDefenderForDatabasesArcAutoProvisioning? defenderForDatabasesArcAutoProvisioning;
  /// The offering description.
  final String description;
  /// The type of the security offering.
  /// Expected value is 'DefenderForDatabasesGcp'.
  final String offeringType;

  /// Creates a new [DefenderForDatabasesGcpOfferingResponse].
  /// [arcAutoProvisioning] The ARC autoprovisioning configuration
  /// [defenderForDatabasesArcAutoProvisioning] The native cloud connection configuration
  /// [description] The offering description.
  /// [offeringType] The type of the security offering.
  DefenderForDatabasesGcpOfferingResponse({
    this.arcAutoProvisioning,
    this.defenderForDatabasesArcAutoProvisioning,
    required this.description,
    required this.offeringType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arcAutoProvisioning': ?arcAutoProvisioning == null ? null : arcAutoProvisioning!.toMap(),
      'defenderForDatabasesArcAutoProvisioning': ?defenderForDatabasesArcAutoProvisioning == null ? null : defenderForDatabasesArcAutoProvisioning!.toMap(),
      'description': description,
      'offeringType': offeringType,
    };
  }

  factory DefenderForDatabasesGcpOfferingResponse.fromMap(Map<String, dynamic> map) {
    return DefenderForDatabasesGcpOfferingResponse(
      arcAutoProvisioning: map['arcAutoProvisioning'] == null ? null : DefenderForDatabasesGcpOfferingResponseArcAutoProvisioning.fromMap((map['arcAutoProvisioning'] as Map).cast<String, dynamic>()),
      defenderForDatabasesArcAutoProvisioning: map['defenderForDatabasesArcAutoProvisioning'] == null ? null : DefenderForDatabasesGcpOfferingResponseDefenderForDatabasesArcAutoProvisioning.fromMap((map['defenderForDatabasesArcAutoProvisioning'] as Map).cast<String, dynamic>()),
      description: map['description'] as String,
      offeringType: map['offeringType'] as String,
    );
  }
}

