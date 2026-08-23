// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_features_hyper_vstimer_direct.dart';

class DomainFeaturesHyperVStimer {
  /// Enables or disables support for PS/2 devices in the virtual machine.
  final pulumi.Input<DomainFeaturesHyperVStimerDirect>? direct;
  /// Sets the PS2 feature state; valid values are usually "on" or "off" to enable or disable the PS/2-related feature for the domain.
  ///
  /// See: &lt;https://libvirt.org/formatdomain.html#hypervisor-features&gt;
  final pulumi.Input<String>? state;

  /// Creates a new [DomainFeaturesHyperVStimer].
  /// [direct] Enables or disables support for PS/2 devices in the virtual machine.
  /// [state] Sets the PS2 feature state; valid values are usually "on" or "off" to enable or disable the PS/2-related feature for the domain.
  const DomainFeaturesHyperVStimer({
    this.direct,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'direct': ?pulumi.Input.mapOptionalInputValue<DomainFeaturesHyperVStimerDirect, Map<String, dynamic>>(direct, (value) => value.toMap()),
      'state': ?state,
    };
  }

  factory DomainFeaturesHyperVStimer.fromMap(Map<String, dynamic> map) {
    return DomainFeaturesHyperVStimer(
      direct: (() { final guardedValue = map['direct']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainFeaturesHyperVStimerDirect.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
