// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// PodSchedulingGate is associated to a Pod to guard its scheduling.
class PodSchedulingGatePatch {
  /// Name of the scheduling gate. Each scheduling gate must have a unique name field.
  final pulumi.Input<String>? name;

  /// Creates a new [PodSchedulingGatePatch].
  /// [name] Name of the scheduling gate. Each scheduling gate must have a unique name field.
  PodSchedulingGatePatch({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory PodSchedulingGatePatch.fromMap(Map<String, dynamic> map) {
    return PodSchedulingGatePatch(
      name: map['name'] == null ? null : (map['name'] as String).input(),
    );
  }
}

