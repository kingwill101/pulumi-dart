// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_zero_trust_dlp_predefined_entry_zero_trust_dlp_predefined_entry_args_doc}
/// The set of arguments for ZeroTrustDlpPredefinedEntry.
/// {@endtemplate}
/// {@macro pulumi_index_zero_trust_dlp_predefined_entry_zero_trust_dlp_predefined_entry_args_doc}
class ZeroTrustDlpPredefinedEntryArgs {
  final pulumi.Input<String> accountId;
  final pulumi.Input<bool> enabled;
  final pulumi.Input<String> entryId;
  /// This field is not used as the owning profile.
  /// For predefined entries it is already set to a predefined profile.
  final pulumi.Input<String?>? profileId;

  /// Creates a new [ZeroTrustDlpPredefinedEntryArgs].
  /// [accountId] Required.
  /// [enabled] Required.
  /// [entryId] Required.
  /// [profileId] This field is not used as the owning profile.
  const ZeroTrustDlpPredefinedEntryArgs({
    required this.accountId,
    required this.enabled,
    required this.entryId,
    this.profileId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'enabled': enabled,
      'entryId': entryId,
      'profileId': ?profileId,
    };
  }

  factory ZeroTrustDlpPredefinedEntryArgs.fromMap(Map<String, dynamic> map) {
    return ZeroTrustDlpPredefinedEntryArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      entryId: pulumi.Input.fromValue(map['entryId'] as String),
      profileId: (() { final guardedValue = map['profileId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
