// ignore_for_file: unused_element, unnecessary_cast


/// NamespaceSpec describes the attributes on a Namespace.
class NamespaceSpecPatch {
  /// Finalizers is an opaque list of values that must be empty to permanently remove object from storage. More info: https://kubernetes.io/docs/tasks/administer-cluster/namespaces/
  final List<String>? finalizers;

  /// Creates a new [NamespaceSpecPatch].
  /// [finalizers] Finalizers is an opaque list of values that must be empty to permanently remove object from storage. More info: https://kubernetes.io/docs/tasks/administer-cluster/namespaces/
  NamespaceSpecPatch({
    this.finalizers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'finalizers': ?finalizers,
    };
  }

  factory NamespaceSpecPatch.fromMap(Map<String, dynamic> map) {
    return NamespaceSpecPatch(
      finalizers: map['finalizers'] == null ? null : (map['finalizers'] as List).cast<String>(),
    );
  }
}

