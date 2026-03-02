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
  VcenterControllerArgs({
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
      fqdn: map['fqdn'] == null ? null : (map['fqdn']! as String).input(),
      friendlyName: map['friendlyName'] == null ? null : (map['friendlyName']! as String).input(),
      port: map['port'] == null ? null : (map['port']! as String).input(),
      provisioningState: map['provisioningState'] == null ? null : (map['provisioningState']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      runAsAccountId: map['runAsAccountId'] == null ? null : (map['runAsAccountId']! as String).input(),
      siteName: (map['siteName'] as String).input(),
      vcenterName: map['vcenterName'] == null ? null : (map['vcenterName']! as String).input(),
    );
  }
}

