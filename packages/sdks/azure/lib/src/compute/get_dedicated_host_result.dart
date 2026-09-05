// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getDedicatedHost.
class GetDedicatedHostResult {
  final String? dedicatedHostGroupName;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The location where the Dedicated Host exists.
  final String? location;
  final String? name;
  final String? resourceGroupName;
  /// A mapping of tags assigned to the Dedicated Host.
  final Map<String, String>? tags;

  /// Creates a new [GetDedicatedHostResult].
  /// [dedicatedHostGroupName] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] The location where the Dedicated Host exists.
  /// [name] Optional.
  /// [resourceGroupName] Optional.
  /// [tags] A mapping of tags assigned to the Dedicated Host.
  const GetDedicatedHostResult({
    this.dedicatedHostGroupName,
    this.id,
    this.location,
    this.name,
    this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dedicatedHostGroupName': ?dedicatedHostGroupName,
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
    };
  }

  factory GetDedicatedHostResult.fromMap(Map<String, dynamic> map) {
    return GetDedicatedHostResult(
      dedicatedHostGroupName: (() { final guardedValue = map['dedicatedHostGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
