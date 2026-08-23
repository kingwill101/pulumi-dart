// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getZone.
class GetZoneResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// Maximum number of Records in the zone.
  final int maxNumberOfRecordSets;
  final String name;
  /// A list of values that make up the NS record for the zone.
  final List<String> nameServers;
  /// The number of records already in the zone.
  final int numberOfRecordSets;
  final String resourceGroupName;
  /// A mapping of tags assigned to the DNS Zone.
  final Map<String, String> tags;

  /// Creates a new [GetZoneResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [maxNumberOfRecordSets] Maximum number of Records in the zone.
  /// [name] Required.
  /// [nameServers] A list of values that make up the NS record for the zone.
  /// [numberOfRecordSets] The number of records already in the zone.
  /// [resourceGroupName] Required.
  /// [tags] A mapping of tags assigned to the DNS Zone.
  const GetZoneResult({
    required this.id,
    required this.maxNumberOfRecordSets,
    required this.name,
    required this.nameServers,
    required this.numberOfRecordSets,
    required this.resourceGroupName,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'maxNumberOfRecordSets': maxNumberOfRecordSets,
      'name': name,
      'nameServers': nameServers,
      'numberOfRecordSets': numberOfRecordSets,
      'resourceGroupName': resourceGroupName,
      'tags': tags,
    };
  }

  factory GetZoneResult.fromMap(Map<String, dynamic> map) {
    return GetZoneResult(
      id: map['id'] as String,
      maxNumberOfRecordSets: map['maxNumberOfRecordSets'] as int,
      name: map['name'] as String,
      nameServers: (map['nameServers'] as List).cast<String>(),
      numberOfRecordSets: map['numberOfRecordSets'] as int,
      resourceGroupName: map['resourceGroupName'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}
