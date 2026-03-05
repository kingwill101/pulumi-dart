// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SettingsAccessSettingsAllowedDomainsSettings {
  /// List of trusted domains.
  final pulumi.Input<List<String>>? domains;
  /// Configuration for customers to opt in for the feature.
  final pulumi.Input<bool>? enable;

  /// Creates a new [SettingsAccessSettingsAllowedDomainsSettings].
  /// [domains] List of trusted domains.
  /// [enable] Configuration for customers to opt in for the feature.
  SettingsAccessSettingsAllowedDomainsSettings({
    this.domains,
    this.enable,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domains': ?domains,
      'enable': ?enable,
    };
  }

  factory SettingsAccessSettingsAllowedDomainsSettings.fromMap(Map<String, dynamic> map) {
    return SettingsAccessSettingsAllowedDomainsSettings(
      domains: (() { final guardedValue = map['domains']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      enable: (() { final guardedValue = map['enable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

