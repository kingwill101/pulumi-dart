// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_zero_trust_dlp_entry_get_zero_trust_dlp_entry_args_doc}
/// Arguments for getZeroTrustDlpEntry.
/// {@endtemplate}
/// {@macro pulumi_index_get_zero_trust_dlp_entry_get_zero_trust_dlp_entry_args_doc}
class GetZeroTrustDlpEntryArgs {
  final pulumi.Input<String?>? accountId;
  final pulumi.Input<String> entryId;

  /// Creates a new [GetZeroTrustDlpEntryArgs].
  /// [accountId] Optional.
  /// [entryId] Required.
  const GetZeroTrustDlpEntryArgs({
    this.accountId,
    required this.entryId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'entryId': entryId,
    };
  }

  factory GetZeroTrustDlpEntryArgs.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustDlpEntryArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      entryId: pulumi.Input.fromValue(map['entryId'] as String),
    );
  }
}
