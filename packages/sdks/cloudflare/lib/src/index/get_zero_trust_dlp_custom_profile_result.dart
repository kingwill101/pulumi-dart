// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_dlp_custom_profile_context_awareness.dart';
import 'get_zero_trust_dlp_custom_profile_entry.dart';
import 'get_zero_trust_dlp_custom_profile_sensitivity_level.dart';
import 'get_zero_trust_dlp_custom_profile_shared_entry.dart';

/// Result data returned by getZeroTrustDlpCustomProfile.
class GetZeroTrustDlpCustomProfileResult {
  final String? accountId;
  final bool? aiContextEnabled;
  /// Related DLP policies will trigger when the match count exceeds the number set.
  final int? allowedMatchCount;
  /// Available values: "low", "medium", "high", "veryHigh".
  final String? confidenceThreshold;
  /// Scan the context of predefined entries to only return matches surrounded by keywords.
  final GetZeroTrustDlpCustomProfileContextAwareness? contextAwareness;
  /// When the profile was created.
  final String? createdAt;
  /// Data classes associated with this profile.
  final List<String>? dataClasses;
  /// Data tags associated with this profile.
  final List<String>? dataTags;
  /// The description of the profile.
  final String? description;
  final List<GetZeroTrustDlpCustomProfileEntry>? entries;
  /// The ID of this resource.
  final String? id;
  /// The name of the profile.
  final String? name;
  final bool? ocrEnabled;
  /// Whether this profile can be accessed by anyone.
  final bool? openAccess;
  final String? profileId;
  /// Sensitivity levels associated with this profile.
  final List<GetZeroTrustDlpCustomProfileSensitivityLevel>? sensitivityLevels;
  final List<GetZeroTrustDlpCustomProfileSharedEntry>? sharedEntries;
  /// Available values: "custom", "predefined", "integration".
  final String? type;
  /// When the profile was lasted updated.
  final String? updatedAt;

  /// Creates a new [GetZeroTrustDlpCustomProfileResult].
  /// [accountId] Optional.
  /// [aiContextEnabled] Optional.
  /// [allowedMatchCount] Related DLP policies will trigger when the match count exceeds the number set.
  /// [confidenceThreshold] Available values: "low", "medium", "high", "veryHigh".
  /// [contextAwareness] Scan the context of predefined entries to only return matches surrounded by keywords.
  /// [createdAt] When the profile was created.
  /// [dataClasses] Data classes associated with this profile.
  /// [dataTags] Data tags associated with this profile.
  /// [description] The description of the profile.
  /// [entries] Optional.
  /// [id] The ID of this resource.
  /// [name] The name of the profile.
  /// [ocrEnabled] Optional.
  /// [openAccess] Whether this profile can be accessed by anyone.
  /// [profileId] Optional.
  /// [sensitivityLevels] Sensitivity levels associated with this profile.
  /// [sharedEntries] Optional.
  /// [type] Available values: "custom", "predefined", "integration".
  /// [updatedAt] When the profile was lasted updated.
  const GetZeroTrustDlpCustomProfileResult({
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
    this.id,
    this.name,
    this.ocrEnabled,
    this.openAccess,
    this.profileId,
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
      'contextAwareness': ?contextAwareness?.toMap(),
      'createdAt': ?createdAt,
      'dataClasses': ?dataClasses,
      'dataTags': ?dataTags,
      'description': ?description,
      'entries': ?(() { final guardedValue = entries; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetZeroTrustDlpCustomProfileEntry, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'name': ?name,
      'ocrEnabled': ?ocrEnabled,
      'openAccess': ?openAccess,
      'profileId': ?profileId,
      'sensitivityLevels': ?(() { final guardedValue = sensitivityLevels; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetZeroTrustDlpCustomProfileSensitivityLevel, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'sharedEntries': ?(() { final guardedValue = sharedEntries; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetZeroTrustDlpCustomProfileSharedEntry, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'type': ?type,
      'updatedAt': ?updatedAt,
    };
  }

  factory GetZeroTrustDlpCustomProfileResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustDlpCustomProfileResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      aiContextEnabled: (() { final guardedValue = map['aiContextEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      allowedMatchCount: (() { final guardedValue = map['allowedMatchCount']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      confidenceThreshold: (() { final guardedValue = map['confidenceThreshold']; if (guardedValue == null) return null; return guardedValue as String; })(),
      contextAwareness: (() { final guardedValue = map['contextAwareness']; if (guardedValue == null) return null; return GetZeroTrustDlpCustomProfileContextAwareness.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dataClasses: (() { final guardedValue = map['dataClasses']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      dataTags: (() { final guardedValue = map['dataTags']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      entries: (() { final guardedValue = map['entries']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetZeroTrustDlpCustomProfileEntry>(guardedValue, (value) => GetZeroTrustDlpCustomProfileEntry.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ocrEnabled: (() { final guardedValue = map['ocrEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      openAccess: (() { final guardedValue = map['openAccess']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      profileId: (() { final guardedValue = map['profileId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sensitivityLevels: (() { final guardedValue = map['sensitivityLevels']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetZeroTrustDlpCustomProfileSensitivityLevel>(guardedValue, (value) => GetZeroTrustDlpCustomProfileSensitivityLevel.fromMap((value as Map).cast<String, dynamic>())); })(),
      sharedEntries: (() { final guardedValue = map['sharedEntries']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetZeroTrustDlpCustomProfileSharedEntry>(guardedValue, (value) => GetZeroTrustDlpCustomProfileSharedEntry.fromMap((value as Map).cast<String, dynamic>())); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
