// ignore_for_file: unused_element, unnecessary_cast

import 'domain_features_hyper_vstimer_direct.dart';

class DomainFeaturesHyperVStimer {
  /// Enables or disables support for PS/2 devices in the virtual machine.
  final DomainFeaturesHyperVStimerDirect? direct;

  /// Creates a new [DomainFeaturesHyperVStimer].
  /// [direct] Enables or disables support for PS/2 devices in the virtual machine.
  DomainFeaturesHyperVStimer({
    this.direct,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'direct': ?direct == null ? null : direct!.toMap(),
    };
  }

  factory DomainFeaturesHyperVStimer.fromMap(Map<String, dynamic> map) {
    return DomainFeaturesHyperVStimer(
      direct: map['direct'] == null ? null : DomainFeaturesHyperVStimerDirect.fromMap((map['direct'] as Map).cast<String, dynamic>()),
    );
  }
}

