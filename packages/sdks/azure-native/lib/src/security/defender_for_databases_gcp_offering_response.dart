// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'defender_for_databases_gcp_offering_response_arc_auto_provisioning.dart';
import 'defender_for_databases_gcp_offering_response_defender_for_databases_arc_auto_provisioning.dart';

/// The Defender for Databases GCP offering configurations
class DefenderForDatabasesGcpOfferingResponse {
  /// The ARC autoprovisioning configuration
  final pulumi.Input<DefenderForDatabasesGcpOfferingResponseArcAutoProvisioning>? arcAutoProvisioning;
  /// The native cloud connection configuration
  final pulumi.Input<DefenderForDatabasesGcpOfferingResponseDefenderForDatabasesArcAutoProvisioning>? defenderForDatabasesArcAutoProvisioning;
  /// The offering description.
  final pulumi.Input<String> description;
  /// The type of the security offering.
  /// Expected value is 'DefenderForDatabasesGcp'.
  final pulumi.Input<String> offeringType;

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
      'arcAutoProvisioning': ?pulumi.Input.mapOptionalInputValue<DefenderForDatabasesGcpOfferingResponseArcAutoProvisioning, Map<String, dynamic>>(arcAutoProvisioning, (value) => value.toMap()),
      'defenderForDatabasesArcAutoProvisioning': ?pulumi.Input.mapOptionalInputValue<DefenderForDatabasesGcpOfferingResponseDefenderForDatabasesArcAutoProvisioning, Map<String, dynamic>>(defenderForDatabasesArcAutoProvisioning, (value) => value.toMap()),
      'description': description,
      'offeringType': offeringType,
    };
  }

  factory DefenderForDatabasesGcpOfferingResponse.fromMap(Map<String, dynamic> map) {
    return DefenderForDatabasesGcpOfferingResponse(
      arcAutoProvisioning: map['arcAutoProvisioning'] == null ? null : (DefenderForDatabasesGcpOfferingResponseArcAutoProvisioning.fromMap((map['arcAutoProvisioning']! as Map).cast<String, dynamic>())).input(),
      defenderForDatabasesArcAutoProvisioning: map['defenderForDatabasesArcAutoProvisioning'] == null ? null : (DefenderForDatabasesGcpOfferingResponseDefenderForDatabasesArcAutoProvisioning.fromMap((map['defenderForDatabasesArcAutoProvisioning']! as Map).cast<String, dynamic>())).input(),
      description: (map['description'] as String).input(),
      offeringType: (map['offeringType'] as String).input(),
    );
  }
}

