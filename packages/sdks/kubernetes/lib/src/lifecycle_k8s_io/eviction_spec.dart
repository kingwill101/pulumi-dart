// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'eviction_target.dart';

/// EvictionSpec is a specification of an Eviction.
class EvictionSpec {
  /// target contains a reference to an object (e.g. a pod) that should be evicted. This field is required and immutable.
  final pulumi.Input<EvictionTarget> target;

  /// Creates a new [EvictionSpec].
  /// [target] target contains a reference to an object (e.g. a pod) that should be evicted. This field is required and immutable.
  const EvictionSpec({
    required this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'target': pulumi.Input.mapInputValue<EvictionTarget, Map<String, dynamic>>(target, (value) => value.toMap()),
    };
  }

  factory EvictionSpec.fromMap(Map<String, dynamic> map) {
    return EvictionSpec(
      target: pulumi.Input.fromValue(EvictionTarget.fromMap((map['target']! as Map).cast<String, dynamic>())),
    );
  }
}
