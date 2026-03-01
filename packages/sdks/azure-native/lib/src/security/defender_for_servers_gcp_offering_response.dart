// ignore_for_file: unused_element, unnecessary_cast

import 'defender_for_servers_gcp_offering_response_arc_auto_provisioning.dart';
import 'defender_for_servers_gcp_offering_response_defender_for_servers.dart';
import 'defender_for_servers_gcp_offering_response_mde_auto_provisioning.dart';
import 'defender_for_servers_gcp_offering_response_sub_plan.dart';
import 'defender_for_servers_gcp_offering_response_va_auto_provisioning.dart';
import 'defender_for_servers_gcp_offering_response_vm_scanners.dart';

/// The Defender for Servers GCP offering configurations
class DefenderForServersGcpOfferingResponse {
  /// The ARC autoprovisioning configuration
  final DefenderForServersGcpOfferingResponseArcAutoProvisioning? arcAutoProvisioning;
  /// The Defender for servers connection configuration
  final DefenderForServersGcpOfferingResponseDefenderForServers? defenderForServers;
  /// The offering description.
  final String description;
  /// The Microsoft Defender for Endpoint autoprovisioning configuration
  final DefenderForServersGcpOfferingResponseMdeAutoProvisioning? mdeAutoProvisioning;
  /// The type of the security offering.
  /// Expected value is 'DefenderForServersGcp'.
  final String offeringType;
  /// configuration for the servers offering subPlan
  final DefenderForServersGcpOfferingResponseSubPlan? subPlan;
  /// The Vulnerability Assessment autoprovisioning configuration
  final DefenderForServersGcpOfferingResponseVaAutoProvisioning? vaAutoProvisioning;
  /// The Microsoft Defender for Server VM scanning configuration
  final DefenderForServersGcpOfferingResponseVmScanners? vmScanners;

  /// Creates a new [DefenderForServersGcpOfferingResponse].
  /// [arcAutoProvisioning] The ARC autoprovisioning configuration
  /// [defenderForServers] The Defender for servers connection configuration
  /// [description] The offering description.
  /// [mdeAutoProvisioning] The Microsoft Defender for Endpoint autoprovisioning configuration
  /// [offeringType] The type of the security offering.
  /// [subPlan] configuration for the servers offering subPlan
  /// [vaAutoProvisioning] The Vulnerability Assessment autoprovisioning configuration
  /// [vmScanners] The Microsoft Defender for Server VM scanning configuration
  DefenderForServersGcpOfferingResponse({
    this.arcAutoProvisioning,
    this.defenderForServers,
    required this.description,
    this.mdeAutoProvisioning,
    required this.offeringType,
    this.subPlan,
    this.vaAutoProvisioning,
    this.vmScanners,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arcAutoProvisioning': ?arcAutoProvisioning == null ? null : arcAutoProvisioning!.toMap(),
      'defenderForServers': ?defenderForServers == null ? null : defenderForServers!.toMap(),
      'description': description,
      'mdeAutoProvisioning': ?mdeAutoProvisioning == null ? null : mdeAutoProvisioning!.toMap(),
      'offeringType': offeringType,
      'subPlan': ?subPlan == null ? null : subPlan!.toMap(),
      'vaAutoProvisioning': ?vaAutoProvisioning == null ? null : vaAutoProvisioning!.toMap(),
      'vmScanners': ?vmScanners == null ? null : vmScanners!.toMap(),
    };
  }

  factory DefenderForServersGcpOfferingResponse.fromMap(Map<String, dynamic> map) {
    return DefenderForServersGcpOfferingResponse(
      arcAutoProvisioning: map['arcAutoProvisioning'] == null ? null : DefenderForServersGcpOfferingResponseArcAutoProvisioning.fromMap((map['arcAutoProvisioning'] as Map).cast<String, dynamic>()),
      defenderForServers: map['defenderForServers'] == null ? null : DefenderForServersGcpOfferingResponseDefenderForServers.fromMap((map['defenderForServers'] as Map).cast<String, dynamic>()),
      description: map['description'] as String,
      mdeAutoProvisioning: map['mdeAutoProvisioning'] == null ? null : DefenderForServersGcpOfferingResponseMdeAutoProvisioning.fromMap((map['mdeAutoProvisioning'] as Map).cast<String, dynamic>()),
      offeringType: map['offeringType'] as String,
      subPlan: map['subPlan'] == null ? null : DefenderForServersGcpOfferingResponseSubPlan.fromMap((map['subPlan'] as Map).cast<String, dynamic>()),
      vaAutoProvisioning: map['vaAutoProvisioning'] == null ? null : DefenderForServersGcpOfferingResponseVaAutoProvisioning.fromMap((map['vaAutoProvisioning'] as Map).cast<String, dynamic>()),
      vmScanners: map['vmScanners'] == null ? null : DefenderForServersGcpOfferingResponseVmScanners.fromMap((map['vmScanners'] as Map).cast<String, dynamic>()),
    );
  }
}

