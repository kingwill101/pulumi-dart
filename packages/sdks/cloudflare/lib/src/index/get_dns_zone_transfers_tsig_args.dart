// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_dns_zone_transfers_tsig_get_dns_zone_transfers_tsig_args_doc}
/// Arguments for getDnsZoneTransfersTsig.
/// {@endtemplate}
/// {@macro pulumi_index_get_dns_zone_transfers_tsig_get_dns_zone_transfers_tsig_args_doc}
class GetDnsZoneTransfersTsigArgs {
  final pulumi.Input<String?>? accountId;
  final pulumi.Input<String> tsigId;

  /// Creates a new [GetDnsZoneTransfersTsigArgs].
  /// [accountId] Optional.
  /// [tsigId] Required.
  const GetDnsZoneTransfersTsigArgs({
    this.accountId,
    required this.tsigId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'tsigId': tsigId,
    };
  }

  factory GetDnsZoneTransfersTsigArgs.fromMap(Map<String, dynamic> map) {
    return GetDnsZoneTransfersTsigArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tsigId: pulumi.Input.fromValue(map['tsigId'] as String),
    );
  }
}
