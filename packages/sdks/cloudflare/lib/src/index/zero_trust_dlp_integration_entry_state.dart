// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_dlp_integration_entry_confidence.dart';
import 'zero_trust_dlp_integration_entry_pattern.dart';
import 'zero_trust_dlp_integration_entry_profile.dart';
import 'zero_trust_dlp_integration_entry_variant.dart';

/// Input properties used for looking up and filtering ZeroTrustDlpIntegrationEntry resources.
class ZeroTrustDlpIntegrationEntryState {
  final pulumi.Input<String?>? accountId;
  /// Only applies to custom word lists.
  /// Determines if the words should be matched in a case-sensitive manner
  /// Cannot be set to false if secret is true
  final pulumi.Input<bool?>? caseSensitive;
  final pulumi.Input<ZeroTrustDlpIntegrationEntryConfidence?>? confidence;
  final pulumi.Input<String?>? createdAt;
  final pulumi.Input<String?>? description;
  final pulumi.Input<bool?>? enabled;
  final pulumi.Input<String?>? entryId;
  final pulumi.Input<String?>? name;
  final pulumi.Input<ZeroTrustDlpIntegrationEntryPattern?>? pattern;
  /// This field is not used as the owning profile.
  /// For predefined entries it is already set to a predefined profile.
  final pulumi.Input<String?>? profileId;
  final pulumi.Input<List<ZeroTrustDlpIntegrationEntryProfile>?>? profiles;
  final pulumi.Input<bool?>? secret;
  /// Available values: "custom", "custom*prompt*topic", "predefined", "integration", "exact*data", "document*fingerprint", "wordList".
  final pulumi.Input<String?>? type;
  final pulumi.Input<String?>? updatedAt;
  /// Available values: "empty", "uploading", "pending", "processing", "failed", "complete".
  final pulumi.Input<String?>? uploadStatus;
  /// A Predefined AI prompt classification topic entry.
  final pulumi.Input<ZeroTrustDlpIntegrationEntryVariant?>? variant;
  final pulumi.Input<String?>? wordList;

  /// Creates a new [ZeroTrustDlpIntegrationEntryState].
  /// [accountId] Optional.
  /// [caseSensitive] Only applies to custom word lists.
  /// [confidence] Optional.
  /// [createdAt] Optional.
  /// [description] Optional.
  /// [enabled] Optional.
  /// [entryId] Optional.
  /// [name] Optional.
  /// [pattern] Optional.
  /// [profileId] This field is not used as the owning profile.
  /// [profiles] Optional.
  /// [secret] Optional.
  /// [type] Available values: "custom", "custom*prompt*topic", "predefined", "integration", "exact*data", "document*fingerprint", "wordList".
  /// [updatedAt] Optional.
  /// [uploadStatus] Available values: "empty", "uploading", "pending", "processing", "failed", "complete".
  /// [variant] A Predefined AI prompt classification topic entry.
  /// [wordList] Optional.
  const ZeroTrustDlpIntegrationEntryState({
    this.accountId,
    this.caseSensitive,
    this.confidence,
    this.createdAt,
    this.description,
    this.enabled,
    this.entryId,
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
      'confidence': ?pulumi.Input.mapOptionalInputValue<ZeroTrustDlpIntegrationEntryConfidence, Map<String, dynamic>>(confidence, (value) => value.toMap()),
      'createdAt': ?createdAt,
      'description': ?description,
      'enabled': ?enabled,
      'entryId': ?entryId,
      'name': ?name,
      'pattern': ?pulumi.Input.mapOptionalInputValue<ZeroTrustDlpIntegrationEntryPattern, Map<String, dynamic>>(pattern, (value) => value.toMap()),
      'profileId': ?profileId,
      'profiles': ?pulumi.Input.mapOptionalInputValue<List<ZeroTrustDlpIntegrationEntryProfile>, List<Map<String, dynamic>>>(profiles, (value) => pulumi.Input.encodeList<ZeroTrustDlpIntegrationEntryProfile, Map<String, dynamic>>(value, (value) => value.toMap())),
      'secret': ?secret,
      'type': ?type,
      'updatedAt': ?updatedAt,
      'uploadStatus': ?uploadStatus,
      'variant': ?pulumi.Input.mapOptionalInputValue<ZeroTrustDlpIntegrationEntryVariant, Map<String, dynamic>>(variant, (value) => value.toMap()),
      'wordList': ?wordList,
    };
  }

  factory ZeroTrustDlpIntegrationEntryState.fromMap(Map<String, dynamic> map) {
    return ZeroTrustDlpIntegrationEntryState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      caseSensitive: (() { final guardedValue = map['caseSensitive']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      confidence: (() { final guardedValue = map['confidence']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustDlpIntegrationEntryConfidence.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      entryId: (() { final guardedValue = map['entryId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pattern: (() { final guardedValue = map['pattern']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustDlpIntegrationEntryPattern.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      profileId: (() { final guardedValue = map['profileId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      profiles: (() { final guardedValue = map['profiles']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ZeroTrustDlpIntegrationEntryProfile>(guardedValue, (value) => ZeroTrustDlpIntegrationEntryProfile.fromMap((value as Map).cast<String, dynamic>()))); })(),
      secret: (() { final guardedValue = map['secret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uploadStatus: (() { final guardedValue = map['uploadStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      variant: (() { final guardedValue = map['variant']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustDlpIntegrationEntryVariant.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      wordList: (() { final guardedValue = map['wordList']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
