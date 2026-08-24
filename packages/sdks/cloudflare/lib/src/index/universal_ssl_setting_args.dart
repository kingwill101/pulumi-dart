// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_universal_ssl_setting_universal_ssl_setting_args_doc}
/// The set of arguments for UniversalSslSetting.
/// {@endtemplate}
/// {@macro pulumi_index_universal_ssl_setting_universal_ssl_setting_args_doc}
class UniversalSslSettingArgs {
  /// Disabling Universal SSL removes any currently active Universal SSL certificates for your zone from the edge and prevents any future Universal SSL certificates from being ordered. If there are no advanced certificates or custom certificates uploaded for the domain, visitors will be unable to access the domain over HTTPS.
  final pulumi.Input<bool?>? enabled;
  /// Identifier.
  final pulumi.Input<String> zoneId;

  /// Creates a new [UniversalSslSettingArgs].
  /// [enabled] Disabling Universal SSL removes any currently active Universal SSL certificates for your zone from the edge and prevents any future Universal SSL certificates from being ordered. If there are no advanced certificates or custom certificates uploaded for the domain, visitors will be unable to access the domain over HTTPS.
  /// [zoneId] Identifier.
  const UniversalSslSettingArgs({
    this.enabled,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'zoneId': zoneId,
    };
  }

  factory UniversalSslSettingArgs.fromMap(Map<String, dynamic> map) {
    return UniversalSslSettingArgs(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}
