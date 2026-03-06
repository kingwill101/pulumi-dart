// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BackendServiceUsedByResponseComputeBeta {
  final pulumi.Input<String> reference;

  /// Creates a new [BackendServiceUsedByResponseComputeBeta].
  /// [reference] Required.
  const BackendServiceUsedByResponseComputeBeta({
    required this.reference,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'reference': reference,
    };
  }

  factory BackendServiceUsedByResponseComputeBeta.fromMap(Map<String, dynamic> map) {
    return BackendServiceUsedByResponseComputeBeta(
      reference: pulumi.Input.fromValue(map['reference'] as String),
    );
  }
}

