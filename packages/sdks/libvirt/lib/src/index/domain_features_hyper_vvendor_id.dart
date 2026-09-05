// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainFeaturesHyperVVendorId {
  /// Sets the PS2 feature state; valid values are usually "on" or "off" to enable or disable the PS/2-related feature for the domain.
  ///
  /// See: &lt;https://libvirt.org/formatdomain.html#hypervisor-features&gt;
  final pulumi.Input<String?>? state;
  /// Sets the value for the vendor ID used in Hyper-V.
  final pulumi.Input<String?>? value;

  /// Creates a new [DomainFeaturesHyperVVendorId].
  /// [state] Sets the PS2 feature state; valid values are usually "on" or "off" to enable or disable the PS/2-related feature for the domain.
  /// [value] Sets the value for the vendor ID used in Hyper-V.
  const DomainFeaturesHyperVVendorId({
    this.state,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'state': ?state,
      'value': ?value,
    };
  }

  factory DomainFeaturesHyperVVendorId.fromMap(Map<String, dynamic> map) {
    return DomainFeaturesHyperVVendorId(
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
