// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'counter.dart';

/// DeviceCounterConsumption defines a set of counters that a device will consume from a CounterSet.
class DeviceCounterConsumption {
  /// CounterSet is the name of the set from which the counters defined will be consumed.
  final pulumi.Input<String> counterSet;
  /// Counters defines the counters that will be consumed by the device.
  ///
  /// The maximum number of counters is 32.
  final pulumi.Input<Map<String, Counter>> counters;

  /// Creates a new [DeviceCounterConsumption].
  /// [counterSet] CounterSet is the name of the set from which the counters defined will be consumed.
  /// [counters] Counters defines the counters that will be consumed by the device.
  DeviceCounterConsumption({
    required this.counterSet,
    required this.counters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'counterSet': counterSet,
      'counters': pulumi.Input.mapInputValue<Map<String, Counter>, Map<String, Map<String, dynamic>>>(counters, (value) => pulumi.Input.encodeMapValues<Counter, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DeviceCounterConsumption.fromMap(Map<String, dynamic> map) {
    return DeviceCounterConsumption(
      counterSet: pulumi.Input.fromValue(map['counterSet'] as String),
      counters: pulumi.Input.fromValue(pulumi.Input.decodeMapValues<Counter>(map['counters']!, (value) => Counter.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

