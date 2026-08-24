// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_sso_connectors_result_verification.dart';

class GetSsoConnectorsResult {
  /// Timestamp for the creation of the SSO connector
  final pulumi.Input<String> createdOn;
  final pulumi.Input<String> emailDomain;
  final pulumi.Input<bool> enabled;
  /// SSO Connector identifier tag.
  final pulumi.Input<String> id;
  /// Timestamp for the last update of the SSO connector
  final pulumi.Input<String> updatedOn;
  /// Controls the display of FedRAMP language to the user during SSO login
  final pulumi.Input<bool> useFedrampLanguage;
  final pulumi.Input<GetSsoConnectorsResultVerification> verification;

  /// Creates a new [GetSsoConnectorsResult].
  /// [createdOn] Timestamp for the creation of the SSO connector
  /// [emailDomain] Required.
  /// [enabled] Required.
  /// [id] SSO Connector identifier tag.
  /// [updatedOn] Timestamp for the last update of the SSO connector
  /// [useFedrampLanguage] Controls the display of FedRAMP language to the user during SSO login
  /// [verification] Required.
  const GetSsoConnectorsResult({
    required this.createdOn,
    required this.emailDomain,
    required this.enabled,
    required this.id,
    required this.updatedOn,
    required this.useFedrampLanguage,
    required this.verification,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdOn': createdOn,
      'emailDomain': emailDomain,
      'enabled': enabled,
      'id': id,
      'updatedOn': updatedOn,
      'useFedrampLanguage': useFedrampLanguage,
      'verification': pulumi.Input.mapInputValue<GetSsoConnectorsResultVerification, Map<String, dynamic>>(verification, (value) => value.toMap()),
    };
  }

  factory GetSsoConnectorsResult.fromMap(Map<String, dynamic> map) {
    return GetSsoConnectorsResult(
      createdOn: pulumi.Input.fromValue(map['createdOn'] as String),
      emailDomain: pulumi.Input.fromValue(map['emailDomain'] as String),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      id: pulumi.Input.fromValue(map['id'] as String),
      updatedOn: pulumi.Input.fromValue(map['updatedOn'] as String),
      useFedrampLanguage: pulumi.Input.fromValue(map['useFedrampLanguage'] as bool),
      verification: pulumi.Input.fromValue(GetSsoConnectorsResultVerification.fromMap((map['verification']! as Map).cast<String, dynamic>())),
    );
  }
}
