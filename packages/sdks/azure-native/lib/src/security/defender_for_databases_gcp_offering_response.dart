// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'defender_for_databases_gcp_offering_arc_auto_provisioning_response.dart';
import 'defender_for_databases_gcp_offering_defender_for_databases_arc_auto_provisioning_response.dart';

/// The Defender for Databases GCP offering configurations
class DefenderForDatabasesGcpOfferingResponse {
  /// The ARC autoprovisioning configuration
  final pulumi.Input<DefenderForDatabasesGcpOfferingArcAutoProvisioningResponse?>? arcAutoProvisioning;
  /// The native cloud connection configuration
  final pulumi.Input<DefenderForDatabasesGcpOfferingDefenderForDatabasesArcAutoProvisioningResponse?>? defenderForDatabasesArcAutoProvisioning;
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
  const DefenderForDatabasesGcpOfferingResponse({
    this.arcAutoProvisioning,
    this.defenderForDatabasesArcAutoProvisioning,
    required this.description,
    required this.offeringType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arcAutoProvisioning': ?pulumi.Input.mapOptionalInputValue<DefenderForDatabasesGcpOfferingArcAutoProvisioningResponse, Map<String, dynamic>>(arcAutoProvisioning, (value) => value.toMap()),
      'defenderForDatabasesArcAutoProvisioning': ?pulumi.Input.mapOptionalInputValue<DefenderForDatabasesGcpOfferingDefenderForDatabasesArcAutoProvisioningResponse, Map<String, dynamic>>(defenderForDatabasesArcAutoProvisioning, (value) => value.toMap()),
      'description': description,
      'offeringType': offeringType,
    };
  }

  factory DefenderForDatabasesGcpOfferingResponse.fromMap(Map<String, dynamic> map) {
    return DefenderForDatabasesGcpOfferingResponse(
      arcAutoProvisioning: (() { final guardedValue = map['arcAutoProvisioning']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DefenderForDatabasesGcpOfferingArcAutoProvisioningResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      defenderForDatabasesArcAutoProvisioning: (() { final guardedValue = map['defenderForDatabasesArcAutoProvisioning']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DefenderForDatabasesGcpOfferingDefenderForDatabasesArcAutoProvisioningResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      description: pulumi.Input.fromValue(map['description'] as String),
      offeringType: pulumi.Input.fromValue(map['offeringType'] as String),
    );
  }
}
