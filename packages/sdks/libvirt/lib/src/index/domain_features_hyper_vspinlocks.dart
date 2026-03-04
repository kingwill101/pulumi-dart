// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainFeaturesHyperVSpinlocks {
  /// Configures the number of retries for spinlocks in Hyper-V.
  final pulumi.Input<double>? retries;

  /// Creates a new [DomainFeaturesHyperVSpinlocks].
  /// [retries] Configures the number of retries for spinlocks in Hyper-V.
  DomainFeaturesHyperVSpinlocks({this.retries});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'retries': ?retries};
  }

  factory DomainFeaturesHyperVSpinlocks.fromMap(Map<String, dynamic> map) {
    return DomainFeaturesHyperVSpinlocks(
      retries: (() {
        final guardedValue = map['retries'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
    );
  }
}
