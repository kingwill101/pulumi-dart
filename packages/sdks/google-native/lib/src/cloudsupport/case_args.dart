// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'actor.dart';
import 'case_classification.dart';
import 'case_priority.dart';

/// {@template pulumi_cloudsupport_v2_case_args_doc}
/// The set of arguments for Case.
/// {@endtemplate}
/// {@macro pulumi_cloudsupport_v2_case_args_doc}
class CaseArgs {
  /// The issue classification applicable to this case.
  final pulumi.Input<CaseClassification>? classification;
  /// A user-supplied email address to send case update notifications for. This should only be used in BYOID flows, where we cannot infer the user's email address directly from their EUCs.
  final pulumi.Input<String>? contactEmail;
  /// The user who created the case. Note: The name and email will be obfuscated if the case was created by Google Support.
  final pulumi.Input<Actor>? creator;
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
  final pulumi.Input<CasePriority>? priority;
  /// The email addresses to receive updates on this case.
  final pulumi.Input<List<String>>? subscriberEmailAddresses;
  /// Whether this case was created for internal API testing and should not be acted on by the support team.
  final pulumi.Input<bool>? testCase;
  /// The timezone of the user who created the support case. It should be in a format IANA recognizes: https://www.iana.org/time-zones. There is no additional validation done by the API.
  final pulumi.Input<String>? timeZone;
  final pulumi.Input<String> v2Id;
  final pulumi.Input<String> v2Id1;

  /// Creates a new [CaseArgs].
  /// [classification] The issue classification applicable to this case.
  /// [contactEmail] A user-supplied email address to send case update notifications for. This should only be used in BYOID flows, where we cannot infer the user's email address directly from their EUCs.
  /// [creator] The user who created the case. Note: The name and email will be obfuscated if the case was created by Google Support.
  /// [description] A broad description of the issue.
  /// [displayName] The short summary of the issue reported in this case.
  /// [escalated] Whether the case is currently escalated.
  /// [languageCode] The language the user has requested to receive support in. This should be a BCP 47 language code (e.g., `"en"`, `"zh-CN"`, `"zh-TW"`, `"ja"`, `"ko"`). If no language or an unsupported language is specified, this field defaults to English (en). Language selection during case creation may affect your available support options. For a list of supported languages and their support working hours, see: https://cloud.google.com/support/docs/language-working-hours
  /// [name] The resource name for the case.
  /// [priority] The priority of this case.
  /// [subscriberEmailAddresses] The email addresses to receive updates on this case.
  /// [testCase] Whether this case was created for internal API testing and should not be acted on by the support team.
  /// [timeZone] The timezone of the user who created the support case. It should be in a format IANA recognizes: https://www.iana.org/time-zones. There is no additional validation done by the API.
  /// [v2Id] Required.
  /// [v2Id1] Required.
  const CaseArgs({
    this.classification,
    this.contactEmail,
    this.creator,
    this.description,
    this.displayName,
    this.escalated,
    this.languageCode,
    this.name,
    this.priority,
    this.subscriberEmailAddresses,
    this.testCase,
    this.timeZone,
    required this.v2Id,
    required this.v2Id1,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'classification': ?pulumi.Input.mapOptionalInputValue<CaseClassification, Map<String, dynamic>>(classification, (value) => value.toMap()),
      'contactEmail': ?contactEmail,
      'creator': ?pulumi.Input.mapOptionalInputValue<Actor, Map<String, dynamic>>(creator, (value) => value.toMap()),
      'description': ?description,
      'displayName': ?displayName,
      'escalated': ?escalated,
      'languageCode': ?languageCode,
      'name': ?name,
      'priority': ?pulumi.Input.mapOptionalInputValue<CasePriority, String>(priority, (value) => value.wireValue),
      'subscriberEmailAddresses': ?subscriberEmailAddresses,
      'testCase': ?testCase,
      'timeZone': ?timeZone,
      'v2Id': v2Id,
      'v2Id1': v2Id1,
    };
  }

  factory CaseArgs.fromMap(Map<String, dynamic> map) {
    return CaseArgs(
      classification: (() { final guardedValue = map['classification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CaseClassification.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      contactEmail: (() { final guardedValue = map['contactEmail']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      creator: (() { final guardedValue = map['creator']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Actor.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      escalated: (() { final guardedValue = map['escalated']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      languageCode: (() { final guardedValue = map['languageCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      priority: (() { final guardedValue = map['priority']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CasePriority.fromValue(guardedValue as String)); })(),
      subscriberEmailAddresses: (() { final guardedValue = map['subscriberEmailAddresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      testCase: (() { final guardedValue = map['testCase']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      timeZone: (() { final guardedValue = map['timeZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      v2Id: pulumi.Input.fromValue(map['v2Id'] as String),
      v2Id1: pulumi.Input.fromValue(map['v2Id1'] as String),
    );
  }
}

