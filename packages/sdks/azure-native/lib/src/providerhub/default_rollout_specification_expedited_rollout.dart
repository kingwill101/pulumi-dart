// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The expedited rollout definition.
class DefaultRolloutSpecificationExpeditedRollout {
  /// Indicates whether expedited rollout is enabled/disabled
  final pulumi.Input<bool>? enabled;

  /// Creates a new [DefaultRolloutSpecificationExpeditedRollout].
  /// [enabled] Indicates whether expedited rollout is enabled/disabled
  DefaultRolloutSpecificationExpeditedRollout({this.enabled});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enabled': ?enabled};
  }

  factory DefaultRolloutSpecificationExpeditedRollout.fromMap(
    Map<String, dynamic> map,
  ) {
    return DefaultRolloutSpecificationExpeditedRollout(
      enabled: (() {
        final guardedValue = map['enabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
