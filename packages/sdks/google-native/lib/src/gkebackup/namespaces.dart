// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A list of Kubernetes Namespaces
class Namespaces {
  /// Optional. A list of Kubernetes Namespaces
  final pulumi.Input<List<String>>? namespaces;

  /// Creates a new [Namespaces].
  /// [namespaces] Optional. A list of Kubernetes Namespaces
  Namespaces({this.namespaces});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'namespaces': ?namespaces};
  }

  factory Namespaces.fromMap(Map<String, dynamic> map) {
    return Namespaces(
      namespaces: (() {
        final guardedValue = map['namespaces'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
