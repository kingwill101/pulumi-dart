// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_offazure_vcenter_controller_args_doc}
/// The set of arguments for VcenterController.
/// {@endtemplate}
/// {@macro pulumi_offazure_vcenter_controller_args_doc}
class VcenterControllerArgs {
  /// Gets or sets the FQDN/IPAddress of the vCenter.
  final pulumi.Input<String>? fqdn;
  /// Gets or sets the friendly name of the vCenter.
  final pulumi.Input<String>? friendlyName;
  /// Gets or sets the port of the vCenter.
  final pulumi.Input<String>? port;
  /// The status of the last operation.
  final pulumi.Input<String>? provisioningState;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Gets or sets the run as account ID of the vCenter.
  final pulumi.Input<String>? runAsAccountId;
  /// Site name
  final pulumi.Input<String> siteName;
  /// VCenters name
  final pulumi.Input<String>? vcenterName;

  /// Creates a new [VcenterControllerArgs].
  /// [fqdn] Gets or sets the FQDN/IPAddress of the vCenter.
  /// [friendlyName] Gets or sets the friendly name of the vCenter.
  /// [port] Gets or sets the port of the vCenter.
  /// [provisioningState] The status of the last operation.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [runAsAccountId] Gets or sets the run as account ID of the vCenter.
  /// [siteName] Site name
  /// [vcenterName] VCenters name
  const VcenterControllerArgs({
    this.fqdn,
    this.friendlyName,
    this.port,
    this.provisioningState,
    required this.resourceGroupName,
    this.runAsAccountId,
    required this.siteName,
    this.vcenterName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fqdn': ?fqdn,
      'friendlyName': ?friendlyName,
      'port': ?port,
      'provisioningState': ?provisioningState,
      'resourceGroupName': resourceGroupName,
      'runAsAccountId': ?runAsAccountId,
      'siteName': siteName,
      'vcenterName': ?vcenterName,
    };
  }

  factory VcenterControllerArgs.fromMap(Map<String, dynamic> map) {
    return VcenterControllerArgs(
      fqdn: (() { final guardedValue = map['fqdn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      friendlyName: (() { final guardedValue = map['friendlyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      runAsAccountId: (() { final guardedValue = map['runAsAccountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      siteName: pulumi.Input.fromValue(map['siteName'] as String),
      vcenterName: (() { final guardedValue = map['vcenterName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

