// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getNamespace.
class GetNamespaceServicedirectoryV1beta1Result {
  /// The timestamp when the namespace was created.
  final String? createTime;
  /// Optional. Resource labels associated with this namespace. No more than 64 user labels can be associated with a given resource. Label keys and values can be no longer than 63 characters.
  final Map<String, String>? labels;
  /// Immutable. The resource name for the namespace in the format `projects/*/locations/*/namespaces/*`.
  final String? name;
  /// A globally unique identifier (in UUID4 format) for this namespace.
  final String? uid;
  /// The timestamp when the namespace was last updated.
  final String? updateTime;

  /// Creates a new [GetNamespaceServicedirectoryV1beta1Result].
  /// [createTime] The timestamp when the namespace was created.
  /// [labels] Optional. Resource labels associated with this namespace. No more than 64 user labels can be associated with a given resource. Label keys and values can be no longer than 63 characters.
  /// [name] Immutable. The resource name for the namespace in the format `projects/*/locations/*/namespaces/*`.
  /// [uid] A globally unique identifier (in UUID4 format) for this namespace.
  /// [updateTime] The timestamp when the namespace was last updated.
  const GetNamespaceServicedirectoryV1beta1Result({
    this.createTime,
    this.labels,
    this.name,
    this.uid,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'labels': ?labels,
      'name': ?name,
      'uid': ?uid,
      'updateTime': ?updateTime,
    };
  }

  factory GetNamespaceServicedirectoryV1beta1Result.fromMap(Map<String, dynamic> map) {
    return GetNamespaceServicedirectoryV1beta1Result(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
