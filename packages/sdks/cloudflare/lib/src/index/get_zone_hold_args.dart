// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_zone_hold_get_zone_hold_args_doc}
/// Arguments for getZoneHold.
/// {@endtemplate}
/// {@macro pulumi_index_get_zone_hold_get_zone_hold_args_doc}
class GetZoneHoldArgs {
  /// Identifier.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [GetZoneHoldArgs].
  /// [zoneId] Identifier.
  const GetZoneHoldArgs({
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'zoneId': ?zoneId,
    };
  }

  factory GetZoneHoldArgs.fromMap(Map<String, dynamic> map) {
    return GetZoneHoldArgs(
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
