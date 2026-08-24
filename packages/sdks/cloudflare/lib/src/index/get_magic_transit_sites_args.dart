// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_magic_transit_sites_get_magic_transit_sites_args_doc}
/// Arguments for getMagicTransitSites.
/// {@endtemplate}
/// {@macro pulumi_index_get_magic_transit_sites_get_magic_transit_sites_args_doc}
class GetMagicTransitSitesArgs {
  /// Identifier
  final pulumi.Input<String?>? accountId;
  /// Identifier
  final pulumi.Input<String?>? connectorid;
  /// Max items to fetch, default: 1000
  final pulumi.Input<int?>? maxItems;

  /// Creates a new [GetMagicTransitSitesArgs].
  /// [accountId] Identifier
  /// [connectorid] Identifier
  /// [maxItems] Max items to fetch, default: 1000
  const GetMagicTransitSitesArgs({
    this.accountId,
    this.connectorid,
    this.maxItems,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'connectorid': ?connectorid,
      'maxItems': ?maxItems,
    };
  }

  factory GetMagicTransitSitesArgs.fromMap(Map<String, dynamic> map) {
    return GetMagicTransitSitesArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      connectorid: (() { final guardedValue = map['connectorid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
