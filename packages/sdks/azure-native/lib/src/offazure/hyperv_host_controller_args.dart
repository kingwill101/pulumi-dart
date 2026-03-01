// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_offazure_hyperv_host_controller_args_doc}
/// The set of arguments for HypervHostController.
/// {@endtemplate}
/// {@macro pulumi_offazure_hyperv_host_controller_args_doc}
class HypervHostControllerArgs {
  /// Gets or sets the FQDN/IPAddress of the Hyper-V host.
  final pulumi.Input<String>? fqdn;
  /// Host name
  final pulumi.Input<String>? hostName;
  /// The status of the last operation.
  final pulumi.Input<String>? provisioningState;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Gets or sets the run as account ID of the Hyper-V host.
  final pulumi.Input<String>? runAsAccountId;
  /// Site name
  final pulumi.Input<String> siteName;

  /// Creates a new [HypervHostControllerArgs].
  /// [fqdn] Gets or sets the FQDN/IPAddress of the Hyper-V host.
  /// [hostName] Host name
  /// [provisioningState] The status of the last operation.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [runAsAccountId] Gets or sets the run as account ID of the Hyper-V host.
  /// [siteName] Site name
  HypervHostControllerArgs({
    pulumi.Output<String>? fqdn,
    pulumi.Output<String>? hostName,
    pulumi.Output<String>? provisioningState,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? runAsAccountId,
    required pulumi.Output<String> siteName,
  }) :
      fqdn = pulumi.Input.asOptionalInput<String>(fqdn),
      hostName = pulumi.Input.asOptionalInput<String>(hostName),
      provisioningState = pulumi.Input.asOptionalInput<String>(provisioningState),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      runAsAccountId = pulumi.Input.asOptionalInput<String>(runAsAccountId),
      siteName = pulumi.Input.asInput<String>(siteName);

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
      fqdn: map['fqdn'] == null ? null : pulumi.Output.create<String>(map['fqdn'] as String),
      hostName: map['hostName'] == null ? null : pulumi.Output.create<String>(map['hostName'] as String),
      provisioningState: map['provisioningState'] == null ? null : pulumi.Output.create<String>(map['provisioningState'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      runAsAccountId: map['runAsAccountId'] == null ? null : pulumi.Output.create<String>(map['runAsAccountId'] as String),
      siteName: pulumi.Output.create<String>(map['siteName'] as String),
    );
  }
}

