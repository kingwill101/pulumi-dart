// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_sso_connector_sso_connector_args_doc}
/// The set of arguments for SsoConnector.
/// {@endtemplate}
/// {@macro pulumi_index_sso_connector_sso_connector_args_doc}
class SsoConnectorArgs {
  /// Account identifier tag.
  final pulumi.Input<String> accountId;
  /// Begin the verification process after creation
  final pulumi.Input<bool?>? beginVerification;
  /// Email domain of the new SSO connector
  final pulumi.Input<String> emailDomain;
  /// SSO Connector enabled state
  final pulumi.Input<bool?>? enabled;
  /// Controls the display of FedRAMP language to the user during SSO login
  final pulumi.Input<bool?>? useFedrampLanguage;

  /// Creates a new [SsoConnectorArgs].
  /// [accountId] Account identifier tag.
  /// [beginVerification] Begin the verification process after creation
  /// [emailDomain] Email domain of the new SSO connector
  /// [enabled] SSO Connector enabled state
  /// [useFedrampLanguage] Controls the display of FedRAMP language to the user during SSO login
  const SsoConnectorArgs({
    required this.accountId,
    this.beginVerification,
    required this.emailDomain,
    this.enabled,
    this.useFedrampLanguage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'beginVerification': ?beginVerification,
      'emailDomain': emailDomain,
      'enabled': ?enabled,
      'useFedrampLanguage': ?useFedrampLanguage,
    };
  }

  factory SsoConnectorArgs.fromMap(Map<String, dynamic> map) {
    return SsoConnectorArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      beginVerification: (() { final guardedValue = map['beginVerification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      emailDomain: pulumi.Input.fromValue(map['emailDomain'] as String),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      useFedrampLanguage: (() { final guardedValue = map['useFedrampLanguage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
