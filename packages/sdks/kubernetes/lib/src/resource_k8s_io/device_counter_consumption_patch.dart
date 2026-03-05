// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'counter.dart';

/// DeviceCounterConsumption defines a set of counters that a device will consume from a CounterSet.
class DeviceCounterConsumptionPatch {
  /// CounterSet is the name of the set from which the counters defined will be consumed.
  final pulumi.Input<String>? counterSet;
  /// Counters defines the counters that will be consumed by the device.
  ///
  /// The maximum number of counters is 32.
  final pulumi.Input<Map<String, Counter>>? counters;

  /// Creates a new [DeviceCounterConsumptionPatch].
  /// [counterSet] CounterSet is the name of the set from which the counters defined will be consumed.
  /// [counters] Counters defines the counters that will be consumed by the device.
  DeviceCounterConsumptionPatch({
    this.counterSet,
    this.counters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'counterSet': ?counterSet,
      'counters': ?pulumi.Input.mapOptionalInputValue<Map<String, Counter>, Map<String, Map<String, dynamic>>>(counters, (value) => pulumi.Input.encodeMapValues<Counter, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DeviceCounterConsumptionPatch.fromMap(Map<String, dynamic> map) {
    return DeviceCounterConsumptionPatch(
      counterSet: (() { final guardedValue = map['counterSet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      counters: (() { final guardedValue = map['counters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<Counter>(guardedValue, (value) => Counter.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

