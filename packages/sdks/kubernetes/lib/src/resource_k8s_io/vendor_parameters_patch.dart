// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// VendorParameters are opaque parameters for one particular driver.
class VendorParametersPatch {
  /// DriverName is the name used by the DRA driver kubelet plugin.
  final pulumi.Input<String>? driverName;
  /// Parameters can be arbitrary setup parameters. They are ignored while allocating a claim.
  final pulumi.Input<dynamic>? parameters;

  /// Creates a new [VendorParametersPatch].
  /// [driverName] DriverName is the name used by the DRA driver kubelet plugin.
  /// [parameters] Parameters can be arbitrary setup parameters. They are ignored while allocating a claim.
  const VendorParametersPatch({
    this.driverName,
    this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'driverName': ?driverName,
      'parameters': ?parameters,
    };
  }

  factory VendorParametersPatch.fromMap(Map<String, dynamic> map) {
    return VendorParametersPatch(
      driverName: (() { final guardedValue = map['driverName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}

