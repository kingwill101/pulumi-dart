// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AddonsConfigAddonsConfigAdvancedApiOpsConfig {
  /// Flag that specifies whether the Advanced API Ops add-on is enabled.
  final pulumi.Input<bool>? enabled;

  /// Creates a new [AddonsConfigAddonsConfigAdvancedApiOpsConfig].
  /// [enabled] Flag that specifies whether the Advanced API Ops add-on is enabled.
  AddonsConfigAddonsConfigAdvancedApiOpsConfig({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory AddonsConfigAddonsConfigAdvancedApiOpsConfig.fromMap(Map<String, dynamic> map) {
    return AddonsConfigAddonsConfigAdvancedApiOpsConfig(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

