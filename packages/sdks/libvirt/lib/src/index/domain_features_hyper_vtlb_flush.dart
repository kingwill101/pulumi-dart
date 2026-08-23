// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_features_hyper_vtlb_flush_direct.dart';
import 'domain_features_hyper_vtlb_flush_extended.dart';

class DomainFeaturesHyperVTlbFlush {
  /// Enables or disables support for PS/2 devices in the virtual machine.
  final pulumi.Input<DomainFeaturesHyperVTlbFlushDirect>? direct;
  /// Enables or disables support for PS/2 devices in the virtual machine.
  final pulumi.Input<DomainFeaturesHyperVTlbFlushExtended>? extended;
  /// Sets the PS2 feature state; valid values are usually "on" or "off" to enable or disable the PS/2-related feature for the domain.
  ///
  /// See: &lt;https://libvirt.org/formatdomain.html#hypervisor-features&gt;
  final pulumi.Input<String>? state;

  /// Creates a new [DomainFeaturesHyperVTlbFlush].
  /// [direct] Enables or disables support for PS/2 devices in the virtual machine.
  /// [extended] Enables or disables support for PS/2 devices in the virtual machine.
  /// [state] Sets the PS2 feature state; valid values are usually "on" or "off" to enable or disable the PS/2-related feature for the domain.
  const DomainFeaturesHyperVTlbFlush({
    this.direct,
    this.extended,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'direct': ?pulumi.Input.mapOptionalInputValue<DomainFeaturesHyperVTlbFlushDirect, Map<String, dynamic>>(direct, (value) => value.toMap()),
      'extended': ?pulumi.Input.mapOptionalInputValue<DomainFeaturesHyperVTlbFlushExtended, Map<String, dynamic>>(extended, (value) => value.toMap()),
      'state': ?state,
    };
  }

  factory DomainFeaturesHyperVTlbFlush.fromMap(Map<String, dynamic> map) {
    return DomainFeaturesHyperVTlbFlush(
      direct: (() { final guardedValue = map['direct']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainFeaturesHyperVTlbFlushDirect.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      extended: (() { final guardedValue = map['extended']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainFeaturesHyperVTlbFlushExtended.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
