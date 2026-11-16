// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_dlp_predefined_entry_confidence.dart';
import 'get_zero_trust_dlp_predefined_entry_pattern.dart';
import 'get_zero_trust_dlp_predefined_entry_profile.dart';
import 'get_zero_trust_dlp_predefined_entry_variant.dart';

/// Result data returned by getZeroTrustDlpPredefinedEntry.
class GetZeroTrustDlpPredefinedEntryResult {
  final String? accountId;
  /// For `type: exactData`: Only applies to custom word lists.
  /// Determines if the words should be matched in a case-sensitive manner
  /// Cannot be set to false if secret is true
  final bool? caseSensitive;
  final GetZeroTrustDlpPredefinedEntryConfidence? confidence;
  final String? createdAt;
  /// For `type: predefined`: Whether this entry is deprecated for new use. This is computed from the static catalog and
  /// emitted only when true.
  final bool? deprecated;
  /// For `type: customPromptTopic`: The optional description of the custom prompt topic entry.
  final String? description;
  final bool? enabled;
  final String? entryId;
  final String? id;
  final String? name;
  final GetZeroTrustDlpPredefinedEntryPattern? pattern;
  final String? profileId;
  final List<GetZeroTrustDlpPredefinedEntryProfile>? profiles;
  final bool? secret;
  final String? type;
  final String? updatedAt;
  final String? uploadStatus;
  final List<String>? validatorIds;
  final GetZeroTrustDlpPredefinedEntryVariant? variant;
  final List<String>? wordLists;

  /// Creates a new [GetZeroTrustDlpPredefinedEntryResult].
  /// [accountId] Optional.
  /// [caseSensitive] For `type: exactData`: Only applies to custom word lists.
  /// [confidence] Optional.
  /// [createdAt] Optional.
  /// [deprecated] For `type: predefined`: Whether this entry is deprecated for new use. This is computed from the static catalog and
  /// [description] For `type: customPromptTopic`: The optional description of the custom prompt topic entry.
  /// [enabled] Optional.
  /// [entryId] Optional.
  /// [id] Optional.
  /// [name] Optional.
  /// [pattern] Optional.
  /// [profileId] Optional.
  /// [profiles] Optional.
  /// [secret] Optional.
  /// [type] Optional.
  /// [updatedAt] Optional.
  /// [uploadStatus] Optional.
  /// [validatorIds] Optional.
  /// [variant] Optional.
  /// [wordLists] Optional.
  const GetZeroTrustDlpPredefinedEntryResult({
    this.accountId,
    this.caseSensitive,
    this.confidence,
    this.createdAt,
    this.deprecated,
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
    this.validatorIds,
    this.variant,
    this.wordLists,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'caseSensitive': ?caseSensitive,
      'confidence': ?confidence?.toMap(),
      'createdAt': ?createdAt,
      'deprecated': ?deprecated,
      'description': ?description,
      'enabled': ?enabled,
      'entryId': ?entryId,
      'id': ?id,
      'name': ?name,
      'pattern': ?pattern?.toMap(),
      'profileId': ?profileId,
      'profiles': ?(() { final guardedValue = profiles; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetZeroTrustDlpPredefinedEntryProfile, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'secret': ?secret,
      'type': ?type,
      'updatedAt': ?updatedAt,
      'uploadStatus': ?uploadStatus,
      'validatorIds': ?validatorIds,
      'variant': ?variant?.toMap(),
      'wordLists': ?wordLists,
    };
  }

  factory GetZeroTrustDlpPredefinedEntryResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustDlpPredefinedEntryResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      caseSensitive: (() { final guardedValue = map['caseSensitive']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      confidence: (() { final guardedValue = map['confidence']; if (guardedValue == null) return null; return GetZeroTrustDlpPredefinedEntryConfidence.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deprecated: (() { final guardedValue = map['deprecated']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      entryId: (() { final guardedValue = map['entryId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pattern: (() { final guardedValue = map['pattern']; if (guardedValue == null) return null; return GetZeroTrustDlpPredefinedEntryPattern.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      profileId: (() { final guardedValue = map['profileId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      profiles: (() { final guardedValue = map['profiles']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetZeroTrustDlpPredefinedEntryProfile>(guardedValue, (value) => GetZeroTrustDlpPredefinedEntryProfile.fromMap((value as Map).cast<String, dynamic>())); })(),
      secret: (() { final guardedValue = map['secret']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      uploadStatus: (() { final guardedValue = map['uploadStatus']; if (guardedValue == null) return null; return guardedValue as String; })(),
      validatorIds: (() { final guardedValue = map['validatorIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      variant: (() { final guardedValue = map['variant']; if (guardedValue == null) return null; return GetZeroTrustDlpPredefinedEntryVariant.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      wordLists: (() { final guardedValue = map['wordLists']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
    );
  }
}
