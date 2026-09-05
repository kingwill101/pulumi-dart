// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainFeaturesKvmDirtyRing {
  /// Sets the size of the dirty ring buffer for KVM, which affects the efficiency of memory updates.
  final pulumi.Input<double?>? size;
  /// Sets the PS2 feature state; valid values are usually "on" or "off" to enable or disable the PS/2-related feature for the domain.
  ///
  /// See: &lt;https://libvirt.org/formatdomain.html#hypervisor-features&gt;
  final pulumi.Input<String?>? state;

  /// Creates a new [DomainFeaturesKvmDirtyRing].
  /// [size] Sets the size of the dirty ring buffer for KVM, which affects the efficiency of memory updates.
  /// [state] Sets the PS2 feature state; valid values are usually "on" or "off" to enable or disable the PS/2-related feature for the domain.
  const DomainFeaturesKvmDirtyRing({
    this.size,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'size': ?size,
      'state': ?state,
    };
  }

  factory DomainFeaturesKvmDirtyRing.fromMap(Map<String, dynamic> map) {
    return DomainFeaturesKvmDirtyRing(
      size: (() { final guardedValue = map['size']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
