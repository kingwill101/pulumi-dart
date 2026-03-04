// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'defender_for_servers_aws_offering_response_arc_auto_provisioning.dart';
import 'defender_for_servers_aws_offering_response_defender_for_servers.dart';
import 'defender_for_servers_aws_offering_response_mde_auto_provisioning.dart';
import 'defender_for_servers_aws_offering_response_sub_plan.dart';
import 'defender_for_servers_aws_offering_response_va_auto_provisioning.dart';
import 'defender_for_servers_aws_offering_response_vm_scanners.dart';

/// The Defender for Servers AWS offering
class DefenderForServersAwsOfferingResponse {
  /// The ARC autoprovisioning configuration
  final pulumi.Input<DefenderForServersAwsOfferingResponseArcAutoProvisioning>?
  arcAutoProvisioning;

  /// The Defender for servers connection configuration
  final pulumi.Input<DefenderForServersAwsOfferingResponseDefenderForServers>?
  defenderForServers;

  /// The offering description.
  final pulumi.Input<String> description;

  /// The Microsoft Defender for Endpoint autoprovisioning configuration
  final pulumi.Input<DefenderForServersAwsOfferingResponseMdeAutoProvisioning>?
  mdeAutoProvisioning;

  /// The type of the security offering.
  /// Expected value is 'DefenderForServersAws'.
  final pulumi.Input<String> offeringType;

  /// configuration for the servers offering subPlan
  final pulumi.Input<DefenderForServersAwsOfferingResponseSubPlan>? subPlan;

  /// The Vulnerability Assessment autoprovisioning configuration
  final pulumi.Input<DefenderForServersAwsOfferingResponseVaAutoProvisioning>?
  vaAutoProvisioning;

  /// The Microsoft Defender for Server VM scanning configuration
  final pulumi.Input<DefenderForServersAwsOfferingResponseVmScanners>?
  vmScanners;

  /// Creates a new [DefenderForServersAwsOfferingResponse].
  /// [arcAutoProvisioning] The ARC autoprovisioning configuration
  /// [defenderForServers] The Defender for servers connection configuration
  /// [description] The offering description.
  /// [mdeAutoProvisioning] The Microsoft Defender for Endpoint autoprovisioning configuration
  /// [offeringType] The type of the security offering.
  /// [subPlan] configuration for the servers offering subPlan
  /// [vaAutoProvisioning] The Vulnerability Assessment autoprovisioning configuration
  /// [vmScanners] The Microsoft Defender for Server VM scanning configuration
  DefenderForServersAwsOfferingResponse({
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
      'arcAutoProvisioning':
          ?pulumi.Input.mapOptionalInputValue<
            DefenderForServersAwsOfferingResponseArcAutoProvisioning,
            Map<String, dynamic>
          >(arcAutoProvisioning, (value) => value.toMap()),
      'defenderForServers':
          ?pulumi.Input.mapOptionalInputValue<
            DefenderForServersAwsOfferingResponseDefenderForServers,
            Map<String, dynamic>
          >(defenderForServers, (value) => value.toMap()),
      'description': description,
      'mdeAutoProvisioning':
          ?pulumi.Input.mapOptionalInputValue<
            DefenderForServersAwsOfferingResponseMdeAutoProvisioning,
            Map<String, dynamic>
          >(mdeAutoProvisioning, (value) => value.toMap()),
      'offeringType': offeringType,
      'subPlan':
          ?pulumi.Input.mapOptionalInputValue<
            DefenderForServersAwsOfferingResponseSubPlan,
            Map<String, dynamic>
          >(subPlan, (value) => value.toMap()),
      'vaAutoProvisioning':
          ?pulumi.Input.mapOptionalInputValue<
            DefenderForServersAwsOfferingResponseVaAutoProvisioning,
            Map<String, dynamic>
          >(vaAutoProvisioning, (value) => value.toMap()),
      'vmScanners':
          ?pulumi.Input.mapOptionalInputValue<
            DefenderForServersAwsOfferingResponseVmScanners,
            Map<String, dynamic>
          >(vmScanners, (value) => value.toMap()),
    };
  }

  factory DefenderForServersAwsOfferingResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return DefenderForServersAwsOfferingResponse(
      arcAutoProvisioning: (() {
        final guardedValue = map['arcAutoProvisioning'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DefenderForServersAwsOfferingResponseArcAutoProvisioning.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      defenderForServers: (() {
        final guardedValue = map['defenderForServers'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DefenderForServersAwsOfferingResponseDefenderForServers.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      description: pulumi.Input.fromValue(map['description'] as String),
      mdeAutoProvisioning: (() {
        final guardedValue = map['mdeAutoProvisioning'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DefenderForServersAwsOfferingResponseMdeAutoProvisioning.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      offeringType: pulumi.Input.fromValue(map['offeringType'] as String),
      subPlan: (() {
        final guardedValue = map['subPlan'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DefenderForServersAwsOfferingResponseSubPlan.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      vaAutoProvisioning: (() {
        final guardedValue = map['vaAutoProvisioning'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DefenderForServersAwsOfferingResponseVaAutoProvisioning.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      vmScanners: (() {
        final guardedValue = map['vmScanners'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DefenderForServersAwsOfferingResponseVmScanners.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
