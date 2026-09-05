// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'counter.dart';

/// DeviceCounterConsumption defines a set of counters that a device will consume from a CounterSet.
class DeviceCounterConsumptionPatch {
  /// CompatibilityGroups is a list of opaque group names for this counter set consumption.
  ///
  /// Devices that consume counters from the same counter set may only be allocated at the same time ("co-allocated") if they all share at least one common group: the intersection of the CompatibilityGroups of all co-allocated devices on that counter set must be non-empty. Devices that consume from different counter sets are never compared via this field.
  ///
  /// An unset field, an explicit nil, and an empty list are equivalent and mean "no groups": such a device is only co-allocatable with sibling devices on the same counter set that also have no groups, and is never co-allocatable with a device that declares one or more groups.
  ///
  /// Group names are opaque and meaningful only within the publishing driver's pool.
  ///
  /// The maximum number of groups is 2, and the names must be unique.
  final pulumi.Input<List<String>?>? compatibilityGroups;
  /// CounterSet is the name of the set from which the counters defined will be consumed.
  final pulumi.Input<String?>? counterSet;
  /// Counters defines the counters that will be consumed by the device.
  ///
  /// The maximum number of counters is 32.
  final pulumi.Input<Map<String, Counter>?>? counters;

  /// Creates a new [DeviceCounterConsumptionPatch].
  /// [compatibilityGroups] CompatibilityGroups is a list of opaque group names for this counter set consumption.
  /// [counterSet] CounterSet is the name of the set from which the counters defined will be consumed.
  /// [counters] Counters defines the counters that will be consumed by the device.
  const DeviceCounterConsumptionPatch({
    this.compatibilityGroups,
    this.counterSet,
    this.counters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'compatibilityGroups': ?compatibilityGroups,
      'counterSet': ?counterSet,
      'counters': ?pulumi.Input.mapOptionalInputValue<Map<String, Counter>, Map<String, Map<String, dynamic>>>(counters, (value) => pulumi.Input.encodeMapValues<Counter, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DeviceCounterConsumptionPatch.fromMap(Map<String, dynamic> map) {
    return DeviceCounterConsumptionPatch(
      compatibilityGroups: (() { final guardedValue = map['compatibilityGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      counterSet: (() { final guardedValue = map['counterSet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      counters: (() { final guardedValue = map['counters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<Counter>(guardedValue, (value) => Counter.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
