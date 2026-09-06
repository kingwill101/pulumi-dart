// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'defender_for_servers_gcp_offering_arc_auto_provisioning_response.dart';
import 'defender_for_servers_gcp_offering_defender_for_servers_response.dart';
import 'defender_for_servers_gcp_offering_mde_auto_provisioning_response.dart';
import 'defender_for_servers_gcp_offering_sub_plan_response.dart';
import 'defender_for_servers_gcp_offering_va_auto_provisioning_response.dart';
import 'defender_for_servers_gcp_offering_vm_scanners_response.dart';

/// The Defender for Servers GCP offering configurations
class DefenderForServersGcpOfferingResponse {
  /// The ARC autoprovisioning configuration
  final pulumi.Input<DefenderForServersGcpOfferingArcAutoProvisioningResponse?>? arcAutoProvisioning;
  /// The Defender for servers connection configuration
  final pulumi.Input<DefenderForServersGcpOfferingDefenderForServersResponse?>? defenderForServers;
  /// The offering description.
  final pulumi.Input<String> description;
  /// The Microsoft Defender for Endpoint autoprovisioning configuration
  final pulumi.Input<DefenderForServersGcpOfferingMdeAutoProvisioningResponse?>? mdeAutoProvisioning;
  /// The type of the security offering.
  /// Expected value is 'DefenderForServersGcp'.
  final pulumi.Input<String> offeringType;
  /// configuration for the servers offering subPlan
  final pulumi.Input<DefenderForServersGcpOfferingSubPlanResponse?>? subPlan;
  /// The Vulnerability Assessment autoprovisioning configuration
  final pulumi.Input<DefenderForServersGcpOfferingVaAutoProvisioningResponse?>? vaAutoProvisioning;
  /// The Microsoft Defender for Server VM scanning configuration
  final pulumi.Input<DefenderForServersGcpOfferingVmScannersResponse?>? vmScanners;

  /// Creates a new [DefenderForServersGcpOfferingResponse].
  /// [arcAutoProvisioning] The ARC autoprovisioning configuration
  /// [defenderForServers] The Defender for servers connection configuration
  /// [description] The offering description.
  /// [mdeAutoProvisioning] The Microsoft Defender for Endpoint autoprovisioning configuration
  /// [offeringType] The type of the security offering.
  /// [subPlan] configuration for the servers offering subPlan
  /// [vaAutoProvisioning] The Vulnerability Assessment autoprovisioning configuration
  /// [vmScanners] The Microsoft Defender for Server VM scanning configuration
  const DefenderForServersGcpOfferingResponse({
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
      'arcAutoProvisioning': ?pulumi.Input.mapOptionalInputValue<DefenderForServersGcpOfferingArcAutoProvisioningResponse, Map<String, dynamic>>(arcAutoProvisioning, (value) => value.toMap()),
      'defenderForServers': ?pulumi.Input.mapOptionalInputValue<DefenderForServersGcpOfferingDefenderForServersResponse, Map<String, dynamic>>(defenderForServers, (value) => value.toMap()),
      'description': description,
      'mdeAutoProvisioning': ?pulumi.Input.mapOptionalInputValue<DefenderForServersGcpOfferingMdeAutoProvisioningResponse, Map<String, dynamic>>(mdeAutoProvisioning, (value) => value.toMap()),
      'offeringType': offeringType,
      'subPlan': ?pulumi.Input.mapOptionalInputValue<DefenderForServersGcpOfferingSubPlanResponse, Map<String, dynamic>>(subPlan, (value) => value.toMap()),
      'vaAutoProvisioning': ?pulumi.Input.mapOptionalInputValue<DefenderForServersGcpOfferingVaAutoProvisioningResponse, Map<String, dynamic>>(vaAutoProvisioning, (value) => value.toMap()),
      'vmScanners': ?pulumi.Input.mapOptionalInputValue<DefenderForServersGcpOfferingVmScannersResponse, Map<String, dynamic>>(vmScanners, (value) => value.toMap()),
    };
  }

  factory DefenderForServersGcpOfferingResponse.fromMap(Map<String, dynamic> map) {
    return DefenderForServersGcpOfferingResponse(
      arcAutoProvisioning: (() { final guardedValue = map['arcAutoProvisioning']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DefenderForServersGcpOfferingArcAutoProvisioningResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      defenderForServers: (() { final guardedValue = map['defenderForServers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DefenderForServersGcpOfferingDefenderForServersResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      description: pulumi.Input.fromValue(map['description'] as String),
      mdeAutoProvisioning: (() { final guardedValue = map['mdeAutoProvisioning']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DefenderForServersGcpOfferingMdeAutoProvisioningResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      offeringType: pulumi.Input.fromValue(map['offeringType'] as String),
      subPlan: (() { final guardedValue = map['subPlan']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DefenderForServersGcpOfferingSubPlanResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vaAutoProvisioning: (() { final guardedValue = map['vaAutoProvisioning']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DefenderForServersGcpOfferingVaAutoProvisioningResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vmScanners: (() { final guardedValue = map['vmScanners']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DefenderForServersGcpOfferingVmScannersResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
