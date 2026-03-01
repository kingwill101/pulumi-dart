// ignore_for_file: unused_element, unnecessary_cast


/// VendorParameters are opaque parameters for one particular driver.
class VendorParametersPatch {
  /// DriverName is the name used by the DRA driver kubelet plugin.
  final String? driverName;
  /// Parameters can be arbitrary setup parameters. They are ignored while allocating a claim.
  final dynamic parameters;

  /// Creates a new [VendorParametersPatch].
  /// [driverName] DriverName is the name used by the DRA driver kubelet plugin.
  /// [parameters] Parameters can be arbitrary setup parameters. They are ignored while allocating a claim.
  VendorParametersPatch({
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
      driverName: map['driverName'] == null ? null : map['driverName'] as String,
      parameters: map['parameters'] == null ? null : map['parameters'],
    );
  }
}

