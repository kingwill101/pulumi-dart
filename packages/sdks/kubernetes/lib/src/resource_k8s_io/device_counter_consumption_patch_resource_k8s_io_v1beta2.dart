// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'counter_resource_k8s_io_v1beta2.dart';

/// DeviceCounterConsumption defines a set of counters that a device will consume from a CounterSet.
class DeviceCounterConsumptionPatchResourceK8sIoV1beta2 {
  /// CounterSet is the name of the set from which the counters defined will be consumed.
  final pulumi.Input<String>? counterSet;
  /// Counters defines the counters that will be consumed by the device.
  ///
  /// The maximum number of counters is 32.
  final pulumi.Input<Map<String, CounterResourceK8sIoV1beta2>>? counters;

  /// Creates a new [DeviceCounterConsumptionPatchResourceK8sIoV1beta2].
  /// [counterSet] CounterSet is the name of the set from which the counters defined will be consumed.
  /// [counters] Counters defines the counters that will be consumed by the device.
  const DeviceCounterConsumptionPatchResourceK8sIoV1beta2({
    this.counterSet,
    this.counters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'counterSet': ?counterSet,
      'counters': ?pulumi.Input.mapOptionalInputValue<Map<String, CounterResourceK8sIoV1beta2>, Map<String, Map<String, dynamic>>>(counters, (value) => pulumi.Input.encodeMapValues<CounterResourceK8sIoV1beta2, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DeviceCounterConsumptionPatchResourceK8sIoV1beta2.fromMap(Map<String, dynamic> map) {
    return DeviceCounterConsumptionPatchResourceK8sIoV1beta2(
      counterSet: (() { final guardedValue = map['counterSet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      counters: (() { final guardedValue = map['counters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<CounterResourceK8sIoV1beta2>(guardedValue, (value) => CounterResourceK8sIoV1beta2.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
