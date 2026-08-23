// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainFeaturesHyperVSpinlocks {
  /// Configures the number of retries for spinlocks in Hyper-V.
  final pulumi.Input<double>? retries;
  /// Sets the PS2 feature state; valid values are usually "on" or "off" to enable or disable the PS/2-related feature for the domain.
  ///
  /// See: &lt;https://libvirt.org/formatdomain.html#hypervisor-features&gt;
  final pulumi.Input<String>? state;

  /// Creates a new [DomainFeaturesHyperVSpinlocks].
  /// [retries] Configures the number of retries for spinlocks in Hyper-V.
  /// [state] Sets the PS2 feature state; valid values are usually "on" or "off" to enable or disable the PS/2-related feature for the domain.
  const DomainFeaturesHyperVSpinlocks({
    this.retries,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'retries': ?retries,
      'state': ?state,
    };
  }

  factory DomainFeaturesHyperVSpinlocks.fromMap(Map<String, dynamic> map) {
    return DomainFeaturesHyperVSpinlocks(
      retries: (() { final guardedValue = map['retries']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
