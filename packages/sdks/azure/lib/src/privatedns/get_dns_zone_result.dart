// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getDnsZone.
class GetDnsZoneResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// Maximum number of recordsets that can be created in this Private Zone.
  final int maxNumberOfRecordSets;
  /// Maximum number of Virtual Networks that can be linked to this Private Zone.
  final int maxNumberOfVirtualNetworkLinks;
  /// Maximum number of Virtual Networks that can be linked to this Private Zone with registration enabled.
  final int maxNumberOfVirtualNetworkLinksWithRegistration;
  final String name;
  /// The number of recordsets currently in the zone.
  final int numberOfRecordSets;
  final String resourceGroupName;
  /// A mapping of tags for the zone.
  final Map<String, String>? tags;

  /// Creates a new [GetDnsZoneResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [maxNumberOfRecordSets] Maximum number of recordsets that can be created in this Private Zone.
  /// [maxNumberOfVirtualNetworkLinks] Maximum number of Virtual Networks that can be linked to this Private Zone.
  /// [maxNumberOfVirtualNetworkLinksWithRegistration] Maximum number of Virtual Networks that can be linked to this Private Zone with registration enabled.
  /// [name] Required.
  /// [numberOfRecordSets] The number of recordsets currently in the zone.
  /// [resourceGroupName] Required.
  /// [tags] A mapping of tags for the zone.
  GetDnsZoneResult({
    required this.id,
    required this.maxNumberOfRecordSets,
    required this.maxNumberOfVirtualNetworkLinks,
    required this.maxNumberOfVirtualNetworkLinksWithRegistration,
    required this.name,
    required this.numberOfRecordSets,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'maxNumberOfRecordSets': maxNumberOfRecordSets,
      'maxNumberOfVirtualNetworkLinks': maxNumberOfVirtualNetworkLinks,
      'maxNumberOfVirtualNetworkLinksWithRegistration': maxNumberOfVirtualNetworkLinksWithRegistration,
      'name': name,
      'numberOfRecordSets': numberOfRecordSets,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory GetDnsZoneResult.fromMap(Map<String, dynamic> map) {
    return GetDnsZoneResult(
      id: map['id'] as String,
      maxNumberOfRecordSets: map['maxNumberOfRecordSets'] as int,
      maxNumberOfVirtualNetworkLinks: map['maxNumberOfVirtualNetworkLinks'] as int,
      maxNumberOfVirtualNetworkLinksWithRegistration: map['maxNumberOfVirtualNetworkLinksWithRegistration'] as int,
      name: map['name'] as String,
      numberOfRecordSets: map['numberOfRecordSets'] as int,
      resourceGroupName: map['resourceGroupName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

