// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_magic_transit_cf1_sites_get_magic_transit_cf1_sites_args_doc}
/// Arguments for getMagicTransitCf1Sites.
/// {@endtemplate}
/// {@macro pulumi_index_get_magic_transit_cf1_sites_get_magic_transit_cf1_sites_args_doc}
class GetMagicTransitCf1SitesArgs {
  /// Identifier
  final pulumi.Input<String> accountId;
  /// Max items to fetch, default: 1000
  final pulumi.Input<int?>? maxItems;

  /// Creates a new [GetMagicTransitCf1SitesArgs].
  /// [accountId] Identifier
  /// [maxItems] Max items to fetch, default: 1000
  const GetMagicTransitCf1SitesArgs({
    required this.accountId,
    this.maxItems,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'maxItems': ?maxItems,
    };
  }

  factory GetMagicTransitCf1SitesArgs.fromMap(Map<String, dynamic> map) {
    return GetMagicTransitCf1SitesArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
