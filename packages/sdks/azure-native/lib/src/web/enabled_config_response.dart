// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Enabled configuration.
class EnabledConfigResponse {
  /// True if configuration is enabled, false if it is disabled and null if configuration is not set.
  final pulumi.Input<bool>? enabled;

  /// Creates a new [EnabledConfigResponse].
  /// [enabled] True if configuration is enabled, false if it is disabled and null if configuration is not set.
  EnabledConfigResponse({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory EnabledConfigResponse.fromMap(Map<String, dynamic> map) {
    return EnabledConfigResponse(
      enabled: map['enabled'] == null ? null : (map['enabled']! as bool).input(),
    );
  }
}

