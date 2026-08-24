// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_zone_hold_zone_hold_args_doc}
/// The set of arguments for ZoneHold.
/// {@endtemplate}
/// {@macro pulumi_index_zone_hold_zone_hold_args_doc}
class ZoneHoldArgs {
  /// If `holdAfter` is provided and future-dated, the hold will be temporarily disabled,
  /// then automatically re-enabled by the system at the time specified
  /// in this RFC3339-formatted timestamp. A past-dated `holdAfter` value will have
  /// no effect on an existing, enabled hold. Providing an empty string will set its value
  /// to the current time. Providing `null` will disable the hold indefinitely.
  final pulumi.Input<String?>? holdAfter;
  /// If `true`, the zone hold will extend to block any subdomain of the given zone, as well
  /// as SSL4SaaS Custom Hostnames. For example, a zone hold on a zone with the hostname
  /// 'example.com' and include_subdomains=true will block 'example.com',
  /// 'staging.example.com', 'api.staging.example.com', etc.
  final pulumi.Input<bool?>? includeSubdomains;
  /// Identifier.
  final pulumi.Input<String> zoneId;

  /// Creates a new [ZoneHoldArgs].
  /// [holdAfter] If `holdAfter` is provided and future-dated, the hold will be temporarily disabled,
  /// [includeSubdomains] If `true`, the zone hold will extend to block any subdomain of the given zone, as well
  /// [zoneId] Identifier.
  const ZoneHoldArgs({
    this.holdAfter,
    this.includeSubdomains,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'holdAfter': ?holdAfter,
      'includeSubdomains': ?includeSubdomains,
      'zoneId': zoneId,
    };
  }

  factory ZoneHoldArgs.fromMap(Map<String, dynamic> map) {
    return ZoneHoldArgs(
      holdAfter: (() { final guardedValue = map['holdAfter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      includeSubdomains: (() { final guardedValue = map['includeSubdomains']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}
