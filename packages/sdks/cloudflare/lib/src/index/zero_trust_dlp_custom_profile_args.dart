// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_dlp_custom_profile_context_awareness.dart';
import 'zero_trust_dlp_custom_profile_entry.dart';
import 'zero_trust_dlp_custom_profile_sensitivity_level.dart';
import 'zero_trust_dlp_custom_profile_shared_entry.dart';

/// {@template pulumi_index_zero_trust_dlp_custom_profile_zero_trust_dlp_custom_profile_args_doc}
/// The set of arguments for ZeroTrustDlpCustomProfile.
/// {@endtemplate}
/// {@macro pulumi_index_zero_trust_dlp_custom_profile_zero_trust_dlp_custom_profile_args_doc}
class ZeroTrustDlpCustomProfileArgs {
  final pulumi.Input<String> accountId;
  final pulumi.Input<bool?>? aiContextEnabled;
  /// Related DLP policies will trigger when the match count exceeds the number set.
  final pulumi.Input<int?>? allowedMatchCount;
  final pulumi.Input<String?>? confidenceThreshold;
  /// Scan the context of predefined entries to only return matches surrounded by keywords.
  final pulumi.Input<ZeroTrustDlpCustomProfileContextAwareness?>? contextAwareness;
  /// Data class IDs to associate with the profile.
  final pulumi.Input<List<String>?>? dataClasses;
  /// Data tag IDs to associate with the profile.
  final pulumi.Input<List<String>?>? dataTags;
  /// The description of the profile.
  final pulumi.Input<String?>? description;
  /// Custom entries from this profile.
  /// If this field is omitted, entries owned by this profile will not be changed.
  final pulumi.Input<List<ZeroTrustDlpCustomProfileEntry>?>? entries;
  final pulumi.Input<String> name;
  final pulumi.Input<bool?>? ocrEnabled;
  /// Sensitivity levels to associate with the profile.
  final pulumi.Input<List<ZeroTrustDlpCustomProfileSensitivityLevel>?>? sensitivityLevels;
  /// Entries from other profiles (e.g. pre-defined Cloudflare profiles, or your Microsoft Information Protection profiles).
  final pulumi.Input<List<ZeroTrustDlpCustomProfileSharedEntry>?>? sharedEntries;

  /// Creates a new [ZeroTrustDlpCustomProfileArgs].
  /// [accountId] Required.
  /// [aiContextEnabled] Optional.
  /// [allowedMatchCount] Related DLP policies will trigger when the match count exceeds the number set.
  /// [confidenceThreshold] Optional.
  /// [contextAwareness] Scan the context of predefined entries to only return matches surrounded by keywords.
  /// [dataClasses] Data class IDs to associate with the profile.
  /// [dataTags] Data tag IDs to associate with the profile.
  /// [description] The description of the profile.
  /// [entries] Custom entries from this profile.
  /// [name] Required.
  /// [ocrEnabled] Optional.
  /// [sensitivityLevels] Sensitivity levels to associate with the profile.
  /// [sharedEntries] Entries from other profiles (e.g. pre-defined Cloudflare profiles, or your Microsoft Information Protection profiles).
  const ZeroTrustDlpCustomProfileArgs({
    required this.accountId,
    this.aiContextEnabled,
    this.allowedMatchCount,
    this.confidenceThreshold,
    this.contextAwareness,
    this.dataClasses,
    this.dataTags,
    this.description,
    this.entries,
    required this.name,
    this.ocrEnabled,
    this.sensitivityLevels,
    this.sharedEntries,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'aiContextEnabled': ?aiContextEnabled,
      'allowedMatchCount': ?allowedMatchCount,
      'confidenceThreshold': ?confidenceThreshold,
      'contextAwareness': ?pulumi.Input.mapOptionalInputValue<ZeroTrustDlpCustomProfileContextAwareness, Map<String, dynamic>>(contextAwareness, (value) => value.toMap()),
      'dataClasses': ?dataClasses,
      'dataTags': ?dataTags,
      'description': ?description,
      'entries': ?pulumi.Input.mapOptionalInputValue<List<ZeroTrustDlpCustomProfileEntry>, List<Map<String, dynamic>>>(entries, (value) => pulumi.Input.encodeList<ZeroTrustDlpCustomProfileEntry, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': name,
      'ocrEnabled': ?ocrEnabled,
      'sensitivityLevels': ?pulumi.Input.mapOptionalInputValue<List<ZeroTrustDlpCustomProfileSensitivityLevel>, List<Map<String, dynamic>>>(sensitivityLevels, (value) => pulumi.Input.encodeList<ZeroTrustDlpCustomProfileSensitivityLevel, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sharedEntries': ?pulumi.Input.mapOptionalInputValue<List<ZeroTrustDlpCustomProfileSharedEntry>, List<Map<String, dynamic>>>(sharedEntries, (value) => pulumi.Input.encodeList<ZeroTrustDlpCustomProfileSharedEntry, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ZeroTrustDlpCustomProfileArgs.fromMap(Map<String, dynamic> map) {
    return ZeroTrustDlpCustomProfileArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      aiContextEnabled: (() { final guardedValue = map['aiContextEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      allowedMatchCount: (() { final guardedValue = map['allowedMatchCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      confidenceThreshold: (() { final guardedValue = map['confidenceThreshold']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      contextAwareness: (() { final guardedValue = map['contextAwareness']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustDlpCustomProfileContextAwareness.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dataClasses: (() { final guardedValue = map['dataClasses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      dataTags: (() { final guardedValue = map['dataTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      entries: (() { final guardedValue = map['entries']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ZeroTrustDlpCustomProfileEntry>(guardedValue, (value) => ZeroTrustDlpCustomProfileEntry.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      ocrEnabled: (() { final guardedValue = map['ocrEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      sensitivityLevels: (() { final guardedValue = map['sensitivityLevels']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ZeroTrustDlpCustomProfileSensitivityLevel>(guardedValue, (value) => ZeroTrustDlpCustomProfileSensitivityLevel.fromMap((value as Map).cast<String, dynamic>()))); })(),
      sharedEntries: (() { final guardedValue = map['sharedEntries']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ZeroTrustDlpCustomProfileSharedEntry>(guardedValue, (value) => ZeroTrustDlpCustomProfileSharedEntry.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
