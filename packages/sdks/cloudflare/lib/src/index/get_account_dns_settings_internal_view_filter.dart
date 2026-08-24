// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_account_dns_settings_internal_view_filter_name.dart';

class GetAccountDnsSettingsInternalViewFilter {
  /// Direction to order DNS views in.
  /// Available values: "asc", "desc".
  final pulumi.Input<String> direction;
  /// Whether to match all search requirements or at least one (any). If set to `all`, acts like a logical AND between filters. If set to `any`, acts like a logical OR instead.
  /// Available values: "any", "all".
  final pulumi.Input<String> match;
  final pulumi.Input<GetAccountDnsSettingsInternalViewFilterName?>? name;
  /// Field to order DNS views by.
  /// Available values: "name", "created*on", "modified*on".
  final pulumi.Input<String?>? order;
  /// A zone ID that exists in the zones list for the view.
  final pulumi.Input<String?>? zoneId;
  /// A zone name that exists in the zones list for the view.
  final pulumi.Input<String?>? zoneName;

  /// Creates a new [GetAccountDnsSettingsInternalViewFilter].
  /// [direction] Direction to order DNS views in.
  /// [match] Whether to match all search requirements or at least one (any). If set to `all`, acts like a logical AND between filters. If set to `any`, acts like a logical OR instead.
  /// [name] Optional.
  /// [order] Field to order DNS views by.
  /// [zoneId] A zone ID that exists in the zones list for the view.
  /// [zoneName] A zone name that exists in the zones list for the view.
  const GetAccountDnsSettingsInternalViewFilter({
    required this.direction,
    required this.match,
    this.name,
    this.order,
    this.zoneId,
    this.zoneName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'direction': direction,
      'match': match,
      'name': ?pulumi.Input.mapOptionalInputValue<GetAccountDnsSettingsInternalViewFilterName, Map<String, dynamic>>(name, (value) => value.toMap()),
      'order': ?order,
      'zoneId': ?zoneId,
      'zoneName': ?zoneName,
    };
  }

  factory GetAccountDnsSettingsInternalViewFilter.fromMap(Map<String, dynamic> map) {
    return GetAccountDnsSettingsInternalViewFilter(
      direction: pulumi.Input.fromValue(map['direction'] as String),
      match: pulumi.Input.fromValue(map['match'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetAccountDnsSettingsInternalViewFilterName.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      order: (() { final guardedValue = map['order']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneName: (() { final guardedValue = map['zoneName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
