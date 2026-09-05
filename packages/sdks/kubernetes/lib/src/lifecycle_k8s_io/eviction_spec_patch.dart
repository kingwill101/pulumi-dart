// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'eviction_target_patch.dart';

/// EvictionSpec is a specification of an Eviction.
class EvictionSpecPatch {
  /// target contains a reference to an object (e.g. a pod) that should be evicted. This field is required and immutable.
  final pulumi.Input<EvictionTargetPatch?>? target;

  /// Creates a new [EvictionSpecPatch].
  /// [target] target contains a reference to an object (e.g. a pod) that should be evicted. This field is required and immutable.
  const EvictionSpecPatch({
    this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'target': ?pulumi.Input.mapOptionalInputValue<EvictionTargetPatch, Map<String, dynamic>>(target, (value) => value.toMap()),
    };
  }

  factory EvictionSpecPatch.fromMap(Map<String, dynamic> map) {
    return EvictionSpecPatch(
      target: (() { final guardedValue = map['target']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EvictionTargetPatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
