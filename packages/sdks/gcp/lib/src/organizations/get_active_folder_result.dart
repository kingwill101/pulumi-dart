// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getActiveFolder.
class GetActiveFolderResult {
  final String? apiMethod;
  final String? displayName;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The resource name of the Folder. This uniquely identifies the folder.
  final String? name;
  final String? parent;

  /// Creates a new [GetActiveFolderResult].
  /// [apiMethod] Optional.
  /// [displayName] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] The resource name of the Folder. This uniquely identifies the folder.
  /// [parent] Optional.
  const GetActiveFolderResult({
    this.apiMethod,
    this.displayName,
    this.id,
    this.name,
    this.parent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiMethod': ?apiMethod,
      'displayName': ?displayName,
      'id': ?id,
      'name': ?name,
      'parent': ?parent,
    };
  }

  factory GetActiveFolderResult.fromMap(Map<String, dynamic> map) {
    return GetActiveFolderResult(
      apiMethod: (() { final guardedValue = map['apiMethod']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      parent: (() { final guardedValue = map['parent']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
