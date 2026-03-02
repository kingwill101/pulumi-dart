// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BackendServiceUsedByComputeBeta {
  final pulumi.Input<String>? reference;

  /// Creates a new [BackendServiceUsedByComputeBeta].
  /// [reference] Optional.
  BackendServiceUsedByComputeBeta({
    this.reference,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'reference': ?reference,
    };
  }

  factory BackendServiceUsedByComputeBeta.fromMap(Map<String, dynamic> map) {
    return BackendServiceUsedByComputeBeta(
      reference: map['reference'] == null ? null : (map['reference'] as String).input(),
    );
  }
}

