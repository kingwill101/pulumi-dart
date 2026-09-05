// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_dlp_entry_confidence.dart';
import 'zero_trust_dlp_entry_pattern.dart';
import 'zero_trust_dlp_entry_profile.dart';
import 'zero_trust_dlp_entry_variant.dart';

/// Input properties used for looking up and filtering ZeroTrustDlpEntry resources.
class ZeroTrustDlpEntryState {
  final pulumi.Input<String?>? accountId;
  /// Only applies to custom word lists.
  /// Determines if the words should be matched in a case-sensitive manner
  /// Cannot be set to false if secret is true
  final pulumi.Input<bool?>? caseSensitive;
  final pulumi.Input<ZeroTrustDlpEntryConfidence?>? confidence;
  final pulumi.Input<String?>? createdAt;
  /// Whether this entry is deprecated for new use. This is computed from the static catalog and
  /// emitted only when true.
  final pulumi.Input<bool?>? deprecated;
  final pulumi.Input<String?>? description;
  final pulumi.Input<bool?>? enabled;
  final pulumi.Input<String?>? name;
  final pulumi.Input<ZeroTrustDlpEntryPattern?>? pattern;
  final pulumi.Input<String?>? profileId;
  final pulumi.Input<List<ZeroTrustDlpEntryProfile>?>? profiles;
  final pulumi.Input<bool?>? secret;
  /// Available values: "custom", "predefined", "integration".
  final pulumi.Input<String?>? type;
  final pulumi.Input<String?>? updatedAt;
  /// Available values: "empty", "uploading", "pending", "processing", "failed", "complete".
  final pulumi.Input<String?>? uploadStatus;
  /// A Predefined AI prompt classification topic entry.
  final pulumi.Input<ZeroTrustDlpEntryVariant?>? variant;
  final pulumi.Input<String?>? wordList;

  /// Creates a new [ZeroTrustDlpEntryState].
  /// [accountId] Optional.
  /// [caseSensitive] Only applies to custom word lists.
  /// [confidence] Optional.
  /// [createdAt] Optional.
  /// [deprecated] Whether this entry is deprecated for new use. This is computed from the static catalog and
  /// [description] Optional.
  /// [enabled] Optional.
  /// [name] Optional.
  /// [pattern] Optional.
  /// [profileId] Optional.
  /// [profiles] Optional.
  /// [secret] Optional.
  /// [type] Available values: "custom", "predefined", "integration".
  /// [updatedAt] Optional.
  /// [uploadStatus] Available values: "empty", "uploading", "pending", "processing", "failed", "complete".
  /// [variant] A Predefined AI prompt classification topic entry.
  /// [wordList] Optional.
  const ZeroTrustDlpEntryState({
    this.accountId,
    this.caseSensitive,
    this.confidence,
    this.createdAt,
    this.deprecated,
    this.description,
    this.enabled,
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
      'confidence': ?pulumi.Input.mapOptionalInputValue<ZeroTrustDlpEntryConfidence, Map<String, dynamic>>(confidence, (value) => value.toMap()),
      'createdAt': ?createdAt,
      'deprecated': ?deprecated,
      'description': ?description,
      'enabled': ?enabled,
      'name': ?name,
      'pattern': ?pulumi.Input.mapOptionalInputValue<ZeroTrustDlpEntryPattern, Map<String, dynamic>>(pattern, (value) => value.toMap()),
      'profileId': ?profileId,
      'profiles': ?pulumi.Input.mapOptionalInputValue<List<ZeroTrustDlpEntryProfile>, List<Map<String, dynamic>>>(profiles, (value) => pulumi.Input.encodeList<ZeroTrustDlpEntryProfile, Map<String, dynamic>>(value, (value) => value.toMap())),
      'secret': ?secret,
      'type': ?type,
      'updatedAt': ?updatedAt,
      'uploadStatus': ?uploadStatus,
      'variant': ?pulumi.Input.mapOptionalInputValue<ZeroTrustDlpEntryVariant, Map<String, dynamic>>(variant, (value) => value.toMap()),
      'wordList': ?wordList,
    };
  }

  factory ZeroTrustDlpEntryState.fromMap(Map<String, dynamic> map) {
    return ZeroTrustDlpEntryState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      caseSensitive: (() { final guardedValue = map['caseSensitive']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      confidence: (() { final guardedValue = map['confidence']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustDlpEntryConfidence.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deprecated: (() { final guardedValue = map['deprecated']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pattern: (() { final guardedValue = map['pattern']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustDlpEntryPattern.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      profileId: (() { final guardedValue = map['profileId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      profiles: (() { final guardedValue = map['profiles']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ZeroTrustDlpEntryProfile>(guardedValue, (value) => ZeroTrustDlpEntryProfile.fromMap((value as Map).cast<String, dynamic>()))); })(),
      secret: (() { final guardedValue = map['secret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uploadStatus: (() { final guardedValue = map['uploadStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      variant: (() { final guardedValue = map['variant']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustDlpEntryVariant.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      wordList: (() { final guardedValue = map['wordList']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
