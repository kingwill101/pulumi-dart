// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'defender_for_servers_gcp_offering_response_arc_auto_provisioning.dart';
import 'defender_for_servers_gcp_offering_response_defender_for_servers.dart';
import 'defender_for_servers_gcp_offering_response_mde_auto_provisioning.dart';
import 'defender_for_servers_gcp_offering_response_sub_plan.dart';
import 'defender_for_servers_gcp_offering_response_va_auto_provisioning.dart';
import 'defender_for_servers_gcp_offering_response_vm_scanners.dart';

/// The Defender for Servers GCP offering configurations
class DefenderForServersGcpOfferingResponse {
  /// The ARC autoprovisioning configuration
  final pulumi.Input<DefenderForServersGcpOfferingResponseArcAutoProvisioning>? arcAutoProvisioning;
  /// The Defender for servers connection configuration
  final pulumi.Input<DefenderForServersGcpOfferingResponseDefenderForServers>? defenderForServers;
  /// The offering description.
  final pulumi.Input<String> description;
  /// The Microsoft Defender for Endpoint autoprovisioning configuration
  final pulumi.Input<DefenderForServersGcpOfferingResponseMdeAutoProvisioning>? mdeAutoProvisioning;
  /// The type of the security offering.
  /// Expected value is 'DefenderForServersGcp'.
  final pulumi.Input<String> offeringType;
  /// configuration for the servers offering subPlan
  final pulumi.Input<DefenderForServersGcpOfferingResponseSubPlan>? subPlan;
  /// The Vulnerability Assessment autoprovisioning configuration
  final pulumi.Input<DefenderForServersGcpOfferingResponseVaAutoProvisioning>? vaAutoProvisioning;
  /// The Microsoft Defender for Server VM scanning configuration
  final pulumi.Input<DefenderForServersGcpOfferingResponseVmScanners>? vmScanners;

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
      'arcAutoProvisioning': ?pulumi.Input.mapOptionalInputValue<DefenderForServersGcpOfferingResponseArcAutoProvisioning, Map<String, dynamic>>(arcAutoProvisioning, (value) => value.toMap()),
      'defenderForServers': ?pulumi.Input.mapOptionalInputValue<DefenderForServersGcpOfferingResponseDefenderForServers, Map<String, dynamic>>(defenderForServers, (value) => value.toMap()),
      'description': description,
      'mdeAutoProvisioning': ?pulumi.Input.mapOptionalInputValue<DefenderForServersGcpOfferingResponseMdeAutoProvisioning, Map<String, dynamic>>(mdeAutoProvisioning, (value) => value.toMap()),
      'offeringType': offeringType,
      'subPlan': ?pulumi.Input.mapOptionalInputValue<DefenderForServersGcpOfferingResponseSubPlan, Map<String, dynamic>>(subPlan, (value) => value.toMap()),
      'vaAutoProvisioning': ?pulumi.Input.mapOptionalInputValue<DefenderForServersGcpOfferingResponseVaAutoProvisioning, Map<String, dynamic>>(vaAutoProvisioning, (value) => value.toMap()),
      'vmScanners': ?pulumi.Input.mapOptionalInputValue<DefenderForServersGcpOfferingResponseVmScanners, Map<String, dynamic>>(vmScanners, (value) => value.toMap()),
    };
  }

  factory DefenderForServersGcpOfferingResponse.fromMap(Map<String, dynamic> map) {
    return DefenderForServersGcpOfferingResponse(
      arcAutoProvisioning: map['arcAutoProvisioning'] == null ? null : (DefenderForServersGcpOfferingResponseArcAutoProvisioning.fromMap((map['arcAutoProvisioning'] as Map).cast<String, dynamic>())).input(),
      defenderForServers: map['defenderForServers'] == null ? null : (DefenderForServersGcpOfferingResponseDefenderForServers.fromMap((map['defenderForServers'] as Map).cast<String, dynamic>())).input(),
      description: (map['description'] as String).input(),
      mdeAutoProvisioning: map['mdeAutoProvisioning'] == null ? null : (DefenderForServersGcpOfferingResponseMdeAutoProvisioning.fromMap((map['mdeAutoProvisioning'] as Map).cast<String, dynamic>())).input(),
      offeringType: (map['offeringType'] as String).input(),
      subPlan: map['subPlan'] == null ? null : (DefenderForServersGcpOfferingResponseSubPlan.fromMap((map['subPlan'] as Map).cast<String, dynamic>())).input(),
      vaAutoProvisioning: map['vaAutoProvisioning'] == null ? null : (DefenderForServersGcpOfferingResponseVaAutoProvisioning.fromMap((map['vaAutoProvisioning'] as Map).cast<String, dynamic>())).input(),
      vmScanners: map['vmScanners'] == null ? null : (DefenderForServersGcpOfferingResponseVmScanners.fromMap((map['vmScanners'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

