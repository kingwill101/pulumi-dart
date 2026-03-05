// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_features_hyper_vtlb_flush_direct.dart';
import 'domain_features_hyper_vtlb_flush_extended.dart';

class DomainFeaturesHyperVTlbFlush {
  /// Enables or disables support for PS/2 devices in the virtual machine.
  final pulumi.Input<DomainFeaturesHyperVTlbFlushDirect>? direct;
  /// Enables or disables support for PS/2 devices in the virtual machine.
  final pulumi.Input<DomainFeaturesHyperVTlbFlushExtended>? extended;

  /// Creates a new [DomainFeaturesHyperVTlbFlush].
  /// [direct] Enables or disables support for PS/2 devices in the virtual machine.
  /// [extended] Enables or disables support for PS/2 devices in the virtual machine.
  DomainFeaturesHyperVTlbFlush({
    this.direct,
    this.extended,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'direct': ?pulumi.Input.mapOptionalInputValue<DomainFeaturesHyperVTlbFlushDirect, Map<String, dynamic>>(direct, (value) => value.toMap()),
      'extended': ?pulumi.Input.mapOptionalInputValue<DomainFeaturesHyperVTlbFlushExtended, Map<String, dynamic>>(extended, (value) => value.toMap()),
    };
  }

  factory DomainFeaturesHyperVTlbFlush.fromMap(Map<String, dynamic> map) {
    return DomainFeaturesHyperVTlbFlush(
      direct: (() { final guardedValue = map['direct']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainFeaturesHyperVTlbFlushDirect.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      extended: (() { final guardedValue = map['extended']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainFeaturesHyperVTlbFlushExtended.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

