// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_dlp_predefined_profile_entry.dart';

/// Result data returned by getZeroTrustDlpPredefinedProfile.
class GetZeroTrustDlpPredefinedProfileResult {
  final String? accountId;
  final bool? aiContextEnabled;
  final int? allowedMatchCount;
  final String? confidenceThreshold;
  /// Entries to enable for this predefined profile. Any entries not provided will be disabled.
  final List<String>? enabledEntries;
  /// This field has been deprecated for `enabledEntries`.
  final List<GetZeroTrustDlpPredefinedProfileEntry>? entries;
  /// The ID of this resource.
  final String? id;
  /// The name of the predefined profile.
  final String? name;
  final bool? ocrEnabled;
  /// Whether this profile can be accessed by anyone.
  final bool? openAccess;
  final String? profileId;

  /// Creates a new [GetZeroTrustDlpPredefinedProfileResult].
  /// [accountId] Optional.
  /// [aiContextEnabled] Optional.
  /// [allowedMatchCount] Optional.
  /// [confidenceThreshold] Optional.
  /// [enabledEntries] Entries to enable for this predefined profile. Any entries not provided will be disabled.
  /// [entries] This field has been deprecated for `enabledEntries`.
  /// [id] The ID of this resource.
  /// [name] The name of the predefined profile.
  /// [ocrEnabled] Optional.
  /// [openAccess] Whether this profile can be accessed by anyone.
  /// [profileId] Optional.
  const GetZeroTrustDlpPredefinedProfileResult({
    this.accountId,
    this.aiContextEnabled,
    this.allowedMatchCount,
    this.confidenceThreshold,
    this.enabledEntries,
    this.entries,
    this.id,
    this.name,
    this.ocrEnabled,
    this.openAccess,
    this.profileId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'aiContextEnabled': ?aiContextEnabled,
      'allowedMatchCount': ?allowedMatchCount,
      'confidenceThreshold': ?confidenceThreshold,
      'enabledEntries': ?enabledEntries,
      'entries': ?(() { final guardedValue = entries; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetZeroTrustDlpPredefinedProfileEntry, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'name': ?name,
      'ocrEnabled': ?ocrEnabled,
      'openAccess': ?openAccess,
      'profileId': ?profileId,
    };
  }

  factory GetZeroTrustDlpPredefinedProfileResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustDlpPredefinedProfileResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      aiContextEnabled: (() { final guardedValue = map['aiContextEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      allowedMatchCount: (() { final guardedValue = map['allowedMatchCount']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      confidenceThreshold: (() { final guardedValue = map['confidenceThreshold']; if (guardedValue == null) return null; return guardedValue as String; })(),
      enabledEntries: (() { final guardedValue = map['enabledEntries']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      entries: (() { final guardedValue = map['entries']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetZeroTrustDlpPredefinedProfileEntry>(guardedValue, (value) => GetZeroTrustDlpPredefinedProfileEntry.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ocrEnabled: (() { final guardedValue = map['ocrEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      openAccess: (() { final guardedValue = map['openAccess']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      profileId: (() { final guardedValue = map['profileId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
