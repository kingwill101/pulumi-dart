// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'counter_resource_k8s_io_v1beta1.dart';

/// DeviceCounterConsumption defines a set of counters that a device will consume from a CounterSet.
class DeviceCounterConsumptionResourceK8sIoV1beta1 {
  /// CounterSet is the name of the set from which the counters defined will be consumed.
  final String counterSet;
  /// Counters defines the counters that will be consumed by the device.
  ///
  /// The maximum number of counters is 32.
  final Map<String, CounterResourceK8sIoV1beta1> counters;

  /// Creates a new [DeviceCounterConsumptionResourceK8sIoV1beta1].
  /// [counterSet] CounterSet is the name of the set from which the counters defined will be consumed.
  /// [counters] Counters defines the counters that will be consumed by the device.
  DeviceCounterConsumptionResourceK8sIoV1beta1({
    required this.counterSet,
    required this.counters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'counterSet': counterSet,
      'counters': pulumi.Input.encodeMapValues<CounterResourceK8sIoV1beta1, Map<String, dynamic>>(counters, (value) => value.toMap()),
    };
  }

  factory DeviceCounterConsumptionResourceK8sIoV1beta1.fromMap(Map<String, dynamic> map) {
    return DeviceCounterConsumptionResourceK8sIoV1beta1(
      counterSet: map['counterSet'] as String,
      counters: pulumi.Input.decodeMapValues<CounterResourceK8sIoV1beta1>(map['counters'], (value) => CounterResourceK8sIoV1beta1.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

