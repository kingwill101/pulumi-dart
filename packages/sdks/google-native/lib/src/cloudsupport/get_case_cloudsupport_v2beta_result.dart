// ignore_for_file: unused_element, unnecessary_cast

import 'actor_response_cloudsupport_v2beta.dart';
import 'case_classification_response_cloudsupport_v2beta.dart';

/// Result data returned by getCase.
class GetCaseCloudsupportV2betaResult {
  /// The issue classification applicable to this case.
  final CaseClassificationResponseCloudsupportV2beta? classification;
  /// A user-supplied email address to send case update notifications for. This should only be used in BYOID flows, where we cannot infer the user's email address directly from their EUCs.
  final String? contactEmail;
  /// The time this case was created.
  final String? createTime;
  /// The user who created the case. Note: The name and email will be obfuscated if the case was created by Google Support.
  final ActorResponseCloudsupportV2beta? creator;
  /// A broad description of the issue.
  final String? description;
  /// The short summary of the issue reported in this case.
  final String? displayName;
  /// Whether the case is currently escalated.
  final bool? escalated;
  /// The language the user has requested to receive support in. This should be a BCP 47 language code (e.g., `"en"`, `"zh-CN"`, `"zh-TW"`, `"ja"`, `"ko"`). If no language or an unsupported language is specified, this field defaults to English (en). Language selection during case creation may affect your available support options. For a list of supported languages and their support working hours, see: https://cloud.google.com/support/docs/language-working-hours
  final String? languageCode;
  /// The resource name for the case.
  final String? name;
  /// The priority of this case.
  final String? priority;
  /// REMOVED. The severity of this case. Use priority instead.
  final String? severity;
  /// The current status of the support case.
  final String? state;
  /// The email addresses to receive updates on this case.
  final List<String>? subscriberEmailAddresses;
  /// Whether this case was created for internal API testing and should not be acted on by the support team.
  final bool? testCase;
  /// The timezone of the user who created the support case. It should be in a format IANA recognizes: https://www.iana.org/time-zones. There is no additional validation done by the API.
  final String? timeZone;
  /// The time this case was last updated.
  final String? updateTime;

  /// Creates a new [GetCaseCloudsupportV2betaResult].
  /// [classification] The issue classification applicable to this case.
  /// [contactEmail] A user-supplied email address to send case update notifications for. This should only be used in BYOID flows, where we cannot infer the user's email address directly from their EUCs.
  /// [createTime] The time this case was created.
  /// [creator] The user who created the case. Note: The name and email will be obfuscated if the case was created by Google Support.
  /// [description] A broad description of the issue.
  /// [displayName] The short summary of the issue reported in this case.
  /// [escalated] Whether the case is currently escalated.
  /// [languageCode] The language the user has requested to receive support in. This should be a BCP 47 language code (e.g., `"en"`, `"zh-CN"`, `"zh-TW"`, `"ja"`, `"ko"`). If no language or an unsupported language is specified, this field defaults to English (en). Language selection during case creation may affect your available support options. For a list of supported languages and their support working hours, see: https://cloud.google.com/support/docs/language-working-hours
  /// [name] The resource name for the case.
  /// [priority] The priority of this case.
  /// [severity] REMOVED. The severity of this case. Use priority instead.
  /// [state] The current status of the support case.
  /// [subscriberEmailAddresses] The email addresses to receive updates on this case.
  /// [testCase] Whether this case was created for internal API testing and should not be acted on by the support team.
  /// [timeZone] The timezone of the user who created the support case. It should be in a format IANA recognizes: https://www.iana.org/time-zones. There is no additional validation done by the API.
  /// [updateTime] The time this case was last updated.
  const GetCaseCloudsupportV2betaResult({
    this.classification,
    this.contactEmail,
    this.createTime,
    this.creator,
    this.description,
    this.displayName,
    this.escalated,
    this.languageCode,
    this.name,
    this.priority,
    this.severity,
    this.state,
    this.subscriberEmailAddresses,
    this.testCase,
    this.timeZone,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'classification': ?classification?.toMap(),
      'contactEmail': ?contactEmail,
      'createTime': ?createTime,
      'creator': ?creator?.toMap(),
      'description': ?description,
      'displayName': ?displayName,
      'escalated': ?escalated,
      'languageCode': ?languageCode,
      'name': ?name,
      'priority': ?priority,
      'severity': ?severity,
      'state': ?state,
      'subscriberEmailAddresses': ?subscriberEmailAddresses,
      'testCase': ?testCase,
      'timeZone': ?timeZone,
      'updateTime': ?updateTime,
    };
  }

  factory GetCaseCloudsupportV2betaResult.fromMap(Map<String, dynamic> map) {
    return GetCaseCloudsupportV2betaResult(
      classification: (() { final guardedValue = map['classification']; if (guardedValue == null) return null; return CaseClassificationResponseCloudsupportV2beta.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      contactEmail: (() { final guardedValue = map['contactEmail']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      creator: (() { final guardedValue = map['creator']; if (guardedValue == null) return null; return ActorResponseCloudsupportV2beta.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      escalated: (() { final guardedValue = map['escalated']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      languageCode: (() { final guardedValue = map['languageCode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      priority: (() { final guardedValue = map['priority']; if (guardedValue == null) return null; return guardedValue as String; })(),
      severity: (() { final guardedValue = map['severity']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      subscriberEmailAddresses: (() { final guardedValue = map['subscriberEmailAddresses']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      testCase: (() { final guardedValue = map['testCase']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      timeZone: (() { final guardedValue = map['timeZone']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
