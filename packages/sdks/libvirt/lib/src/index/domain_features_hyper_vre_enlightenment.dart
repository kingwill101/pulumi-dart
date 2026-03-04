// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainFeaturesHyperVReEnlightenment {
  /// Configures the state of the PS/2 feature, indicating if it is enabled or not.
  final pulumi.Input<String>? state;

  /// Creates a new [DomainFeaturesHyperVReEnlightenment].
  /// [state] Configures the state of the PS/2 feature, indicating if it is enabled or not.
  DomainFeaturesHyperVReEnlightenment({this.state});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'state': ?state};
  }

  factory DomainFeaturesHyperVReEnlightenment.fromMap(
    Map<String, dynamic> map,
  ) {
    return DomainFeaturesHyperVReEnlightenment(
      state: (() {
        final guardedValue = map['state'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
