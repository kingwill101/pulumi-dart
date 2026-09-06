// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_offazure_hyperv_host_controller_args_doc}
/// The set of arguments for HypervHostController.
/// {@endtemplate}
/// {@macro pulumi_offazure_hyperv_host_controller_args_doc}
class HypervHostControllerArgs {
  /// Gets or sets the FQDN/IPAddress of the Hyper-V host.
  final pulumi.Input<String?>? fqdn;
  /// Host name
  final pulumi.Input<String?>? hostName;
  /// The status of the last operation.
  final pulumi.Input<dynamic>? provisioningState;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Gets or sets the run as account ID of the Hyper-V host.
  final pulumi.Input<String?>? runAsAccountId;
  /// Site name
  final pulumi.Input<String> siteName;

  /// Creates a new [HypervHostControllerArgs].
  /// [fqdn] Gets or sets the FQDN/IPAddress of the Hyper-V host.
  /// [hostName] Host name
  /// [provisioningState] The status of the last operation.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [runAsAccountId] Gets or sets the run as account ID of the Hyper-V host.
  /// [siteName] Site name
  const HypervHostControllerArgs({
    this.fqdn,
    this.hostName,
    this.provisioningState,
    required this.resourceGroupName,
    this.runAsAccountId,
    required this.siteName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fqdn': ?fqdn,
      'hostName': ?hostName,
      'provisioningState': ?provisioningState,
      'resourceGroupName': resourceGroupName,
      'runAsAccountId': ?runAsAccountId,
      'siteName': siteName,
    };
  }

  factory HypervHostControllerArgs.fromMap(Map<String, dynamic> map) {
    return HypervHostControllerArgs(
      fqdn: (() { final guardedValue = map['fqdn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hostName: (() { final guardedValue = map['hostName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      runAsAccountId: (() { final guardedValue = map['runAsAccountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      siteName: pulumi.Input.fromValue(map['siteName'] as String),
    );
  }
}
