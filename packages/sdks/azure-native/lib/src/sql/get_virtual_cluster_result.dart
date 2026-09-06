// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getVirtualCluster.
class GetVirtualClusterResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// List of resources in this virtual cluster.
  final List<String>? childResources_;
  /// Resource ID.
  final String? id;
  /// Resource location.
  final String? location;
  /// Resource name.
  final String? name;
  /// Subnet resource ID for the virtual cluster.
  final String? subnetId;
  /// Resource tags.
  final Map<String, String>? tags;
  /// Resource type.
  final String? type;
  /// Virtual cluster version.
  final String? version;

  /// Creates a new [GetVirtualClusterResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [childResources_] List of resources in this virtual cluster.
  /// [id] Resource ID.
  /// [location] Resource location.
  /// [name] Resource name.
  /// [subnetId] Subnet resource ID for the virtual cluster.
  /// [tags] Resource tags.
  /// [type] Resource type.
  /// [version] Virtual cluster version.
  const GetVirtualClusterResult({
    this.azureApiVersion,
    this.childResources_,
    this.id,
    this.location,
    this.name,
    this.subnetId,
    this.tags,
    this.type,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'childResources': ?childResources_,
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'subnetId': ?subnetId,
      'tags': ?tags,
      'type': ?type,
      'version': ?version,
    };
  }

  factory GetVirtualClusterResult.fromMap(Map<String, dynamic> map) {
    return GetVirtualClusterResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      childResources_: (() { final guardedValue = map['childResources']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      subnetId: (() { final guardedValue = map['subnetId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
