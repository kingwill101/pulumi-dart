// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dlp_predefined_profile_entry.dart';

/// Input properties used for looking up and filtering DlpPredefinedProfile resources.
class DlpPredefinedProfileState {
  final pulumi.Input<String?>? accountId;
  final pulumi.Input<bool?>? aiContextEnabled;
  final pulumi.Input<int?>? allowedMatchCount;
  final pulumi.Input<String?>? confidenceThreshold;
  final pulumi.Input<List<String>?>? enabledEntries;
  final pulumi.Input<List<DlpPredefinedProfileEntry>?>? entries;
  /// The name of the predefined profile.
  final pulumi.Input<String?>? name;
  final pulumi.Input<bool?>? ocrEnabled;
  /// Whether this profile can be accessed by anyone.
  final pulumi.Input<bool?>? openAccess;
  final pulumi.Input<String?>? profileId;

  /// Creates a new [DlpPredefinedProfileState].
  /// [accountId] Optional.
  /// [aiContextEnabled] Optional.
  /// [allowedMatchCount] Optional.
  /// [confidenceThreshold] Optional.
  /// [enabledEntries] Optional.
  /// [entries] Optional.
  /// [name] The name of the predefined profile.
  /// [ocrEnabled] Optional.
  /// [openAccess] Whether this profile can be accessed by anyone.
  /// [profileId] Optional.
  const DlpPredefinedProfileState({
    this.accountId,
    this.aiContextEnabled,
    this.allowedMatchCount,
    this.confidenceThreshold,
    this.enabledEntries,
    this.entries,
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
      'entries': ?pulumi.Input.mapOptionalInputValue<List<DlpPredefinedProfileEntry>, List<Map<String, dynamic>>>(entries, (value) => pulumi.Input.encodeList<DlpPredefinedProfileEntry, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'ocrEnabled': ?ocrEnabled,
      'openAccess': ?openAccess,
      'profileId': ?profileId,
    };
  }

  factory DlpPredefinedProfileState.fromMap(Map<String, dynamic> map) {
    return DlpPredefinedProfileState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      aiContextEnabled: (() { final guardedValue = map['aiContextEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      allowedMatchCount: (() { final guardedValue = map['allowedMatchCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      confidenceThreshold: (() { final guardedValue = map['confidenceThreshold']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabledEntries: (() { final guardedValue = map['enabledEntries']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      entries: (() { final guardedValue = map['entries']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DlpPredefinedProfileEntry>(guardedValue, (value) => DlpPredefinedProfileEntry.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ocrEnabled: (() { final guardedValue = map['ocrEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      openAccess: (() { final guardedValue = map['openAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      profileId: (() { final guardedValue = map['profileId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
