// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BackendServiceUsedByResponseComputeV1 {
  final pulumi.Input<String> reference;

  /// Creates a new [BackendServiceUsedByResponseComputeV1].
  /// [reference] Required.
  BackendServiceUsedByResponseComputeV1({
    required this.reference,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'reference': reference,
    };
  }

  factory BackendServiceUsedByResponseComputeV1.fromMap(Map<String, dynamic> map) {
    return BackendServiceUsedByResponseComputeV1(
      reference: pulumi.Input.fromValue(map['reference'] as String),
    );
  }
}

