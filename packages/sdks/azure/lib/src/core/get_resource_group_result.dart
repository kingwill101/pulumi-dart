// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getResourceGroup.
class GetResourceGroupResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The Azure Region where the Resource Group exists.
  final String? location;
  final String? managedBy;
  final String? name;
  /// A mapping of tags assigned to the Resource Group.
  final Map<String, String>? tags;

  /// Creates a new [GetResourceGroupResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] The Azure Region where the Resource Group exists.
  /// [managedBy] Optional.
  /// [name] Optional.
  /// [tags] A mapping of tags assigned to the Resource Group.
  const GetResourceGroupResult({
    this.id,
    this.location,
    this.managedBy,
    this.name,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'location': ?location,
      'managedBy': ?managedBy,
      'name': ?name,
      'tags': ?tags,
    };
  }

  factory GetResourceGroupResult.fromMap(Map<String, dynamic> map) {
    return GetResourceGroupResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      managedBy: (() { final guardedValue = map['managedBy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
