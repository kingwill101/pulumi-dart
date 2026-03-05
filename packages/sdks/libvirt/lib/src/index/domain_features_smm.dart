// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainFeaturesSmm {
  /// Configures the state of the SMM feature, indicating whether it is active.
  final pulumi.Input<String>? state;
  /// Configures the Memory Type Range Register (MTRR) for SMM, providing control over memory regions.
  final pulumi.Input<double>? tseg;
  /// Sets the unit of the TSEG (Trusted Secure Environment Group) size for SMM configuration.
  final pulumi.Input<String>? tsegUnit;

  /// Creates a new [DomainFeaturesSmm].
  /// [state] Configures the state of the SMM feature, indicating whether it is active.
  /// [tseg] Configures the Memory Type Range Register (MTRR) for SMM, providing control over memory regions.
  /// [tsegUnit] Sets the unit of the TSEG (Trusted Secure Environment Group) size for SMM configuration.
  DomainFeaturesSmm({
    this.state,
    this.tseg,
    this.tsegUnit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'state': ?state,
      'tseg': ?tseg,
      'tsegUnit': ?tsegUnit,
    };
  }

  factory DomainFeaturesSmm.fromMap(Map<String, dynamic> map) {
    return DomainFeaturesSmm(
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tseg: (() { final guardedValue = map['tseg']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      tsegUnit: (() { final guardedValue = map['tsegUnit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

