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
  /// For `type: custom`: Related DLP policies will trigger when the match count exceeds the number set.
  final int? allowedMatchCount;
  /// Available values: "low", "medium", "high", "veryHigh".
  final String? confidenceThreshold;
  /// For `type: custom`: Scan the context of predefined entries to only return matches surrounded by keywords.
  final GetZeroTrustDlpCustomProfileContextAwareness? contextAwareness;
  /// For `type: custom`: When the profile was created.
  final String? createdAt;
  /// For `type: custom`: Data classes associated with this profile.
  final List<String>? dataClasses;
  /// For `type: custom`: Data tags associated with this profile.
  final List<String>? dataTags;
  /// For `type: custom` or `type: integration`: The description of the profile.
  final String? description;
  final List<GetZeroTrustDlpCustomProfileEntry>? entries;
  /// The ID of this resource.
  final String? id;
  final String? integrationId;
  /// For `type: custom`: The name of the profile.
  final String? name;
  final bool? ocrEnabled;
  final bool? openAccess;
  final String? profileId;
  final List<GetZeroTrustDlpCustomProfileSensitivityLevel>? sensitivityLevels;
  final List<GetZeroTrustDlpCustomProfileSharedEntry>? sharedEntries;
  final String? type;
  final String? updatedAt;

  /// Creates a new [GetZeroTrustDlpCustomProfileResult].
  /// [accountId] Optional.
  /// [aiContextEnabled] Optional.
  /// [allowedMatchCount] For `type: custom`: Related DLP policies will trigger when the match count exceeds the number set.
  /// [confidenceThreshold] Available values: "low", "medium", "high", "veryHigh".
  /// [contextAwareness] For `type: custom`: Scan the context of predefined entries to only return matches surrounded by keywords.
  /// [createdAt] For `type: custom`: When the profile was created.
  /// [dataClasses] For `type: custom`: Data classes associated with this profile.
  /// [dataTags] For `type: custom`: Data tags associated with this profile.
  /// [description] For `type: custom` or `type: integration`: The description of the profile.
  /// [entries] Optional.
  /// [id] The ID of this resource.
  /// [integrationId] Optional.
  /// [name] For `type: custom`: The name of the profile.
  /// [ocrEnabled] Optional.
  /// [openAccess] Optional.
  /// [profileId] Optional.
  /// [sensitivityLevels] Optional.
  /// [sharedEntries] Optional.
  /// [type] Optional.
  /// [updatedAt] Optional.
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
    this.integrationId,
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
      'integrationId': ?integrationId,
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
      allowedMatchCount: (() { final guardedValue = map['allowedMatchCount']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      confidenceThreshold: (() { final guardedValue = map['confidenceThreshold']; if (guardedValue == null) return null; return guardedValue as String; })(),
      contextAwareness: (() { final guardedValue = map['contextAwareness']; if (guardedValue == null) return null; return GetZeroTrustDlpCustomProfileContextAwareness.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dataClasses: (() { final guardedValue = map['dataClasses']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      dataTags: (() { final guardedValue = map['dataTags']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      entries: (() { final guardedValue = map['entries']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetZeroTrustDlpCustomProfileEntry>(guardedValue, (value) => GetZeroTrustDlpCustomProfileEntry.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      integrationId: (() { final guardedValue = map['integrationId']; if (guardedValue == null) return null; return guardedValue as String; })(),
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
