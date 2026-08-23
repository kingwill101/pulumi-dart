// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getService.
class GetServiceResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// Azure location where the resource exists.
  final String location;
  final String name;
  final String resourceGroupName;
  /// The SKU name of database migration service.
  final String skuName;
  /// The ID of the virtual subnet resource to which the database migration service exists.
  final String subnetId;
  /// A mapping of tags to assigned to the resource.
  final Map<String, String> tags;

  /// Creates a new [GetServiceResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] Azure location where the resource exists.
  /// [name] Required.
  /// [resourceGroupName] Required.
  /// [skuName] The SKU name of database migration service.
  /// [subnetId] The ID of the virtual subnet resource to which the database migration service exists.
  /// [tags] A mapping of tags to assigned to the resource.
  const GetServiceResult({
    required this.id,
    required this.location,
    required this.name,
    required this.resourceGroupName,
    required this.skuName,
    required this.subnetId,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'location': location,
      'name': name,
      'resourceGroupName': resourceGroupName,
      'skuName': skuName,
      'subnetId': subnetId,
      'tags': tags,
    };
  }

  factory GetServiceResult.fromMap(Map<String, dynamic> map) {
    return GetServiceResult(
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      skuName: map['skuName'] as String,
      subnetId: map['subnetId'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}
