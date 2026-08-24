// ignore_for_file: unused_element, unnecessary_cast

import 'get_sso_connector_verification.dart';

/// Result data returned by getSsoConnector.
class GetSsoConnectorResult {
  /// Account identifier tag.
  final String? accountId;
  /// Timestamp for the creation of the SSO connector
  final String? createdOn;
  final String? emailDomain;
  final bool? enabled;
  /// SSO Connector identifier tag.
  final String? id;
  /// SSO Connector identifier tag.
  final String? ssoConnectorId;
  /// Timestamp for the last update of the SSO connector
  final String? updatedOn;
  /// Controls the display of FedRAMP language to the user during SSO login
  final bool? useFedrampLanguage;
  final GetSsoConnectorVerification? verification;

  /// Creates a new [GetSsoConnectorResult].
  /// [accountId] Account identifier tag.
  /// [createdOn] Timestamp for the creation of the SSO connector
  /// [emailDomain] Optional.
  /// [enabled] Optional.
  /// [id] SSO Connector identifier tag.
  /// [ssoConnectorId] SSO Connector identifier tag.
  /// [updatedOn] Timestamp for the last update of the SSO connector
  /// [useFedrampLanguage] Controls the display of FedRAMP language to the user during SSO login
  /// [verification] Optional.
  const GetSsoConnectorResult({
    this.accountId,
    this.createdOn,
    this.emailDomain,
    this.enabled,
    this.id,
    this.ssoConnectorId,
    this.updatedOn,
    this.useFedrampLanguage,
    this.verification,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'createdOn': ?createdOn,
      'emailDomain': ?emailDomain,
      'enabled': ?enabled,
      'id': ?id,
      'ssoConnectorId': ?ssoConnectorId,
      'updatedOn': ?updatedOn,
      'useFedrampLanguage': ?useFedrampLanguage,
      'verification': ?verification?.toMap(),
    };
  }

  factory GetSsoConnectorResult.fromMap(Map<String, dynamic> map) {
    return GetSsoConnectorResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdOn: (() { final guardedValue = map['createdOn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      emailDomain: (() { final guardedValue = map['emailDomain']; if (guardedValue == null) return null; return guardedValue as String; })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ssoConnectorId: (() { final guardedValue = map['ssoConnectorId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updatedOn: (() { final guardedValue = map['updatedOn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      useFedrampLanguage: (() { final guardedValue = map['useFedrampLanguage']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      verification: (() { final guardedValue = map['verification']; if (guardedValue == null) return null; return GetSsoConnectorVerification.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}
