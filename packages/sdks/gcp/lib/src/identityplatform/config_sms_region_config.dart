// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'config_sms_region_config_allow_by_default.dart';
import 'config_sms_region_config_allowlist_only.dart';

class ConfigSmsRegionConfig {
  /// A policy of allowing SMS to every region by default and adding disallowed regions to a disallow list.
  /// Structure is documented below.
  final pulumi.Input<ConfigSmsRegionConfigAllowByDefault>? allowByDefault;
  /// A policy of only allowing regions by explicitly adding them to an allowlist.
  /// Structure is documented below.
  final pulumi.Input<ConfigSmsRegionConfigAllowlistOnly>? allowlistOnly;

  /// Creates a new [ConfigSmsRegionConfig].
  /// [allowByDefault] A policy of allowing SMS to every region by default and adding disallowed regions to a disallow list.
  /// [allowlistOnly] A policy of only allowing regions by explicitly adding them to an allowlist.
  ConfigSmsRegionConfig({
    this.allowByDefault,
    this.allowlistOnly,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowByDefault': ?pulumi.Input.mapOptionalInputValue<ConfigSmsRegionConfigAllowByDefault, Map<String, dynamic>>(allowByDefault, (value) => value.toMap()),
      'allowlistOnly': ?pulumi.Input.mapOptionalInputValue<ConfigSmsRegionConfigAllowlistOnly, Map<String, dynamic>>(allowlistOnly, (value) => value.toMap()),
    };
  }

  factory ConfigSmsRegionConfig.fromMap(Map<String, dynamic> map) {
    return ConfigSmsRegionConfig(
      allowByDefault: map['allowByDefault'] == null ? null : (ConfigSmsRegionConfigAllowByDefault.fromMap((map['allowByDefault']! as Map).cast<String, dynamic>())).input(),
      allowlistOnly: map['allowlistOnly'] == null ? null : (ConfigSmsRegionConfigAllowlistOnly.fromMap((map['allowlistOnly']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

