// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'defender_for_servers_aws_offering_arc_auto_provisioning_response.dart';
import 'defender_for_servers_aws_offering_defender_for_servers_response.dart';
import 'defender_for_servers_aws_offering_mde_auto_provisioning_response.dart';
import 'defender_for_servers_aws_offering_sub_plan_response.dart';
import 'defender_for_servers_aws_offering_va_auto_provisioning_response.dart';
import 'defender_for_servers_aws_offering_vm_scanners_response.dart';

/// The Defender for Servers AWS offering
class DefenderForServersAwsOfferingResponse {
  /// The ARC autoprovisioning configuration
  final pulumi.Input<DefenderForServersAwsOfferingArcAutoProvisioningResponse>? arcAutoProvisioning;
  /// The Defender for servers connection configuration
  final pulumi.Input<DefenderForServersAwsOfferingDefenderForServersResponse>? defenderForServers;
  /// The offering description.
  final pulumi.Input<String> description;
  /// The Microsoft Defender for Endpoint autoprovisioning configuration
  final pulumi.Input<DefenderForServersAwsOfferingMdeAutoProvisioningResponse>? mdeAutoProvisioning;
  /// The type of the security offering.
  /// Expected value is 'DefenderForServersAws'.
  final pulumi.Input<String> offeringType;
  /// configuration for the servers offering subPlan
  final pulumi.Input<DefenderForServersAwsOfferingSubPlanResponse>? subPlan;
  /// The Vulnerability Assessment autoprovisioning configuration
  final pulumi.Input<DefenderForServersAwsOfferingVaAutoProvisioningResponse>? vaAutoProvisioning;
  /// The Microsoft Defender for Server VM scanning configuration
  final pulumi.Input<DefenderForServersAwsOfferingVmScannersResponse>? vmScanners;

  /// Creates a new [DefenderForServersAwsOfferingResponse].
  /// [arcAutoProvisioning] The ARC autoprovisioning configuration
  /// [defenderForServers] The Defender for servers connection configuration
  /// [description] The offering description.
  /// [mdeAutoProvisioning] The Microsoft Defender for Endpoint autoprovisioning configuration
  /// [offeringType] The type of the security offering.
  /// [subPlan] configuration for the servers offering subPlan
  /// [vaAutoProvisioning] The Vulnerability Assessment autoprovisioning configuration
  /// [vmScanners] The Microsoft Defender for Server VM scanning configuration
  const DefenderForServersAwsOfferingResponse({
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
      'arcAutoProvisioning': ?pulumi.Input.mapOptionalInputValue<DefenderForServersAwsOfferingArcAutoProvisioningResponse, Map<String, dynamic>>(arcAutoProvisioning, (value) => value.toMap()),
      'defenderForServers': ?pulumi.Input.mapOptionalInputValue<DefenderForServersAwsOfferingDefenderForServersResponse, Map<String, dynamic>>(defenderForServers, (value) => value.toMap()),
      'description': description,
      'mdeAutoProvisioning': ?pulumi.Input.mapOptionalInputValue<DefenderForServersAwsOfferingMdeAutoProvisioningResponse, Map<String, dynamic>>(mdeAutoProvisioning, (value) => value.toMap()),
      'offeringType': offeringType,
      'subPlan': ?pulumi.Input.mapOptionalInputValue<DefenderForServersAwsOfferingSubPlanResponse, Map<String, dynamic>>(subPlan, (value) => value.toMap()),
      'vaAutoProvisioning': ?pulumi.Input.mapOptionalInputValue<DefenderForServersAwsOfferingVaAutoProvisioningResponse, Map<String, dynamic>>(vaAutoProvisioning, (value) => value.toMap()),
      'vmScanners': ?pulumi.Input.mapOptionalInputValue<DefenderForServersAwsOfferingVmScannersResponse, Map<String, dynamic>>(vmScanners, (value) => value.toMap()),
    };
  }

  factory DefenderForServersAwsOfferingResponse.fromMap(Map<String, dynamic> map) {
    return DefenderForServersAwsOfferingResponse(
      arcAutoProvisioning: (() { final guardedValue = map['arcAutoProvisioning']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DefenderForServersAwsOfferingArcAutoProvisioningResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      defenderForServers: (() { final guardedValue = map['defenderForServers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DefenderForServersAwsOfferingDefenderForServersResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      description: pulumi.Input.fromValue(map['description'] as String),
      mdeAutoProvisioning: (() { final guardedValue = map['mdeAutoProvisioning']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DefenderForServersAwsOfferingMdeAutoProvisioningResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      offeringType: pulumi.Input.fromValue(map['offeringType'] as String),
      subPlan: (() { final guardedValue = map['subPlan']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DefenderForServersAwsOfferingSubPlanResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vaAutoProvisioning: (() { final guardedValue = map['vaAutoProvisioning']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DefenderForServersAwsOfferingVaAutoProvisioningResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vmScanners: (() { final guardedValue = map['vmScanners']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DefenderForServersAwsOfferingVmScannersResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
