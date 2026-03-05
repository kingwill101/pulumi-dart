// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ResourceStatusSchedulingResponseComputeBeta {
  /// Time in future when the instance will be terminated in RFC3339 text format.
  final pulumi.Input<String> terminationTimestamp;

  /// Creates a new [ResourceStatusSchedulingResponseComputeBeta].
  /// [terminationTimestamp] Time in future when the instance will be terminated in RFC3339 text format.
  ResourceStatusSchedulingResponseComputeBeta({
    required this.terminationTimestamp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'terminationTimestamp': terminationTimestamp,
    };
  }

  factory ResourceStatusSchedulingResponseComputeBeta.fromMap(Map<String, dynamic> map) {
    return ResourceStatusSchedulingResponseComputeBeta(
      terminationTimestamp: pulumi.Input.fromValue(map['terminationTimestamp'] as String),
    );
  }
}

