// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dlp_custom_profile_context_awareness.dart';
import 'dlp_custom_profile_entry.dart';
import 'dlp_custom_profile_sensitivity_level.dart';
import 'dlp_custom_profile_shared_entry.dart';

/// Input properties used for looking up and filtering DlpCustomProfile resources.
class DlpCustomProfileState {
  final pulumi.Input<String?>? accountId;
  final pulumi.Input<bool?>? aiContextEnabled;
  /// Related DLP policies will trigger when the match count exceeds the number set.
  final pulumi.Input<int?>? allowedMatchCount;
  final pulumi.Input<String?>? confidenceThreshold;
  /// Scan the context of predefined entries to only return matches surrounded by keywords.
  final pulumi.Input<DlpCustomProfileContextAwareness?>? contextAwareness;
  /// When the profile was created.
  final pulumi.Input<String?>? createdAt;
  /// Data class IDs to associate with the profile.
  final pulumi.Input<List<String>?>? dataClasses;
  /// Data tag IDs to associate with the profile.
  final pulumi.Input<List<String>?>? dataTags;
  /// The description of the profile.
  final pulumi.Input<String?>? description;
  /// Custom entries from this profile.
  /// If this field is omitted, entries owned by this profile will not be changed.
  final pulumi.Input<List<DlpCustomProfileEntry>?>? entries;
  final pulumi.Input<String?>? name;
  final pulumi.Input<bool?>? ocrEnabled;
  /// Whether this profile can be accessed by anyone.
  final pulumi.Input<bool?>? openAccess;
  /// Sensitivity levels to associate with the profile.
  final pulumi.Input<List<DlpCustomProfileSensitivityLevel>?>? sensitivityLevels;
  /// Entries from other profiles (e.g. pre-defined Cloudflare profiles, or your Microsoft Information Protection profiles).
  final pulumi.Input<List<DlpCustomProfileSharedEntry>?>? sharedEntries;
  /// Available values: "custom", "predefined", "integration".
  final pulumi.Input<String?>? type;
  /// When the profile was lasted updated.
  final pulumi.Input<String?>? updatedAt;

  /// Creates a new [DlpCustomProfileState].
  /// [accountId] Optional.
  /// [aiContextEnabled] Optional.
  /// [allowedMatchCount] Related DLP policies will trigger when the match count exceeds the number set.
  /// [confidenceThreshold] Optional.
  /// [contextAwareness] Scan the context of predefined entries to only return matches surrounded by keywords.
  /// [createdAt] When the profile was created.
  /// [dataClasses] Data class IDs to associate with the profile.
  /// [dataTags] Data tag IDs to associate with the profile.
  /// [description] The description of the profile.
  /// [entries] Custom entries from this profile.
  /// [name] Optional.
  /// [ocrEnabled] Optional.
  /// [openAccess] Whether this profile can be accessed by anyone.
  /// [sensitivityLevels] Sensitivity levels to associate with the profile.
  /// [sharedEntries] Entries from other profiles (e.g. pre-defined Cloudflare profiles, or your Microsoft Information Protection profiles).
  /// [type] Available values: "custom", "predefined", "integration".
  /// [updatedAt] When the profile was lasted updated.
  const DlpCustomProfileState({
    this.accountId,
    this.aiContextEnabled,
    this.allowedMatchCount,
    this.confidenceThreshold,
    this.contextAwareness,
    this.createdAt,
    this.dataClasses,
    this.dataTags,
    this.description,
    this.entries,
    this.name,
    this.ocrEnabled,
    this.openAccess,
    this.sensitivityLevels,
    this.sharedEntries,
    this.type,
    this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'aiContextEnabled': ?aiContextEnabled,
      'allowedMatchCount': ?allowedMatchCount,
      'confidenceThreshold': ?confidenceThreshold,
      'contextAwareness': ?pulumi.Input.mapOptionalInputValue<DlpCustomProfileContextAwareness, Map<String, dynamic>>(contextAwareness, (value) => value.toMap()),
      'createdAt': ?createdAt,
      'dataClasses': ?dataClasses,
      'dataTags': ?dataTags,
      'description': ?description,
      'entries': ?pulumi.Input.mapOptionalInputValue<List<DlpCustomProfileEntry>, List<Map<String, dynamic>>>(entries, (value) => pulumi.Input.encodeList<DlpCustomProfileEntry, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'ocrEnabled': ?ocrEnabled,
      'openAccess': ?openAccess,
      'sensitivityLevels': ?pulumi.Input.mapOptionalInputValue<List<DlpCustomProfileSensitivityLevel>, List<Map<String, dynamic>>>(sensitivityLevels, (value) => pulumi.Input.encodeList<DlpCustomProfileSensitivityLevel, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sharedEntries': ?pulumi.Input.mapOptionalInputValue<List<DlpCustomProfileSharedEntry>, List<Map<String, dynamic>>>(sharedEntries, (value) => pulumi.Input.encodeList<DlpCustomProfileSharedEntry, Map<String, dynamic>>(value, (value) => value.toMap())),
      'type': ?type,
      'updatedAt': ?updatedAt,
    };
  }

  factory DlpCustomProfileState.fromMap(Map<String, dynamic> map) {
    return DlpCustomProfileState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      aiContextEnabled: (() { final guardedValue = map['aiContextEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      allowedMatchCount: (() { final guardedValue = map['allowedMatchCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      confidenceThreshold: (() { final guardedValue = map['confidenceThreshold']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      contextAwareness: (() { final guardedValue = map['contextAwareness']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DlpCustomProfileContextAwareness.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataClasses: (() { final guardedValue = map['dataClasses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      dataTags: (() { final guardedValue = map['dataTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      entries: (() { final guardedValue = map['entries']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DlpCustomProfileEntry>(guardedValue, (value) => DlpCustomProfileEntry.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ocrEnabled: (() { final guardedValue = map['ocrEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      openAccess: (() { final guardedValue = map['openAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      sensitivityLevels: (() { final guardedValue = map['sensitivityLevels']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DlpCustomProfileSensitivityLevel>(guardedValue, (value) => DlpCustomProfileSensitivityLevel.fromMap((value as Map).cast<String, dynamic>()))); })(),
      sharedEntries: (() { final guardedValue = map['sharedEntries']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DlpCustomProfileSharedEntry>(guardedValue, (value) => DlpCustomProfileSharedEntry.fromMap((value as Map).cast<String, dynamic>()))); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
