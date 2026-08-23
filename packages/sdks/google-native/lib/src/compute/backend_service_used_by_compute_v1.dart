// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BackendServiceUsedByComputeV1 {
  final pulumi.Input<String>? reference;

  /// Creates a new [BackendServiceUsedByComputeV1].
  /// [reference] Optional.
  const BackendServiceUsedByComputeV1({
    this.reference,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'reference': ?reference,
    };
  }

  factory BackendServiceUsedByComputeV1.fromMap(Map<String, dynamic> map) {
    return BackendServiceUsedByComputeV1(
      reference: (() { final guardedValue = map['reference']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
