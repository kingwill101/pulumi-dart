// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_features_hyper_vstimer_direct.dart';

class DomainFeaturesHyperVStimer {
  /// Enables or disables support for PS/2 devices in the virtual machine.
  final pulumi.Input<DomainFeaturesHyperVStimerDirect>? direct;

  /// Creates a new [DomainFeaturesHyperVStimer].
  /// [direct] Enables or disables support for PS/2 devices in the virtual machine.
  DomainFeaturesHyperVStimer({
    this.direct,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'direct': ?pulumi.Input.mapOptionalInputValue<DomainFeaturesHyperVStimerDirect, Map<String, dynamic>>(direct, (value) => value.toMap()),
    };
  }

  factory DomainFeaturesHyperVStimer.fromMap(Map<String, dynamic> map) {
    return DomainFeaturesHyperVStimer(
      direct: (() { final guardedValue = map['direct']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainFeaturesHyperVStimerDirect.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

