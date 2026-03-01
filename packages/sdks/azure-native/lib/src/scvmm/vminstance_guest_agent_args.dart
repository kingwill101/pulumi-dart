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
  final pulumi.Input<GuestCredential>? credentials;
  /// HTTP Proxy configuration for the VM.
  final pulumi.Input<HttpProxyConfiguration>? httpProxyConfig;
  /// Gets or sets the guest agent provisioning action.
  final pulumi.Input<String>? provisioningAction;
  /// The fully qualified Azure Resource manager identifier of the Hybrid Compute machine resource to be extended.
  final pulumi.Input<String> resourceUri;

  /// Creates a new [VMInstanceGuestAgentArgs].
  /// [credentials] Username / Password Credentials to provision guest agent.
  /// [httpProxyConfig] HTTP Proxy configuration for the VM.
  /// [provisioningAction] Gets or sets the guest agent provisioning action.
  /// [resourceUri] The fully qualified Azure Resource manager identifier of the Hybrid Compute machine resource to be extended.
  VMInstanceGuestAgentArgs({
    pulumi.Output<GuestCredential>? credentials,
    pulumi.Output<HttpProxyConfiguration>? httpProxyConfig,
    pulumi.Output<String>? provisioningAction,
    required pulumi.Output<String> resourceUri,
  }) :
      credentials = pulumi.Input.asOptionalInput<GuestCredential>(credentials),
      httpProxyConfig = pulumi.Input.asOptionalInput<HttpProxyConfiguration>(httpProxyConfig),
      provisioningAction = pulumi.Input.asOptionalInput<String>(provisioningAction),
      resourceUri = pulumi.Input.asInput<String>(resourceUri);

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
      credentials: map['credentials'] == null ? null : pulumi.Output.create<GuestCredential>(GuestCredential.fromMap((map['credentials'] as Map).cast<String, dynamic>())),
      httpProxyConfig: map['httpProxyConfig'] == null ? null : pulumi.Output.create<HttpProxyConfiguration>(HttpProxyConfiguration.fromMap((map['httpProxyConfig'] as Map).cast<String, dynamic>())),
      provisioningAction: map['provisioningAction'] == null ? null : pulumi.Output.create<String>(map['provisioningAction'] as String),
      resourceUri: pulumi.Output.create<String>(map['resourceUri'] as String),
    );
  }
}

