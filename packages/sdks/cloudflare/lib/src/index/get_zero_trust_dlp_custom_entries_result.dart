// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_dlp_custom_entries_result_confidence.dart';
import 'get_zero_trust_dlp_custom_entries_result_pattern.dart';
import 'get_zero_trust_dlp_custom_entries_result_variant.dart';

class GetZeroTrustDlpCustomEntriesResult {
  /// Only applies to custom word lists.
  /// Determines if the words should be matched in a case-sensitive manner
  /// Cannot be set to false if secret is true
  final pulumi.Input<bool> caseSensitive;
  final pulumi.Input<GetZeroTrustDlpCustomEntriesResultConfidence> confidence;
  final pulumi.Input<String> createdAt;
  /// Whether this entry is deprecated for new use. This is computed from the static catalog and
  /// emitted only when true.
  final pulumi.Input<bool> deprecated;
  final pulumi.Input<String> description;
  final pulumi.Input<bool> enabled;
  final pulumi.Input<String> id;
  final pulumi.Input<String> name;
  final pulumi.Input<GetZeroTrustDlpCustomEntriesResultPattern> pattern;
  final pulumi.Input<String> profileId;
  final pulumi.Input<bool> secret;
  /// Available values: "custom", "custom*prompt*topic", "predefined", "integration", "exact*data", "document*fingerprint", "wordList".
  final pulumi.Input<String> type;
  final pulumi.Input<String> updatedAt;
  /// Available values: "empty", "uploading", "pending", "processing", "failed", "complete".
  final pulumi.Input<String> uploadStatus;
  /// A Predefined AI prompt classification topic entry.
  final pulumi.Input<GetZeroTrustDlpCustomEntriesResultVariant> variant;
  final pulumi.Input<String> wordList;

  /// Creates a new [GetZeroTrustDlpCustomEntriesResult].
  /// [caseSensitive] Only applies to custom word lists.
  /// [confidence] Required.
  /// [createdAt] Required.
  /// [deprecated] Whether this entry is deprecated for new use. This is computed from the static catalog and
  /// [description] Required.
  /// [enabled] Required.
  /// [id] Required.
  /// [name] Required.
  /// [pattern] Required.
  /// [profileId] Required.
  /// [secret] Required.
  /// [type] Available values: "custom", "custom*prompt*topic", "predefined", "integration", "exact*data", "document*fingerprint", "wordList".
  /// [updatedAt] Required.
  /// [uploadStatus] Available values: "empty", "uploading", "pending", "processing", "failed", "complete".
  /// [variant] A Predefined AI prompt classification topic entry.
  /// [wordList] Required.
  const GetZeroTrustDlpCustomEntriesResult({
    required this.caseSensitive,
    required this.confidence,
    required this.createdAt,
    required this.deprecated,
    required this.description,
    required this.enabled,
    required this.id,
    required this.name,
    required this.pattern,
    required this.profileId,
    required this.secret,
    required this.type,
    required this.updatedAt,
    required this.uploadStatus,
    required this.variant,
    required this.wordList,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caseSensitive': caseSensitive,
      'confidence': pulumi.Input.mapInputValue<GetZeroTrustDlpCustomEntriesResultConfidence, Map<String, dynamic>>(confidence, (value) => value.toMap()),
      'createdAt': createdAt,
      'deprecated': deprecated,
      'description': description,
      'enabled': enabled,
      'id': id,
      'name': name,
      'pattern': pulumi.Input.mapInputValue<GetZeroTrustDlpCustomEntriesResultPattern, Map<String, dynamic>>(pattern, (value) => value.toMap()),
      'profileId': profileId,
      'secret': secret,
      'type': type,
      'updatedAt': updatedAt,
      'uploadStatus': uploadStatus,
      'variant': pulumi.Input.mapInputValue<GetZeroTrustDlpCustomEntriesResultVariant, Map<String, dynamic>>(variant, (value) => value.toMap()),
      'wordList': wordList,
    };
  }

  factory GetZeroTrustDlpCustomEntriesResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustDlpCustomEntriesResult(
      caseSensitive: pulumi.Input.fromValue(map['caseSensitive'] as bool),
      confidence: pulumi.Input.fromValue(GetZeroTrustDlpCustomEntriesResultConfidence.fromMap((map['confidence']! as Map).cast<String, dynamic>())),
      createdAt: pulumi.Input.fromValue(map['createdAt'] as String),
      deprecated: pulumi.Input.fromValue(map['deprecated'] as bool),
      description: pulumi.Input.fromValue(map['description'] as String),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      id: pulumi.Input.fromValue(map['id'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      pattern: pulumi.Input.fromValue(GetZeroTrustDlpCustomEntriesResultPattern.fromMap((map['pattern']! as Map).cast<String, dynamic>())),
      profileId: pulumi.Input.fromValue(map['profileId'] as String),
      secret: pulumi.Input.fromValue(map['secret'] as bool),
      type: pulumi.Input.fromValue(map['type'] as String),
      updatedAt: pulumi.Input.fromValue(map['updatedAt'] as String),
      uploadStatus: pulumi.Input.fromValue(map['uploadStatus'] as String),
      variant: pulumi.Input.fromValue(GetZeroTrustDlpCustomEntriesResultVariant.fromMap((map['variant']! as Map).cast<String, dynamic>())),
      wordList: pulumi.Input.fromValue(map['wordList'] as String),
    );
  }
}
