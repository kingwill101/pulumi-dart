// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_dlp_integration_entry_confidence.dart';
import 'get_zero_trust_dlp_integration_entry_pattern.dart';
import 'get_zero_trust_dlp_integration_entry_profile.dart';
import 'get_zero_trust_dlp_integration_entry_variant.dart';

/// Result data returned by getZeroTrustDlpIntegrationEntry.
class GetZeroTrustDlpIntegrationEntryResult {
  final String? accountId;
  /// Only applies to custom word lists.
  /// Determines if the words should be matched in a case-sensitive manner
  /// Cannot be set to false if secret is true
  final bool? caseSensitive;
  final GetZeroTrustDlpIntegrationEntryConfidence? confidence;
  final String? createdAt;
  final String? description;
  final bool? enabled;
  final String? entryId;
  /// The ID of this resource.
  final String? id;
  final String? name;
  final GetZeroTrustDlpIntegrationEntryPattern? pattern;
  final String? profileId;
  final List<GetZeroTrustDlpIntegrationEntryProfile>? profiles;
  final bool? secret;
  /// Available values: "custom", "custom*prompt*topic", "predefined", "integration", "exact*data", "document*fingerprint", "wordList".
  final String? type;
  final String? updatedAt;
  /// Available values: "empty", "uploading", "pending", "processing", "failed", "complete".
  final String? uploadStatus;
  /// A Predefined AI prompt classification topic entry.
  final GetZeroTrustDlpIntegrationEntryVariant? variant;
  final String? wordList;

  /// Creates a new [GetZeroTrustDlpIntegrationEntryResult].
  /// [accountId] Optional.
  /// [caseSensitive] Only applies to custom word lists.
  /// [confidence] Optional.
  /// [createdAt] Optional.
  /// [description] Optional.
  /// [enabled] Optional.
  /// [entryId] Optional.
  /// [id] The ID of this resource.
  /// [name] Optional.
  /// [pattern] Optional.
  /// [profileId] Optional.
  /// [profiles] Optional.
  /// [secret] Optional.
  /// [type] Available values: "custom", "custom*prompt*topic", "predefined", "integration", "exact*data", "document*fingerprint", "wordList".
  /// [updatedAt] Optional.
  /// [uploadStatus] Available values: "empty", "uploading", "pending", "processing", "failed", "complete".
  /// [variant] A Predefined AI prompt classification topic entry.
  /// [wordList] Optional.
  const GetZeroTrustDlpIntegrationEntryResult({
    this.accountId,
    this.caseSensitive,
    this.confidence,
    this.createdAt,
    this.description,
    this.enabled,
    this.entryId,
    this.id,
    this.name,
    this.pattern,
    this.profileId,
    this.profiles,
    this.secret,
    this.type,
    this.updatedAt,
    this.uploadStatus,
    this.variant,
    this.wordList,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'caseSensitive': ?caseSensitive,
      'confidence': ?confidence?.toMap(),
      'createdAt': ?createdAt,
      'description': ?description,
      'enabled': ?enabled,
      'entryId': ?entryId,
      'id': ?id,
      'name': ?name,
      'pattern': ?pattern?.toMap(),
      'profileId': ?profileId,
      'profiles': ?(() { final guardedValue = profiles; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetZeroTrustDlpIntegrationEntryProfile, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'secret': ?secret,
      'type': ?type,
      'updatedAt': ?updatedAt,
      'uploadStatus': ?uploadStatus,
      'variant': ?variant?.toMap(),
      'wordList': ?wordList,
    };
  }

  factory GetZeroTrustDlpIntegrationEntryResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustDlpIntegrationEntryResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      caseSensitive: (() { final guardedValue = map['caseSensitive']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      confidence: (() { final guardedValue = map['confidence']; if (guardedValue == null) return null; return GetZeroTrustDlpIntegrationEntryConfidence.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      entryId: (() { final guardedValue = map['entryId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pattern: (() { final guardedValue = map['pattern']; if (guardedValue == null) return null; return GetZeroTrustDlpIntegrationEntryPattern.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      profileId: (() { final guardedValue = map['profileId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      profiles: (() { final guardedValue = map['profiles']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetZeroTrustDlpIntegrationEntryProfile>(guardedValue, (value) => GetZeroTrustDlpIntegrationEntryProfile.fromMap((value as Map).cast<String, dynamic>())); })(),
      secret: (() { final guardedValue = map['secret']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      uploadStatus: (() { final guardedValue = map['uploadStatus']; if (guardedValue == null) return null; return guardedValue as String; })(),
      variant: (() { final guardedValue = map['variant']; if (guardedValue == null) return null; return GetZeroTrustDlpIntegrationEntryVariant.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      wordList: (() { final guardedValue = map['wordList']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
