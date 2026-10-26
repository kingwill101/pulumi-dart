// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getNamespace.
class GetNamespaceResult {
  /// Optional. Resource labels associated with this namespace. No more than 64 user labels can be associated with a given resource. Label keys and values can be no longer than 63 characters.
  final Map<String, String>? labels;
  /// Immutable. The resource name for the namespace in the format `projects/*/locations/*/namespaces/*`.
  final String? name;
  /// The globally unique identifier of the namespace in the UUID4 format.
  final String? uid;

  /// Creates a new [GetNamespaceResult].
  /// [labels] Optional. Resource labels associated with this namespace. No more than 64 user labels can be associated with a given resource. Label keys and values can be no longer than 63 characters.
  /// [name] Immutable. The resource name for the namespace in the format `projects/*/locations/*/namespaces/*`.
  /// [uid] The globally unique identifier of the namespace in the UUID4 format.
  const GetNamespaceResult({
    this.labels,
    this.name,
    this.uid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'labels': ?labels,
      'name': ?name,
      'uid': ?uid,
    };
  }

  factory GetNamespaceResult.fromMap(Map<String, dynamic> map) {
    return GetNamespaceResult(
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
