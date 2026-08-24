// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_byo_ip_prefixes_get_byo_ip_prefixes_args_doc}
/// Arguments for getByoIpPrefixes.
/// {@endtemplate}
/// {@macro pulumi_index_get_byo_ip_prefixes_get_byo_ip_prefixes_args_doc}
class GetByoIpPrefixesArgs {
  /// Identifier of a Cloudflare account.
  final pulumi.Input<String?>? accountId;
  /// Max items to fetch, default: 1000
  final pulumi.Input<int?>? maxItems;

  /// Creates a new [GetByoIpPrefixesArgs].
  /// [accountId] Identifier of a Cloudflare account.
  /// [maxItems] Max items to fetch, default: 1000
  const GetByoIpPrefixesArgs({
    this.accountId,
    this.maxItems,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'maxItems': ?maxItems,
    };
  }

  factory GetByoIpPrefixesArgs.fromMap(Map<String, dynamic> map) {
    return GetByoIpPrefixesArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
