// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zone_lockdown_filter.dart';

/// {@template pulumi_index_get_zone_lockdown_get_zone_lockdown_args_doc}
/// Arguments for getZoneLockdown.
/// {@endtemplate}
/// {@macro pulumi_index_get_zone_lockdown_get_zone_lockdown_args_doc}
class GetZoneLockdownArgs {
  final pulumi.Input<GetZoneLockdownFilter?>? filter;
  /// The unique identifier of the Zone Lockdown rule.
  final pulumi.Input<String?>? lockDownsId;
  /// Defines an identifier.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [GetZoneLockdownArgs].
  /// [filter] Optional.
  /// [lockDownsId] The unique identifier of the Zone Lockdown rule.
  /// [zoneId] Defines an identifier.
  const GetZoneLockdownArgs({
    this.filter,
    this.lockDownsId,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filter': ?pulumi.Input.mapOptionalInputValue<GetZoneLockdownFilter, Map<String, dynamic>>(filter, (value) => value.toMap()),
      'lockDownsId': ?lockDownsId,
      'zoneId': ?zoneId,
    };
  }

  factory GetZoneLockdownArgs.fromMap(Map<String, dynamic> map) {
    return GetZoneLockdownArgs(
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetZoneLockdownFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      lockDownsId: (() { final guardedValue = map['lockDownsId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
