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
    pulumi.Output<CaseClassificationCloudsupportV2beta>? classification,
    pulumi.Output<String>? contactEmail,
    pulumi.Output<ActorCloudsupportV2beta>? creator,
    pulumi.Output<String>? description,
    pulumi.Output<String>? displayName,
    pulumi.Output<bool>? escalated,
    pulumi.Output<String>? languageCode,
    pulumi.Output<String>? name,
    pulumi.Output<CasePriorityCloudsupportV2beta>? priority,
    pulumi.Output<CaseSeverity>? severity,
    pulumi.Output<List<String>>? subscriberEmailAddresses,
    pulumi.Output<bool>? testCase,
    pulumi.Output<String>? timeZone,
    required pulumi.Output<String> v2betaId1,
    required pulumi.Output<String> v2betumId,
  }) :
      classification = pulumi.Input.asOptionalInput<CaseClassificationCloudsupportV2beta>(classification),
      contactEmail = pulumi.Input.asOptionalInput<String>(contactEmail),
      creator = pulumi.Input.asOptionalInput<ActorCloudsupportV2beta>(creator),
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      escalated = pulumi.Input.asOptionalInput<bool>(escalated),
      languageCode = pulumi.Input.asOptionalInput<String>(languageCode),
      name = pulumi.Input.asOptionalInput<String>(name),
      priority = pulumi.Input.asOptionalInput<CasePriorityCloudsupportV2beta>(priority),
      severity = pulumi.Input.asOptionalInput<CaseSeverity>(severity),
      subscriberEmailAddresses = pulumi.Input.asOptionalInput<List<String>>(subscriberEmailAddresses),
      testCase = pulumi.Input.asOptionalInput<bool>(testCase),
      timeZone = pulumi.Input.asOptionalInput<String>(timeZone),
      v2betaId1 = pulumi.Input.asInput<String>(v2betaId1),
      v2betumId = pulumi.Input.asInput<String>(v2betumId);

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
      classification: map['classification'] == null ? null : pulumi.Output.create<CaseClassificationCloudsupportV2beta>(CaseClassificationCloudsupportV2beta.fromMap((map['classification'] as Map).cast<String, dynamic>())),
      contactEmail: map['contactEmail'] == null ? null : pulumi.Output.create<String>(map['contactEmail'] as String),
      creator: map['creator'] == null ? null : pulumi.Output.create<ActorCloudsupportV2beta>(ActorCloudsupportV2beta.fromMap((map['creator'] as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      escalated: map['escalated'] == null ? null : pulumi.Output.create<bool>(map['escalated'] as bool),
      languageCode: map['languageCode'] == null ? null : pulumi.Output.create<String>(map['languageCode'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      priority: map['priority'] == null ? null : pulumi.Output.create<CasePriorityCloudsupportV2beta>(CasePriorityCloudsupportV2beta.fromValue(map['priority'] as String)),
      severity: map['severity'] == null ? null : pulumi.Output.create<CaseSeverity>(CaseSeverity.fromValue(map['severity'] as String)),
      subscriberEmailAddresses: map['subscriberEmailAddresses'] == null ? null : pulumi.Output.create<List<String>>((map['subscriberEmailAddresses'] as List).cast<String>()),
      testCase: map['testCase'] == null ? null : pulumi.Output.create<bool>(map['testCase'] as bool),
      timeZone: map['timeZone'] == null ? null : pulumi.Output.create<String>(map['timeZone'] as String),
      v2betaId1: pulumi.Output.create<String>(map['v2betaId1'] as String),
      v2betumId: pulumi.Output.create<String>(map['v2betumId'] as String),
    );
  }
}

