// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ZoneHold resources.
class ZoneHoldState {
  final pulumi.Input<bool?>? hold;
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
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [ZoneHoldState].
  /// [hold] Optional.
  /// [holdAfter] If `holdAfter` is provided and future-dated, the hold will be temporarily disabled,
  /// [includeSubdomains] If `true`, the zone hold will extend to block any subdomain of the given zone, as well
  /// [zoneId] Identifier.
  const ZoneHoldState({
    this.hold,
    this.holdAfter,
    this.includeSubdomains,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hold': ?hold,
      'holdAfter': ?holdAfter,
      'includeSubdomains': ?includeSubdomains,
      'zoneId': ?zoneId,
    };
  }

  factory ZoneHoldState.fromMap(Map<String, dynamic> map) {
    return ZoneHoldState(
      hold: (() { final guardedValue = map['hold']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      holdAfter: (() { final guardedValue = map['holdAfter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      includeSubdomains: (() { final guardedValue = map['includeSubdomains']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
