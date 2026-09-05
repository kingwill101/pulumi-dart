// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getService.
class GetServiceResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// Azure location where the resource exists.
  final String? location;
  final String? name;
  final String? resourceGroupName;
  /// The SKU name of database migration service.
  final String? skuName;
  /// The ID of the virtual subnet resource to which the database migration service exists.
  final String? subnetId;
  /// A mapping of tags to assigned to the resource.
  final Map<String, String>? tags;

  /// Creates a new [GetServiceResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] Azure location where the resource exists.
  /// [name] Optional.
  /// [resourceGroupName] Optional.
  /// [skuName] The SKU name of database migration service.
  /// [subnetId] The ID of the virtual subnet resource to which the database migration service exists.
  /// [tags] A mapping of tags to assigned to the resource.
  const GetServiceResult({
    this.id,
    this.location,
    this.name,
    this.resourceGroupName,
    this.skuName,
    this.subnetId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'skuName': ?skuName,
      'subnetId': ?subnetId,
      'tags': ?tags,
    };
  }

  factory GetServiceResult.fromMap(Map<String, dynamic> map) {
    return GetServiceResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      skuName: (() { final guardedValue = map['skuName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      subnetId: (() { final guardedValue = map['subnetId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
