// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'guest_credential.dart';
import 'http_proxy_configuration.dart';

/// {@template pulumi_scvmm_guest_agent_args_doc}
/// The set of arguments for GuestAgent.
/// {@endtemplate}
/// {@macro pulumi_scvmm_guest_agent_args_doc}
class GuestAgentArgs {
  /// Username / Password Credentials to provision guest agent.
  final pulumi.Input<GuestCredential>? credentials;

  /// Name of the guestAgents.
  final pulumi.Input<String>? guestAgentName;

  /// HTTP Proxy configuration for the VM.
  final pulumi.Input<HttpProxyConfiguration>? httpProxyConfig;

  /// Gets or sets the guest agent provisioning action.
  final pulumi.Input<String>? provisioningAction;

  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Name of the vm.
  final pulumi.Input<String> virtualMachineName;

  /// Creates a new [GuestAgentArgs].
  /// [credentials] Username / Password Credentials to provision guest agent.
  /// [guestAgentName] Name of the guestAgents.
  /// [httpProxyConfig] HTTP Proxy configuration for the VM.
  /// [provisioningAction] Gets or sets the guest agent provisioning action.
  /// [resourceGroupName] The name of the resource group.
  /// [virtualMachineName] Name of the vm.
  GuestAgentArgs({
    this.credentials,
    this.guestAgentName,
    this.httpProxyConfig,
    this.provisioningAction,
    required this.resourceGroupName,
    required this.virtualMachineName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'credentials':
          ?pulumi.Input.mapOptionalInputValue<
            GuestCredential,
            Map<String, dynamic>
          >(credentials, (value) => value.toMap()),
      'guestAgentName': ?guestAgentName,
      'httpProxyConfig':
          ?pulumi.Input.mapOptionalInputValue<
            HttpProxyConfiguration,
            Map<String, dynamic>
          >(httpProxyConfig, (value) => value.toMap()),
      'provisioningAction': ?provisioningAction,
      'resourceGroupName': resourceGroupName,
      'virtualMachineName': virtualMachineName,
    };
  }

  factory GuestAgentArgs.fromMap(Map<String, dynamic> map) {
    return GuestAgentArgs(
      credentials: (() {
        final guardedValue = map['credentials'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GuestCredential.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      guestAgentName: (() {
        final guardedValue = map['guestAgentName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      httpProxyConfig: (() {
        final guardedValue = map['httpProxyConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          HttpProxyConfiguration.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      provisioningAction: (() {
        final guardedValue = map['provisioningAction'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      virtualMachineName: pulumi.Input.fromValue(
        map['virtualMachineName'] as String,
      ),
    );
  }
}
