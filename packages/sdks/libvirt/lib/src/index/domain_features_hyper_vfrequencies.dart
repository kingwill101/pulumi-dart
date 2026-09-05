// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainFeaturesHyperVFrequencies {
  /// Configures the state of the PS/2 feature, indicating if it is enabled or not.
  final pulumi.Input<String?>? state;

  /// Creates a new [DomainFeaturesHyperVFrequencies].
  /// [state] Configures the state of the PS/2 feature, indicating if it is enabled or not.
  const DomainFeaturesHyperVFrequencies({
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'state': ?state,
    };
  }

  factory DomainFeaturesHyperVFrequencies.fromMap(Map<String, dynamic> map) {
    return DomainFeaturesHyperVFrequencies(
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
