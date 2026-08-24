// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_magic_transit_site_filter.dart';

/// {@template pulumi_index_get_magic_transit_site_get_magic_transit_site_args_doc}
/// Arguments for getMagicTransitSite.
/// {@endtemplate}
/// {@macro pulumi_index_get_magic_transit_site_get_magic_transit_site_args_doc}
class GetMagicTransitSiteArgs {
  /// Identifier
  final pulumi.Input<String?>? accountId;
  final pulumi.Input<GetMagicTransitSiteFilter?>? filter;
  /// Identifier
  final pulumi.Input<String?>? siteId;

  /// Creates a new [GetMagicTransitSiteArgs].
  /// [accountId] Identifier
  /// [filter] Optional.
  /// [siteId] Identifier
  const GetMagicTransitSiteArgs({
    this.accountId,
    this.filter,
    this.siteId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'filter': ?pulumi.Input.mapOptionalInputValue<GetMagicTransitSiteFilter, Map<String, dynamic>>(filter, (value) => value.toMap()),
      'siteId': ?siteId,
    };
  }

  factory GetMagicTransitSiteArgs.fromMap(Map<String, dynamic> map) {
    return GetMagicTransitSiteArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetMagicTransitSiteFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      siteId: (() { final guardedValue = map['siteId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
