// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_byo_ip_prefix_get_byo_ip_prefix_args_doc}
/// Arguments for getByoIpPrefix.
/// {@endtemplate}
/// {@macro pulumi_index_get_byo_ip_prefix_get_byo_ip_prefix_args_doc}
class GetByoIpPrefixArgs {
  /// Identifier of a Cloudflare account.
  final pulumi.Input<String?>? accountId;
  /// Identifier of an IP Prefix.
  final pulumi.Input<String> prefixId;

  /// Creates a new [GetByoIpPrefixArgs].
  /// [accountId] Identifier of a Cloudflare account.
  /// [prefixId] Identifier of an IP Prefix.
  const GetByoIpPrefixArgs({
    this.accountId,
    required this.prefixId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'prefixId': prefixId,
    };
  }

  factory GetByoIpPrefixArgs.fromMap(Map<String, dynamic> map) {
    return GetByoIpPrefixArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      prefixId: pulumi.Input.fromValue(map['prefixId'] as String),
    );
  }
}
