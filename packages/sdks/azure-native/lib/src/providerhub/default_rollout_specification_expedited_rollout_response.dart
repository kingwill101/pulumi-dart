// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The expedited rollout definition.
class DefaultRolloutSpecificationExpeditedRolloutResponse {
  /// Indicates whether expedited rollout is enabled/disabled
  final pulumi.Input<bool>? enabled;

  /// Creates a new [DefaultRolloutSpecificationExpeditedRolloutResponse].
  /// [enabled] Indicates whether expedited rollout is enabled/disabled
  const DefaultRolloutSpecificationExpeditedRolloutResponse({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory DefaultRolloutSpecificationExpeditedRolloutResponse.fromMap(Map<String, dynamic> map) {
    return DefaultRolloutSpecificationExpeditedRolloutResponse(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

