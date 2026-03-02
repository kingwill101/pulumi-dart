// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BackendServiceUsedByResponse {
  final pulumi.Input<String> reference;

  /// Creates a new [BackendServiceUsedByResponse].
  /// [reference] Required.
  BackendServiceUsedByResponse({
    required this.reference,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'reference': reference,
    };
  }

  factory BackendServiceUsedByResponse.fromMap(Map<String, dynamic> map) {
    return BackendServiceUsedByResponse(
      reference: (map['reference'] as String).input(),
    );
  }
}

