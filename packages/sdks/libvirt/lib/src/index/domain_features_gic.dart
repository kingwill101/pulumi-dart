// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainFeaturesGic {
  /// Sets the version of the GIC feature supported by the domain.
  final pulumi.Input<String>? version;

  /// Creates a new [DomainFeaturesGic].
  /// [version] Sets the version of the GIC feature supported by the domain.
  DomainFeaturesGic({this.version});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'version': ?version};
  }

  factory DomainFeaturesGic.fromMap(Map<String, dynamic> map) {
    return DomainFeaturesGic(
      version: (() {
        final guardedValue = map['version'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
