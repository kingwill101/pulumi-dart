// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainFeaturesKvmPvipi {
  /// Configures the state of the PS/2 feature, indicating if it is enabled or not.
  final pulumi.Input<String?>? state;

  /// Creates a new [DomainFeaturesKvmPvipi].
  /// [state] Configures the state of the PS/2 feature, indicating if it is enabled or not.
  const DomainFeaturesKvmPvipi({
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'state': ?state,
    };
  }

  factory DomainFeaturesKvmPvipi.fromMap(Map<String, dynamic> map) {
    return DomainFeaturesKvmPvipi(
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
