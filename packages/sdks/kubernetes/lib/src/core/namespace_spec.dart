// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// NamespaceSpec describes the attributes on a Namespace.
class NamespaceSpec {
  /// Finalizers is an opaque list of values that must be empty to permanently remove object from storage. More info: https://kubernetes.io/docs/tasks/administer-cluster/namespaces/
  final pulumi.Input<List<String>>? finalizers;

  /// Creates a new [NamespaceSpec].
  /// [finalizers] Finalizers is an opaque list of values that must be empty to permanently remove object from storage. More info: https://kubernetes.io/docs/tasks/administer-cluster/namespaces/
  const NamespaceSpec({
    this.finalizers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'finalizers': ?finalizers,
    };
  }

  factory NamespaceSpec.fromMap(Map<String, dynamic> map) {
    return NamespaceSpec(
      finalizers: (() { final guardedValue = map['finalizers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
