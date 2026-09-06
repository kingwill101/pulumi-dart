// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'guest_credential.dart';
import 'http_proxy_configuration.dart';

/// {@template pulumi_scvmm_vminstance_guest_agent_args_doc}
/// The set of arguments for VMInstanceGuestAgent.
/// {@endtemplate}
/// {@macro pulumi_scvmm_vminstance_guest_agent_args_doc}
class VMInstanceGuestAgentArgs {
  /// Username / Password Credentials to provision guest agent.
  final pulumi.Input<GuestCredential?>? credentials;
  /// HTTP Proxy configuration for the VM.
  final pulumi.Input<HttpProxyConfiguration?>? httpProxyConfig;
  /// Gets or sets the guest agent provisioning action.
  final pulumi.Input<dynamic>? provisioningAction;
  /// The fully qualified Azure Resource manager identifier of the Hybrid Compute machine resource to be extended.
  final pulumi.Input<String> resourceUri;

  /// Creates a new [VMInstanceGuestAgentArgs].
  /// [credentials] Username / Password Credentials to provision guest agent.
  /// [httpProxyConfig] HTTP Proxy configuration for the VM.
  /// [provisioningAction] Gets or sets the guest agent provisioning action.
  /// [resourceUri] The fully qualified Azure Resource manager identifier of the Hybrid Compute machine resource to be extended.
  const VMInstanceGuestAgentArgs({
    this.credentials,
    this.httpProxyConfig,
    this.provisioningAction,
    required this.resourceUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'credentials': ?pulumi.Input.mapOptionalInputValue<GuestCredential, Map<String, dynamic>>(credentials, (value) => value.toMap()),
      'httpProxyConfig': ?pulumi.Input.mapOptionalInputValue<HttpProxyConfiguration, Map<String, dynamic>>(httpProxyConfig, (value) => value.toMap()),
      'provisioningAction': ?provisioningAction,
      'resourceUri': resourceUri,
    };
  }

  factory VMInstanceGuestAgentArgs.fromMap(Map<String, dynamic> map) {
    return VMInstanceGuestAgentArgs(
      credentials: (() { final guardedValue = map['credentials']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GuestCredential.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      httpProxyConfig: (() { final guardedValue = map['httpProxyConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HttpProxyConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      provisioningAction: (() { final guardedValue = map['provisioningAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      resourceUri: pulumi.Input.fromValue(map['resourceUri'] as String),
    );
  }
}
