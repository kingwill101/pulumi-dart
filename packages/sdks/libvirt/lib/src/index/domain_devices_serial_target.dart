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
  const DomainDevicesSerialTarget({
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
      model: (() { final guardedValue = map['model']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesSerialTargetModel.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
