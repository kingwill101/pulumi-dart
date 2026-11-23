// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_action_gateway_provider_credential_get_action_gateway_provider_credential_args_doc}
/// Arguments for getActionGatewayProviderCredential.
/// {@endtemplate}
/// {@macro pulumi_index_get_action_gateway_provider_credential_get_action_gateway_provider_credential_args_doc}
class GetActionGatewayProviderCredentialArgs {
  /// The label of the credential.
  final pulumi.Input<String?>? displayName;
  /// The ID of the provider credential.
  final pulumi.Input<String?>? id;
  /// and `displayName` - (Optional) The slug of the credential's tool provider and the credential's label. Both must be set. The label is matched ignoring case.
  final pulumi.Input<String?>? toolProvider;

  /// Creates a new [GetActionGatewayProviderCredentialArgs].
  /// [displayName] The label of the credential.
  /// [id] The ID of the provider credential.
  /// [toolProvider] and `displayName` - (Optional) The slug of the credential's tool provider and the credential's label. Both must be set. The label is matched ignoring case.
  const GetActionGatewayProviderCredentialArgs({
    this.displayName,
    this.id,
    this.toolProvider,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'id': ?id,
      'toolProvider': ?toolProvider,
    };
  }

  factory GetActionGatewayProviderCredentialArgs.fromMap(Map<String, dynamic> map) {
    return GetActionGatewayProviderCredentialArgs(
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      toolProvider: (() { final guardedValue = map['toolProvider']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
