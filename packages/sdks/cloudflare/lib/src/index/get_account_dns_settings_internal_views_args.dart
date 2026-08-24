// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_account_dns_settings_internal_views_name.dart';

/// {@template pulumi_index_get_account_dns_settings_internal_views_get_account_dns_settings_internal_views_args_doc}
/// Arguments for getAccountDnsSettingsInternalViews.
/// {@endtemplate}
/// {@macro pulumi_index_get_account_dns_settings_internal_views_get_account_dns_settings_internal_views_args_doc}
class GetAccountDnsSettingsInternalViewsArgs {
  /// Identifier.
  final pulumi.Input<String?>? accountId;
  /// Direction to order DNS views in.
  /// Available values: "asc", "desc".
  final pulumi.Input<String?>? direction;
  /// Whether to match all search requirements or at least one (any). If set to `all`, acts like a logical AND between filters. If set to `any`, acts like a logical OR instead.
  /// Available values: "any", "all".
  final pulumi.Input<String?>? match;
  /// Max items to fetch, default: 1000
  final pulumi.Input<int?>? maxItems;
  final pulumi.Input<GetAccountDnsSettingsInternalViewsName?>? name;
  /// Field to order DNS views by.
  /// Available values: "name", "created*on", "modified*on".
  final pulumi.Input<String?>? order;
  /// A zone ID that exists in the zones list for the view.
  final pulumi.Input<String?>? zoneId;
  /// A zone name that exists in the zones list for the view.
  final pulumi.Input<String?>? zoneName;

  /// Creates a new [GetAccountDnsSettingsInternalViewsArgs].
  /// [accountId] Identifier.
  /// [direction] Direction to order DNS views in.
  /// [match] Whether to match all search requirements or at least one (any). If set to `all`, acts like a logical AND between filters. If set to `any`, acts like a logical OR instead.
  /// [maxItems] Max items to fetch, default: 1000
  /// [name] Optional.
  /// [order] Field to order DNS views by.
  /// [zoneId] A zone ID that exists in the zones list for the view.
  /// [zoneName] A zone name that exists in the zones list for the view.
  const GetAccountDnsSettingsInternalViewsArgs({
    this.accountId,
    this.direction,
    this.match,
    this.maxItems,
    this.name,
    this.order,
    this.zoneId,
    this.zoneName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'direction': ?direction,
      'match': ?match,
      'maxItems': ?maxItems,
      'name': ?pulumi.Input.mapOptionalInputValue<GetAccountDnsSettingsInternalViewsName, Map<String, dynamic>>(name, (value) => value.toMap()),
      'order': ?order,
      'zoneId': ?zoneId,
      'zoneName': ?zoneName,
    };
  }

  factory GetAccountDnsSettingsInternalViewsArgs.fromMap(Map<String, dynamic> map) {
    return GetAccountDnsSettingsInternalViewsArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      direction: (() { final guardedValue = map['direction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      match: (() { final guardedValue = map['match']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetAccountDnsSettingsInternalViewsName.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      order: (() { final guardedValue = map['order']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneName: (() { final guardedValue = map['zoneName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
