// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'defender_for_servers_gcp_offering_arc_auto_provisioning.dart';
import 'defender_for_servers_gcp_offering_defender_for_servers.dart';
import 'defender_for_servers_gcp_offering_mde_auto_provisioning.dart';
import 'defender_for_servers_gcp_offering_sub_plan.dart';
import 'defender_for_servers_gcp_offering_va_auto_provisioning.dart';
import 'defender_for_servers_gcp_offering_vm_scanners.dart';

/// The Defender for Servers GCP offering configurations
class DefenderForServersGcpOffering {
  /// The ARC autoprovisioning configuration
  final pulumi.Input<DefenderForServersGcpOfferingArcAutoProvisioning>? arcAutoProvisioning;
  /// The Defender for servers connection configuration
  final pulumi.Input<DefenderForServersGcpOfferingDefenderForServers>? defenderForServers;
  /// The Microsoft Defender for Endpoint autoprovisioning configuration
  final pulumi.Input<DefenderForServersGcpOfferingMdeAutoProvisioning>? mdeAutoProvisioning;
  /// The type of the security offering.
  /// Expected value is 'DefenderForServersGcp'.
  final pulumi.Input<String> offeringType;
  /// configuration for the servers offering subPlan
  final pulumi.Input<DefenderForServersGcpOfferingSubPlan>? subPlan;
  /// The Vulnerability Assessment autoprovisioning configuration
  final pulumi.Input<DefenderForServersGcpOfferingVaAutoProvisioning>? vaAutoProvisioning;
  /// The Microsoft Defender for Server VM scanning configuration
  final pulumi.Input<DefenderForServersGcpOfferingVmScanners>? vmScanners;

  /// Creates a new [DefenderForServersGcpOffering].
  /// [arcAutoProvisioning] The ARC autoprovisioning configuration
  /// [defenderForServers] The Defender for servers connection configuration
  /// [mdeAutoProvisioning] The Microsoft Defender for Endpoint autoprovisioning configuration
  /// [offeringType] The type of the security offering.
  /// [subPlan] configuration for the servers offering subPlan
  /// [vaAutoProvisioning] The Vulnerability Assessment autoprovisioning configuration
  /// [vmScanners] The Microsoft Defender for Server VM scanning configuration
  DefenderForServersGcpOffering({
    this.arcAutoProvisioning,
    this.defenderForServers,
    this.mdeAutoProvisioning,
    required this.offeringType,
    this.subPlan,
    this.vaAutoProvisioning,
    this.vmScanners,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arcAutoProvisioning': ?pulumi.Input.mapOptionalInputValue<DefenderForServersGcpOfferingArcAutoProvisioning, Map<String, dynamic>>(arcAutoProvisioning, (value) => value.toMap()),
      'defenderForServers': ?pulumi.Input.mapOptionalInputValue<DefenderForServersGcpOfferingDefenderForServers, Map<String, dynamic>>(defenderForServers, (value) => value.toMap()),
      'mdeAutoProvisioning': ?pulumi.Input.mapOptionalInputValue<DefenderForServersGcpOfferingMdeAutoProvisioning, Map<String, dynamic>>(mdeAutoProvisioning, (value) => value.toMap()),
      'offeringType': offeringType,
      'subPlan': ?pulumi.Input.mapOptionalInputValue<DefenderForServersGcpOfferingSubPlan, Map<String, dynamic>>(subPlan, (value) => value.toMap()),
      'vaAutoProvisioning': ?pulumi.Input.mapOptionalInputValue<DefenderForServersGcpOfferingVaAutoProvisioning, Map<String, dynamic>>(vaAutoProvisioning, (value) => value.toMap()),
      'vmScanners': ?pulumi.Input.mapOptionalInputValue<DefenderForServersGcpOfferingVmScanners, Map<String, dynamic>>(vmScanners, (value) => value.toMap()),
    };
  }

  factory DefenderForServersGcpOffering.fromMap(Map<String, dynamic> map) {
    return DefenderForServersGcpOffering(
      arcAutoProvisioning: map['arcAutoProvisioning'] == null ? null : (DefenderForServersGcpOfferingArcAutoProvisioning.fromMap((map['arcAutoProvisioning'] as Map).cast<String, dynamic>())).input(),
      defenderForServers: map['defenderForServers'] == null ? null : (DefenderForServersGcpOfferingDefenderForServers.fromMap((map['defenderForServers'] as Map).cast<String, dynamic>())).input(),
      mdeAutoProvisioning: map['mdeAutoProvisioning'] == null ? null : (DefenderForServersGcpOfferingMdeAutoProvisioning.fromMap((map['mdeAutoProvisioning'] as Map).cast<String, dynamic>())).input(),
      offeringType: (map['offeringType'] as String).input(),
      subPlan: map['subPlan'] == null ? null : (DefenderForServersGcpOfferingSubPlan.fromMap((map['subPlan'] as Map).cast<String, dynamic>())).input(),
      vaAutoProvisioning: map['vaAutoProvisioning'] == null ? null : (DefenderForServersGcpOfferingVaAutoProvisioning.fromMap((map['vaAutoProvisioning'] as Map).cast<String, dynamic>())).input(),
      vmScanners: map['vmScanners'] == null ? null : (DefenderForServersGcpOfferingVmScanners.fromMap((map['vmScanners'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

