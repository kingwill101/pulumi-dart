// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'counter_resource_k8s_io_v1beta1.dart';

/// CounterSet defines a named set of counters that are available to be used by devices defined in the ResourcePool.
///
/// The counters are not allocatable by themselves, but can be referenced by devices. When a device is allocated, the portion of counters it uses will no longer be available for use by other devices.
class CounterSetPatchResourceK8sIoV1beta1 {
  /// Counters defines the set of counters for this CounterSet The name of each counter must be unique in that set and must be a DNS label.
  ///
  /// The maximum number of counters is 32.
  final pulumi.Input<Map<String, CounterResourceK8sIoV1beta1>>? counters;
  /// Name defines the name of the counter set. It must be a DNS label.
  final pulumi.Input<String>? name;

  /// Creates a new [CounterSetPatchResourceK8sIoV1beta1].
  /// [counters] Counters defines the set of counters for this CounterSet The name of each counter must be unique in that set and must be a DNS label.
  /// [name] Name defines the name of the counter set. It must be a DNS label.
  const CounterSetPatchResourceK8sIoV1beta1({
    this.counters,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'counters': ?pulumi.Input.mapOptionalInputValue<Map<String, CounterResourceK8sIoV1beta1>, Map<String, Map<String, dynamic>>>(counters, (value) => pulumi.Input.encodeMapValues<CounterResourceK8sIoV1beta1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
    };
  }

  factory CounterSetPatchResourceK8sIoV1beta1.fromMap(Map<String, dynamic> map) {
    return CounterSetPatchResourceK8sIoV1beta1(
      counters: (() { final guardedValue = map['counters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<CounterResourceK8sIoV1beta1>(guardedValue, (value) => CounterResourceK8sIoV1beta1.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

