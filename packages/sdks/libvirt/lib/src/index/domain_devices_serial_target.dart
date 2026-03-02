// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_serial_target_model.dart';

class DomainDevicesSerialTarget {
  /// Sets the model type for the target serial device, defining its emulation characteristics.
  final pulumi.Input<DomainDevicesSerialTargetModel>? model;
  /// Sets the port number for the target serial device, determining its communication endpoint.
  final pulumi.Input<double>? port;
  /// Specifies the type of the target serial device, indicating its nature or protocol.
  final pulumi.Input<String>? type;

  /// Creates a new [DomainDevicesSerialTarget].
  /// [model] Sets the model type for the target serial device, defining its emulation characteristics.
  /// [port] Sets the port number for the target serial device, determining its communication endpoint.
  /// [type] Specifies the type of the target serial device, indicating its nature or protocol.
  DomainDevicesSerialTarget({
    this.model,
    this.port,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'model': ?pulumi.Input.mapOptionalInputValue<DomainDevicesSerialTargetModel, Map<String, dynamic>>(model, (value) => value.toMap()),
      'port': ?port,
      'type': ?type,
    };
  }

  factory DomainDevicesSerialTarget.fromMap(Map<String, dynamic> map) {
    return DomainDevicesSerialTarget(
      model: map['model'] == null ? null : (DomainDevicesSerialTargetModel.fromMap((map['model'] as Map).cast<String, dynamic>())).input(),
      port: map['port'] == null ? null : (map['port'] as double).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
    );
  }
}

