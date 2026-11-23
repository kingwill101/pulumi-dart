// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AddonConfigAllDataAddonConfig {
  /// If true, the addon is enabled for all data in the API hub.
  final pulumi.Input<bool> enabled;

  /// Creates a new [AddonConfigAllDataAddonConfig].
  /// [enabled] If true, the addon is enabled for all data in the API hub.
  const AddonConfigAllDataAddonConfig({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory AddonConfigAllDataAddonConfig.fromMap(Map<String, dynamic> map) {
    return AddonConfigAllDataAddonConfig(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}
