// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainFeaturesHyperVVendorId {
  /// Sets the value for the vendor ID used in Hyper-V.
  final pulumi.Input<String>? value;

  /// Creates a new [DomainFeaturesHyperVVendorId].
  /// [value] Sets the value for the vendor ID used in Hyper-V.
  DomainFeaturesHyperVVendorId({this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'value': ?value};
  }

  factory DomainFeaturesHyperVVendorId.fromMap(Map<String, dynamic> map) {
    return DomainFeaturesHyperVVendorId(
      value: (() {
        final guardedValue = map['value'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
