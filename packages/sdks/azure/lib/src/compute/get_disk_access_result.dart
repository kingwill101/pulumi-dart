// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getDiskAccess.
class GetDiskAccessResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? name;
  final String? resourceGroupName;
  final Map<String, String>? tags;

  /// Creates a new [GetDiskAccessResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Optional.
  /// [resourceGroupName] Optional.
  /// [tags] Optional.
  const GetDiskAccessResult({
    this.id,
    this.name,
    this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
    };
  }

  factory GetDiskAccessResult.fromMap(Map<String, dynamic> map) {
    return GetDiskAccessResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
