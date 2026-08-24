// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ZoneAutoOriginTlsKex resources.
class ZoneAutoOriginTlsKexState {
  /// Controls enablement of Auto-Origin TLS KEX selection for the zone.
  final pulumi.Input<bool?>? enabled;
  /// Last time this setting was modified.
  final pulumi.Input<String?>? modifiedOn;
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [ZoneAutoOriginTlsKexState].
  /// [enabled] Controls enablement of Auto-Origin TLS KEX selection for the zone.
  /// [modifiedOn] Last time this setting was modified.
  /// [zoneId] Optional.
  const ZoneAutoOriginTlsKexState({
    this.enabled,
    this.modifiedOn,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'modifiedOn': ?modifiedOn,
      'zoneId': ?zoneId,
    };
  }

  factory ZoneAutoOriginTlsKexState.fromMap(Map<String, dynamic> map) {
    return ZoneAutoOriginTlsKexState(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      modifiedOn: (() { final guardedValue = map['modifiedOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
