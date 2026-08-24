// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_universal_ssl_setting_get_universal_ssl_setting_args_doc}
/// Arguments for getUniversalSslSetting.
/// {@endtemplate}
/// {@macro pulumi_index_get_universal_ssl_setting_get_universal_ssl_setting_args_doc}
class GetUniversalSslSettingArgs {
  /// Identifier.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [GetUniversalSslSettingArgs].
  /// [zoneId] Identifier.
  const GetUniversalSslSettingArgs({
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'zoneId': ?zoneId,
    };
  }

  factory GetUniversalSslSettingArgs.fromMap(Map<String, dynamic> map) {
    return GetUniversalSslSettingArgs(
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
