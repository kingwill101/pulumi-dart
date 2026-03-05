// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_endpoint_spec_port.dart';

class ServiceEndpointSpec {
  /// The mode of resolution to use for internal load balancing between tasks
  final pulumi.Input<String>? mode;
  /// List of exposed ports that this service is accessible on from the outside. Ports can only be provided if 'vip' resolution mode is used
  final pulumi.Input<List<ServiceEndpointSpecPort>>? ports;

  /// Creates a new [ServiceEndpointSpec].
  /// [mode] The mode of resolution to use for internal load balancing between tasks
  /// [ports] List of exposed ports that this service is accessible on from the outside. Ports can only be provided if 'vip' resolution mode is used
  ServiceEndpointSpec({
    this.mode,
    this.ports,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': ?mode,
      'ports': ?pulumi.Input.mapOptionalInputValue<List<ServiceEndpointSpecPort>, List<Map<String, dynamic>>>(ports, (value) => pulumi.Input.encodeList<ServiceEndpointSpecPort, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ServiceEndpointSpec.fromMap(Map<String, dynamic> map) {
    return ServiceEndpointSpec(
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ports: (() { final guardedValue = map['ports']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ServiceEndpointSpecPort>(guardedValue, (value) => ServiceEndpointSpecPort.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

