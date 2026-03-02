// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainFeaturesPvSpinlock {
  /// Configures the state of the PS/2 feature, indicating if it is enabled or not.
  final pulumi.Input<String>? state;

  /// Creates a new [DomainFeaturesPvSpinlock].
  /// [state] Configures the state of the PS/2 feature, indicating if it is enabled or not.
  DomainFeaturesPvSpinlock({
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'state': ?state,
    };
  }

  factory DomainFeaturesPvSpinlock.fromMap(Map<String, dynamic> map) {
    return DomainFeaturesPvSpinlock(
      state: map['state'] == null ? null : (map['state'] as String).input(),
    );
  }
}

