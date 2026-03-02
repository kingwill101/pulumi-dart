// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// OpaqueDeviceConfiguration contains configuration parameters for a driver in a format defined by the driver vendor.
class OpaqueDeviceConfigurationResourceK8sIoV1alpha3 {
  /// Driver is used to determine which kubelet plugin needs to be passed these configuration parameters.
  ///
  /// An admission policy provided by the driver developer could use this to decide whether it needs to validate them.
  ///
  /// Must be a DNS subdomain and should end with a DNS domain owned by the vendor of the driver.
  final pulumi.Input<String> driver;
  /// Parameters can contain arbitrary data. It is the responsibility of the driver developer to handle validation and versioning. Typically this includes self-identification and a version ("kind" + "apiVersion" for Kubernetes types), with conversion between different versions.
  final pulumi.Input<dynamic> parameters;

  /// Creates a new [OpaqueDeviceConfigurationResourceK8sIoV1alpha3].
  /// [driver] Driver is used to determine which kubelet plugin needs to be passed these configuration parameters.
  /// [parameters] Parameters can contain arbitrary data. It is the responsibility of the driver developer to handle validation and versioning. Typically this includes self-identification and a version ("kind" + "apiVersion" for Kubernetes types), with conversion between different versions.
  OpaqueDeviceConfigurationResourceK8sIoV1alpha3({
    required this.driver,
    required this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'driver': driver,
      'parameters': parameters,
    };
  }

  factory OpaqueDeviceConfigurationResourceK8sIoV1alpha3.fromMap(Map<String, dynamic> map) {
    return OpaqueDeviceConfigurationResourceK8sIoV1alpha3(
      driver: (map['driver'] as String).input(),
      parameters: (map['parameters']).input(),
    );
  }
}

