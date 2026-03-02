// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'defender_for_servers_aws_offering_arc_auto_provisioning.dart';
import 'defender_for_servers_aws_offering_defender_for_servers.dart';
import 'defender_for_servers_aws_offering_mde_auto_provisioning.dart';
import 'defender_for_servers_aws_offering_sub_plan.dart';
import 'defender_for_servers_aws_offering_va_auto_provisioning.dart';
import 'defender_for_servers_aws_offering_vm_scanners.dart';

/// The Defender for Servers AWS offering
class DefenderForServersAwsOffering {
  /// The ARC autoprovisioning configuration
  final pulumi.Input<DefenderForServersAwsOfferingArcAutoProvisioning>? arcAutoProvisioning;
  /// The Defender for servers connection configuration
  final pulumi.Input<DefenderForServersAwsOfferingDefenderForServers>? defenderForServers;
  /// The Microsoft Defender for Endpoint autoprovisioning configuration
  final pulumi.Input<DefenderForServersAwsOfferingMdeAutoProvisioning>? mdeAutoProvisioning;
  /// The type of the security offering.
  /// Expected value is 'DefenderForServersAws'.
  final pulumi.Input<String> offeringType;
  /// configuration for the servers offering subPlan
  final pulumi.Input<DefenderForServersAwsOfferingSubPlan>? subPlan;
  /// The Vulnerability Assessment autoprovisioning configuration
  final pulumi.Input<DefenderForServersAwsOfferingVaAutoProvisioning>? vaAutoProvisioning;
  /// The Microsoft Defender for Server VM scanning configuration
  final pulumi.Input<DefenderForServersAwsOfferingVmScanners>? vmScanners;

  /// Creates a new [DefenderForServersAwsOffering].
  /// [arcAutoProvisioning] The ARC autoprovisioning configuration
  /// [defenderForServers] The Defender for servers connection configuration
  /// [mdeAutoProvisioning] The Microsoft Defender for Endpoint autoprovisioning configuration
  /// [offeringType] The type of the security offering.
  /// [subPlan] configuration for the servers offering subPlan
  /// [vaAutoProvisioning] The Vulnerability Assessment autoprovisioning configuration
  /// [vmScanners] The Microsoft Defender for Server VM scanning configuration
  DefenderForServersAwsOffering({
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
      'arcAutoProvisioning': ?pulumi.Input.mapOptionalInputValue<DefenderForServersAwsOfferingArcAutoProvisioning, Map<String, dynamic>>(arcAutoProvisioning, (value) => value.toMap()),
      'defenderForServers': ?pulumi.Input.mapOptionalInputValue<DefenderForServersAwsOfferingDefenderForServers, Map<String, dynamic>>(defenderForServers, (value) => value.toMap()),
      'mdeAutoProvisioning': ?pulumi.Input.mapOptionalInputValue<DefenderForServersAwsOfferingMdeAutoProvisioning, Map<String, dynamic>>(mdeAutoProvisioning, (value) => value.toMap()),
      'offeringType': offeringType,
      'subPlan': ?pulumi.Input.mapOptionalInputValue<DefenderForServersAwsOfferingSubPlan, Map<String, dynamic>>(subPlan, (value) => value.toMap()),
      'vaAutoProvisioning': ?pulumi.Input.mapOptionalInputValue<DefenderForServersAwsOfferingVaAutoProvisioning, Map<String, dynamic>>(vaAutoProvisioning, (value) => value.toMap()),
      'vmScanners': ?pulumi.Input.mapOptionalInputValue<DefenderForServersAwsOfferingVmScanners, Map<String, dynamic>>(vmScanners, (value) => value.toMap()),
    };
  }

  factory DefenderForServersAwsOffering.fromMap(Map<String, dynamic> map) {
    return DefenderForServersAwsOffering(
      arcAutoProvisioning: map['arcAutoProvisioning'] == null ? null : (DefenderForServersAwsOfferingArcAutoProvisioning.fromMap((map['arcAutoProvisioning']! as Map).cast<String, dynamic>())).input(),
      defenderForServers: map['defenderForServers'] == null ? null : (DefenderForServersAwsOfferingDefenderForServers.fromMap((map['defenderForServers']! as Map).cast<String, dynamic>())).input(),
      mdeAutoProvisioning: map['mdeAutoProvisioning'] == null ? null : (DefenderForServersAwsOfferingMdeAutoProvisioning.fromMap((map['mdeAutoProvisioning']! as Map).cast<String, dynamic>())).input(),
      offeringType: (map['offeringType'] as String).input(),
      subPlan: map['subPlan'] == null ? null : (DefenderForServersAwsOfferingSubPlan.fromMap((map['subPlan']! as Map).cast<String, dynamic>())).input(),
      vaAutoProvisioning: map['vaAutoProvisioning'] == null ? null : (DefenderForServersAwsOfferingVaAutoProvisioning.fromMap((map['vaAutoProvisioning']! as Map).cast<String, dynamic>())).input(),
      vmScanners: map['vmScanners'] == null ? null : (DefenderForServersAwsOfferingVmScanners.fromMap((map['vmScanners']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

