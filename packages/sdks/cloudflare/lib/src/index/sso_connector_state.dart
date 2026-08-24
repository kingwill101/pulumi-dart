// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sso_connector_verification.dart';

/// Input properties used for looking up and filtering SsoConnector resources.
class SsoConnectorState {
  /// Account identifier tag.
  final pulumi.Input<String?>? accountId;
  /// Begin the verification process after creation
  final pulumi.Input<bool?>? beginVerification;
  /// Timestamp for the creation of the SSO connector
  final pulumi.Input<String?>? createdOn;
  /// Email domain of the new SSO connector
  final pulumi.Input<String?>? emailDomain;
  /// SSO Connector enabled state
  final pulumi.Input<bool?>? enabled;
  /// Timestamp for the last update of the SSO connector
  final pulumi.Input<String?>? updatedOn;
  /// Controls the display of FedRAMP language to the user during SSO login
  final pulumi.Input<bool?>? useFedrampLanguage;
  final pulumi.Input<SsoConnectorVerification?>? verification;

  /// Creates a new [SsoConnectorState].
  /// [accountId] Account identifier tag.
  /// [beginVerification] Begin the verification process after creation
  /// [createdOn] Timestamp for the creation of the SSO connector
  /// [emailDomain] Email domain of the new SSO connector
  /// [enabled] SSO Connector enabled state
  /// [updatedOn] Timestamp for the last update of the SSO connector
  /// [useFedrampLanguage] Controls the display of FedRAMP language to the user during SSO login
  /// [verification] Optional.
  const SsoConnectorState({
    this.accountId,
    this.beginVerification,
    this.createdOn,
    this.emailDomain,
    this.enabled,
    this.updatedOn,
    this.useFedrampLanguage,
    this.verification,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'beginVerification': ?beginVerification,
      'createdOn': ?createdOn,
      'emailDomain': ?emailDomain,
      'enabled': ?enabled,
      'updatedOn': ?updatedOn,
      'useFedrampLanguage': ?useFedrampLanguage,
      'verification': ?pulumi.Input.mapOptionalInputValue<SsoConnectorVerification, Map<String, dynamic>>(verification, (value) => value.toMap()),
    };
  }

  factory SsoConnectorState.fromMap(Map<String, dynamic> map) {
    return SsoConnectorState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      beginVerification: (() { final guardedValue = map['beginVerification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      createdOn: (() { final guardedValue = map['createdOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      emailDomain: (() { final guardedValue = map['emailDomain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      updatedOn: (() { final guardedValue = map['updatedOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      useFedrampLanguage: (() { final guardedValue = map['useFedrampLanguage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      verification: (() { final guardedValue = map['verification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SsoConnectorVerification.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
