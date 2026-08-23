// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// OpaqueDeviceConfiguration contains configuration parameters for a driver in a format defined by the driver vendor.
class OpaqueDeviceConfigurationPatch {
  /// Driver is used to determine which kubelet plugin needs to be passed these configuration parameters.
  ///
  /// An admission policy provided by the driver developer could use this to decide whether it needs to validate them.
  ///
  /// Must be a DNS subdomain and should end with a DNS domain owned by the vendor of the driver. It should use only lower case characters.
  final pulumi.Input<String>? driver;
  /// Parameters can contain arbitrary data. It is the responsibility of the driver developer to handle validation and versioning. Typically this includes self-identification and a version ("kind" + "apiVersion" for Kubernetes types), with conversion between different versions.
  ///
  /// The length of the raw data must be smaller or equal to 10 Ki.
  final pulumi.Input<dynamic>? parameters;

  /// Creates a new [OpaqueDeviceConfigurationPatch].
  /// [driver] Driver is used to determine which kubelet plugin needs to be passed these configuration parameters.
  /// [parameters] Parameters can contain arbitrary data. It is the responsibility of the driver developer to handle validation and versioning. Typically this includes self-identification and a version ("kind" + "apiVersion" for Kubernetes types), with conversion between different versions.
  const OpaqueDeviceConfigurationPatch({
    this.driver,
    this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'driver': ?driver,
      'parameters': ?parameters,
    };
  }

  factory OpaqueDeviceConfigurationPatch.fromMap(Map<String, dynamic> map) {
    return OpaqueDeviceConfigurationPatch(
      driver: (() { final guardedValue = map['driver']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
