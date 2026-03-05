// ignore_for_file: unused_element, unnecessary_cast

import 'actor_response.dart';
import 'case_classification_response.dart';

/// Result data returned by getCase.
class GetCaseResult {
  /// The issue classification applicable to this case.
  final CaseClassificationResponse classification;
  /// A user-supplied email address to send case update notifications for. This should only be used in BYOID flows, where we cannot infer the user's email address directly from their EUCs.
  final String contactEmail;
  /// The time this case was created.
  final String createTime;
  /// The user who created the case. Note: The name and email will be obfuscated if the case was created by Google Support.
  final ActorResponse creator;
  /// A broad description of the issue.
  final String description;
  /// The short summary of the issue reported in this case.
  final String displayName;
  /// Whether the case is currently escalated.
  final bool escalated;
  /// The language the user has requested to receive support in. This should be a BCP 47 language code (e.g., `"en"`, `"zh-CN"`, `"zh-TW"`, `"ja"`, `"ko"`). If no language or an unsupported language is specified, this field defaults to English (en). Language selection during case creation may affect your available support options. For a list of supported languages and their support working hours, see: https://cloud.google.com/support/docs/language-working-hours
  final String languageCode;
  /// The resource name for the case.
  final String name;
  /// The priority of this case.
  final String priority;
  /// The current status of the support case.
  final String state;
  /// The email addresses to receive updates on this case.
  final List<String> subscriberEmailAddresses;
  /// Whether this case was created for internal API testing and should not be acted on by the support team.
  final bool testCase;
  /// The timezone of the user who created the support case. It should be in a format IANA recognizes: https://www.iana.org/time-zones. There is no additional validation done by the API.
  final String timeZone;
  /// The time this case was last updated.
  final String updateTime;

  /// Creates a new [GetCaseResult].
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
  /// [state] The current status of the support case.
  /// [subscriberEmailAddresses] The email addresses to receive updates on this case.
  /// [testCase] Whether this case was created for internal API testing and should not be acted on by the support team.
  /// [timeZone] The timezone of the user who created the support case. It should be in a format IANA recognizes: https://www.iana.org/time-zones. There is no additional validation done by the API.
  /// [updateTime] The time this case was last updated.
  GetCaseResult({
    required this.classification,
    required this.contactEmail,
    required this.createTime,
    required this.creator,
    required this.description,
    required this.displayName,
    required this.escalated,
    required this.languageCode,
    required this.name,
    required this.priority,
    required this.state,
    required this.subscriberEmailAddresses,
    required this.testCase,
    required this.timeZone,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'classification': classification.toMap(),
      'contactEmail': contactEmail,
      'createTime': createTime,
      'creator': creator.toMap(),
      'description': description,
      'displayName': displayName,
      'escalated': escalated,
      'languageCode': languageCode,
      'name': name,
      'priority': priority,
      'state': state,
      'subscriberEmailAddresses': subscriberEmailAddresses,
      'testCase': testCase,
      'timeZone': timeZone,
      'updateTime': updateTime,
    };
  }

  factory GetCaseResult.fromMap(Map<String, dynamic> map) {
    return GetCaseResult(
      classification: CaseClassificationResponse.fromMap((map['classification']! as Map).cast<String, dynamic>()),
      contactEmail: map['contactEmail'] as String,
      createTime: map['createTime'] as String,
      creator: ActorResponse.fromMap((map['creator']! as Map).cast<String, dynamic>()),
      description: map['description'] as String,
      displayName: map['displayName'] as String,
      escalated: map['escalated'] as bool,
      languageCode: map['languageCode'] as String,
      name: map['name'] as String,
      priority: map['priority'] as String,
      state: map['state'] as String,
      subscriberEmailAddresses: (map['subscriberEmailAddresses'] as List).cast<String>(),
      testCase: map['testCase'] as bool,
      timeZone: map['timeZone'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}

