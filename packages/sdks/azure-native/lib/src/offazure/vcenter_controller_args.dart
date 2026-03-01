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
    pulumi.Output<String>? fqdn,
    pulumi.Output<String>? friendlyName,
    pulumi.Output<String>? port,
    pulumi.Output<String>? provisioningState,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? runAsAccountId,
    required pulumi.Output<String> siteName,
    pulumi.Output<String>? vcenterName,
  }) :
      fqdn = pulumi.Input.asOptionalInput<String>(fqdn),
      friendlyName = pulumi.Input.asOptionalInput<String>(friendlyName),
      port = pulumi.Input.asOptionalInput<String>(port),
      provisioningState = pulumi.Input.asOptionalInput<String>(provisioningState),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      runAsAccountId = pulumi.Input.asOptionalInput<String>(runAsAccountId),
      siteName = pulumi.Input.asInput<String>(siteName),
      vcenterName = pulumi.Input.asOptionalInput<String>(vcenterName);

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
      fqdn: map['fqdn'] == null ? null : pulumi.Output.create<String>(map['fqdn'] as String),
      friendlyName: map['friendlyName'] == null ? null : pulumi.Output.create<String>(map['friendlyName'] as String),
      port: map['port'] == null ? null : pulumi.Output.create<String>(map['port'] as String),
      provisioningState: map['provisioningState'] == null ? null : pulumi.Output.create<String>(map['provisioningState'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      runAsAccountId: map['runAsAccountId'] == null ? null : pulumi.Output.create<String>(map['runAsAccountId'] as String),
      siteName: pulumi.Output.create<String>(map['siteName'] as String),
      vcenterName: map['vcenterName'] == null ? null : pulumi.Output.create<String>(map['vcenterName'] as String),
    );
  }
}

