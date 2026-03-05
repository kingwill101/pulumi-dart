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
      arcAutoProvisioning: (() { final guardedValue = map['arcAutoProvisioning']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DefenderForServersGcpOfferingArcAutoProvisioning.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      defenderForServers: (() { final guardedValue = map['defenderForServers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DefenderForServersGcpOfferingDefenderForServers.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      mdeAutoProvisioning: (() { final guardedValue = map['mdeAutoProvisioning']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DefenderForServersGcpOfferingMdeAutoProvisioning.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      offeringType: pulumi.Input.fromValue(map['offeringType'] as String),
      subPlan: (() { final guardedValue = map['subPlan']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DefenderForServersGcpOfferingSubPlan.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vaAutoProvisioning: (() { final guardedValue = map['vaAutoProvisioning']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DefenderForServersGcpOfferingVaAutoProvisioning.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vmScanners: (() { final guardedValue = map['vmScanners']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DefenderForServersGcpOfferingVmScanners.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

