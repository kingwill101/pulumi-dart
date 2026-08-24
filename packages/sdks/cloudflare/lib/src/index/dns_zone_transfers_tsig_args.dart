// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_dns_zone_transfers_tsig_dns_zone_transfers_tsig_args_doc}
/// The set of arguments for DnsZoneTransfersTsig.
/// {@endtemplate}
/// {@macro pulumi_index_dns_zone_transfers_tsig_dns_zone_transfers_tsig_args_doc}
class DnsZoneTransfersTsigArgs {
  final pulumi.Input<String> accountId;
  /// TSIG algorithm.
  final pulumi.Input<String> algo;
  /// TSIG key name.
  final pulumi.Input<String> name;
  /// TSIG secret.
  final pulumi.Input<String> secret;

  /// Creates a new [DnsZoneTransfersTsigArgs].
  /// [accountId] Required.
  /// [algo] TSIG algorithm.
  /// [name] TSIG key name.
  /// [secret] TSIG secret.
  const DnsZoneTransfersTsigArgs({
    required this.accountId,
    required this.algo,
    required this.name,
    required this.secret,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'algo': algo,
      'name': name,
      'secret': secret,
    };
  }

  factory DnsZoneTransfersTsigArgs.fromMap(Map<String, dynamic> map) {
    return DnsZoneTransfersTsigArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      algo: pulumi.Input.fromValue(map['algo'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      secret: pulumi.Input.fromValue(map['secret'] as String),
    );
  }
}
