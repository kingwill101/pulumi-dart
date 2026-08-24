// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_zone_dns_settings_get_zone_dns_settings_args_doc}
/// Arguments for getZoneDnsSettings.
/// {@endtemplate}
/// {@macro pulumi_index_get_zone_dns_settings_get_zone_dns_settings_args_doc}
class GetZoneDnsSettingsArgs {
  /// Identifier.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [GetZoneDnsSettingsArgs].
  /// [zoneId] Identifier.
  const GetZoneDnsSettingsArgs({
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'zoneId': ?zoneId,
    };
  }

  factory GetZoneDnsSettingsArgs.fromMap(Map<String, dynamic> map) {
    return GetZoneDnsSettingsArgs(
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
