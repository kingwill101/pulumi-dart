// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_zero_trust_dlp_integration_entry_get_zero_trust_dlp_integration_entry_args_doc}
/// Arguments for getZeroTrustDlpIntegrationEntry.
/// {@endtemplate}
/// {@macro pulumi_index_get_zero_trust_dlp_integration_entry_get_zero_trust_dlp_integration_entry_args_doc}
class GetZeroTrustDlpIntegrationEntryArgs {
  final pulumi.Input<String?>? accountId;
  final pulumi.Input<String> entryId;

  /// Creates a new [GetZeroTrustDlpIntegrationEntryArgs].
  /// [accountId] Optional.
  /// [entryId] Required.
  const GetZeroTrustDlpIntegrationEntryArgs({
    this.accountId,
    required this.entryId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'entryId': entryId,
    };
  }

  factory GetZeroTrustDlpIntegrationEntryArgs.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustDlpIntegrationEntryArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      entryId: pulumi.Input.fromValue(map['entryId'] as String),
    );
  }
}
