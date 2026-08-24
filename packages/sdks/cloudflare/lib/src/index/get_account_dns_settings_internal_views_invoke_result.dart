// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_account_dns_settings_internal_views_name.dart';
import 'get_account_dns_settings_internal_views_result.dart';

/// Result data returned by getAccountDnsSettingsInternalViews.
class GetAccountDnsSettingsInternalViewsInvokeResult {
  /// Identifier.
  final String? accountId;
  /// Direction to order DNS views in.
  /// Available values: "asc", "desc".
  final String? direction;
  /// Whether to match all search requirements or at least one (any). If set to `all`, acts like a logical AND between filters. If set to `any`, acts like a logical OR instead.
  /// Available values: "any", "all".
  final String? match;
  /// Max items to fetch, default: 1000
  final int? maxItems;
  final GetAccountDnsSettingsInternalViewsName? name;
  /// Field to order DNS views by.
  /// Available values: "name", "created*on", "modified*on".
  final String? order;
  /// The items returned by the data source
  final List<GetAccountDnsSettingsInternalViewsResult>? results;
  /// A zone ID that exists in the zones list for the view.
  final String? zoneId;
  /// A zone name that exists in the zones list for the view.
  final String? zoneName;

  /// Creates a new [GetAccountDnsSettingsInternalViewsInvokeResult].
  /// [accountId] Identifier.
  /// [direction] Direction to order DNS views in.
  /// [match] Whether to match all search requirements or at least one (any). If set to `all`, acts like a logical AND between filters. If set to `any`, acts like a logical OR instead.
  /// [maxItems] Max items to fetch, default: 1000
  /// [name] Optional.
  /// [order] Field to order DNS views by.
  /// [results] The items returned by the data source
  /// [zoneId] A zone ID that exists in the zones list for the view.
  /// [zoneName] A zone name that exists in the zones list for the view.
  const GetAccountDnsSettingsInternalViewsInvokeResult({
    this.accountId,
    this.direction,
    this.match,
    this.maxItems,
    this.name,
    this.order,
    this.results,
    this.zoneId,
    this.zoneName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'direction': ?direction,
      'match': ?match,
      'maxItems': ?maxItems,
      'name': ?name?.toMap(),
      'order': ?order,
      'results': ?(() { final guardedValue = results; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAccountDnsSettingsInternalViewsResult, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'zoneId': ?zoneId,
      'zoneName': ?zoneName,
    };
  }

  factory GetAccountDnsSettingsInternalViewsInvokeResult.fromMap(Map<String, dynamic> map) {
    return GetAccountDnsSettingsInternalViewsInvokeResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      direction: (() { final guardedValue = map['direction']; if (guardedValue == null) return null; return guardedValue as String; })(),
      match: (() { final guardedValue = map['match']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return GetAccountDnsSettingsInternalViewsName.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      order: (() { final guardedValue = map['order']; if (guardedValue == null) return null; return guardedValue as String; })(),
      results: (() { final guardedValue = map['results']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAccountDnsSettingsInternalViewsResult>(guardedValue, (value) => GetAccountDnsSettingsInternalViewsResult.fromMap((value as Map).cast<String, dynamic>())); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zoneName: (() { final guardedValue = map['zoneName']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
