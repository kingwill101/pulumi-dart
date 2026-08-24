// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_dlp_predefined_profile_entry.dart';

/// {@template pulumi_index_zero_trust_dlp_predefined_profile_zero_trust_dlp_predefined_profile_args_doc}
/// The set of arguments for ZeroTrustDlpPredefinedProfile.
/// {@endtemplate}
/// {@macro pulumi_index_zero_trust_dlp_predefined_profile_zero_trust_dlp_predefined_profile_args_doc}
class ZeroTrustDlpPredefinedProfileArgs {
  final pulumi.Input<String> accountId;
  final pulumi.Input<bool?>? aiContextEnabled;
  final pulumi.Input<int?>? allowedMatchCount;
  final pulumi.Input<String?>? confidenceThreshold;
  final pulumi.Input<List<String>?>? enabledEntries;
  final pulumi.Input<List<ZeroTrustDlpPredefinedProfileEntry>?>? entries;
  final pulumi.Input<bool?>? ocrEnabled;
  final pulumi.Input<String> profileId;

  /// Creates a new [ZeroTrustDlpPredefinedProfileArgs].
  /// [accountId] Required.
  /// [aiContextEnabled] Optional.
  /// [allowedMatchCount] Optional.
  /// [confidenceThreshold] Optional.
  /// [enabledEntries] Optional.
  /// [entries] Optional.
  /// [ocrEnabled] Optional.
  /// [profileId] Required.
  const ZeroTrustDlpPredefinedProfileArgs({
    required this.accountId,
    this.aiContextEnabled,
    this.allowedMatchCount,
    this.confidenceThreshold,
    this.enabledEntries,
    this.entries,
    this.ocrEnabled,
    required this.profileId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'aiContextEnabled': ?aiContextEnabled,
      'allowedMatchCount': ?allowedMatchCount,
      'confidenceThreshold': ?confidenceThreshold,
      'enabledEntries': ?enabledEntries,
      'entries': ?pulumi.Input.mapOptionalInputValue<List<ZeroTrustDlpPredefinedProfileEntry>, List<Map<String, dynamic>>>(entries, (value) => pulumi.Input.encodeList<ZeroTrustDlpPredefinedProfileEntry, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ocrEnabled': ?ocrEnabled,
      'profileId': profileId,
    };
  }

  factory ZeroTrustDlpPredefinedProfileArgs.fromMap(Map<String, dynamic> map) {
    return ZeroTrustDlpPredefinedProfileArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      aiContextEnabled: (() { final guardedValue = map['aiContextEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      allowedMatchCount: (() { final guardedValue = map['allowedMatchCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      confidenceThreshold: (() { final guardedValue = map['confidenceThreshold']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabledEntries: (() { final guardedValue = map['enabledEntries']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      entries: (() { final guardedValue = map['entries']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ZeroTrustDlpPredefinedProfileEntry>(guardedValue, (value) => ZeroTrustDlpPredefinedProfileEntry.fromMap((value as Map).cast<String, dynamic>()))); })(),
      ocrEnabled: (() { final guardedValue = map['ocrEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      profileId: pulumi.Input.fromValue(map['profileId'] as String),
    );
  }
}
