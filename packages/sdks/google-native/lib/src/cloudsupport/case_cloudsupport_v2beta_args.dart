// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'actor_cloudsupport_v2beta.dart';
import 'case_classification_cloudsupport_v2beta.dart';
import 'case_priority_cloudsupport_v2beta.dart';
import 'case_severity.dart';

/// {@template pulumi_cloudsupport_v2beta_case_cloudsupport_v2beta_args_doc}
/// The set of arguments for Case.
/// {@endtemplate}
/// {@macro pulumi_cloudsupport_v2beta_case_cloudsupport_v2beta_args_doc}
class CaseCloudsupportV2betaArgs {
  /// The issue classification applicable to this case.
  final pulumi.Input<CaseClassificationCloudsupportV2beta>? classification;
  /// A user-supplied email address to send case update notifications for. This should only be used in BYOID flows, where we cannot infer the user's email address directly from their EUCs.
  final pulumi.Input<String>? contactEmail;
  /// The user who created the case. Note: The name and email will be obfuscated if the case was created by Google Support.
  final pulumi.Input<ActorCloudsupportV2beta>? creator;
  /// A broad description of the issue.
  final pulumi.Input<String>? description;
  /// The short summary of the issue reported in this case.
  final pulumi.Input<String>? displayName;
  /// Whether the case is currently escalated.
  final pulumi.Input<bool>? escalated;
  /// The language the user has requested to receive support in. This should be a BCP 47 language code (e.g., `"en"`, `"zh-CN"`, `"zh-TW"`, `"ja"`, `"ko"`). If no language or an unsupported language is specified, this field defaults to English (en). Language selection during case creation may affect your available support options. For a list of supported languages and their support working hours, see: https://cloud.google.com/support/docs/language-working-hours
  final pulumi.Input<String>? languageCode;
  /// The resource name for the case.
  final pulumi.Input<String>? name;
  /// The priority of this case.
  final pulumi.Input<CasePriorityCloudsupportV2beta>? priority;
  /// REMOVED. The severity of this case. Use priority instead.
  final pulumi.Input<CaseSeverity>? severity;
  /// The email addresses to receive updates on this case.
  final pulumi.Input<List<String>>? subscriberEmailAddresses;
  /// Whether this case was created for internal API testing and should not be acted on by the support team.
  final pulumi.Input<bool>? testCase;
  /// The timezone of the user who created the support case. It should be in a format IANA recognizes: https://www.iana.org/time-zones. There is no additional validation done by the API.
  final pulumi.Input<String>? timeZone;
  final pulumi.Input<String> v2betaId1;
  final pulumi.Input<String> v2betumId;

  /// Creates a new [CaseCloudsupportV2betaArgs].
  /// [classification] The issue classification applicable to this case.
  /// [contactEmail] A user-supplied email address to send case update notifications for. This should only be used in BYOID flows, where we cannot infer the user's email address directly from their EUCs.
  /// [creator] The user who created the case. Note: The name and email will be obfuscated if the case was created by Google Support.
  /// [description] A broad description of the issue.
  /// [displayName] The short summary of the issue reported in this case.
  /// [escalated] Whether the case is currently escalated.
  /// [languageCode] The language the user has requested to receive support in. This should be a BCP 47 language code (e.g., `"en"`, `"zh-CN"`, `"zh-TW"`, `"ja"`, `"ko"`). If no language or an unsupported language is specified, this field defaults to English (en). Language selection during case creation may affect your available support options. For a list of supported languages and their support working hours, see: https://cloud.google.com/support/docs/language-working-hours
  /// [name] The resource name for the case.
  /// [priority] The priority of this case.
  /// [severity] REMOVED. The severity of this case. Use priority instead.
  /// [subscriberEmailAddresses] The email addresses to receive updates on this case.
  /// [testCase] Whether this case was created for internal API testing and should not be acted on by the support team.
  /// [timeZone] The timezone of the user who created the support case. It should be in a format IANA recognizes: https://www.iana.org/time-zones. There is no additional validation done by the API.
  /// [v2betaId1] Required.
  /// [v2betumId] Required.
  CaseCloudsupportV2betaArgs({
    this.classification,
    this.contactEmail,
    this.creator,
    this.description,
    this.displayName,
    this.escalated,
    this.languageCode,
    this.name,
    this.priority,
    this.severity,
    this.subscriberEmailAddresses,
    this.testCase,
    this.timeZone,
    required this.v2betaId1,
    required this.v2betumId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'classification': ?pulumi.Input.mapOptionalInputValue<CaseClassificationCloudsupportV2beta, Map<String, dynamic>>(classification, (value) => value.toMap()),
      'contactEmail': ?contactEmail,
      'creator': ?pulumi.Input.mapOptionalInputValue<ActorCloudsupportV2beta, Map<String, dynamic>>(creator, (value) => value.toMap()),
      'description': ?description,
      'displayName': ?displayName,
      'escalated': ?escalated,
      'languageCode': ?languageCode,
      'name': ?name,
      'priority': ?pulumi.Input.mapOptionalInputValue<CasePriorityCloudsupportV2beta, String>(priority, (value) => value.value),
      'severity': ?pulumi.Input.mapOptionalInputValue<CaseSeverity, String>(severity, (value) => value.value),
      'subscriberEmailAddresses': ?subscriberEmailAddresses,
      'testCase': ?testCase,
      'timeZone': ?timeZone,
      'v2betaId1': v2betaId1,
      'v2betumId': v2betumId,
    };
  }

  factory CaseCloudsupportV2betaArgs.fromMap(Map<String, dynamic> map) {
    return CaseCloudsupportV2betaArgs(
      classification: map['classification'] == null ? null : (CaseClassificationCloudsupportV2beta.fromMap((map['classification']! as Map).cast<String, dynamic>())).input(),
      contactEmail: map['contactEmail'] == null ? null : (map['contactEmail']! as String).input(),
      creator: map['creator'] == null ? null : (ActorCloudsupportV2beta.fromMap((map['creator']! as Map).cast<String, dynamic>())).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      escalated: map['escalated'] == null ? null : (map['escalated']! as bool).input(),
      languageCode: map['languageCode'] == null ? null : (map['languageCode']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      priority: map['priority'] == null ? null : (CasePriorityCloudsupportV2beta.fromValue(map['priority']! as String)).input(),
      severity: map['severity'] == null ? null : (CaseSeverity.fromValue(map['severity']! as String)).input(),
      subscriberEmailAddresses: map['subscriberEmailAddresses'] == null ? null : ((map['subscriberEmailAddresses']! as List).cast<String>()).input(),
      testCase: map['testCase'] == null ? null : (map['testCase']! as bool).input(),
      timeZone: map['timeZone'] == null ? null : (map['timeZone']! as String).input(),
      v2betaId1: (map['v2betaId1'] as String).input(),
      v2betumId: (map['v2betumId'] as String).input(),
    );
  }
}

