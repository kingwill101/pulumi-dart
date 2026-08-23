// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainFeaturesHyperVEmsrBitmap {
  /// Configures the state of the PS/2 feature, indicating if it is enabled or not.
  final pulumi.Input<String>? state;

  /// Creates a new [DomainFeaturesHyperVEmsrBitmap].
  /// [state] Configures the state of the PS/2 feature, indicating if it is enabled or not.
  const DomainFeaturesHyperVEmsrBitmap({
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'state': ?state,
    };
  }

  factory DomainFeaturesHyperVEmsrBitmap.fromMap(Map<String, dynamic> map) {
    return DomainFeaturesHyperVEmsrBitmap(
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
