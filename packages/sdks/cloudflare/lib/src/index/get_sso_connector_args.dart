// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_sso_connector_get_sso_connector_args_doc}
/// Arguments for getSsoConnector.
/// {@endtemplate}
/// {@macro pulumi_index_get_sso_connector_get_sso_connector_args_doc}
class GetSsoConnectorArgs {
  /// Account identifier tag.
  final pulumi.Input<String?>? accountId;
  /// SSO Connector identifier tag.
  final pulumi.Input<String> ssoConnectorId;

  /// Creates a new [GetSsoConnectorArgs].
  /// [accountId] Account identifier tag.
  /// [ssoConnectorId] SSO Connector identifier tag.
  const GetSsoConnectorArgs({
    this.accountId,
    required this.ssoConnectorId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'ssoConnectorId': ssoConnectorId,
    };
  }

  factory GetSsoConnectorArgs.fromMap(Map<String, dynamic> map) {
    return GetSsoConnectorArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ssoConnectorId: pulumi.Input.fromValue(map['ssoConnectorId'] as String),
    );
  }
}
