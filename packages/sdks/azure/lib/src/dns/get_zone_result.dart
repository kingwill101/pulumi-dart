// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getZone.
class GetZoneResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// Maximum number of Records in the zone.
  final int? maxNumberOfRecordSets;
  final String? name;
  /// A list of values that make up the NS record for the zone.
  final List<String>? nameServers;
  /// The number of records already in the zone.
  final int? numberOfRecordSets;
  final String? resourceGroupName;
  /// A mapping of tags assigned to the DNS Zone.
  final Map<String, String>? tags;

  /// Creates a new [GetZoneResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [maxNumberOfRecordSets] Maximum number of Records in the zone.
  /// [name] Optional.
  /// [nameServers] A list of values that make up the NS record for the zone.
  /// [numberOfRecordSets] The number of records already in the zone.
  /// [resourceGroupName] Optional.
  /// [tags] A mapping of tags assigned to the DNS Zone.
  const GetZoneResult({
    this.id,
    this.maxNumberOfRecordSets,
    this.name,
    this.nameServers,
    this.numberOfRecordSets,
    this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'maxNumberOfRecordSets': ?maxNumberOfRecordSets,
      'name': ?name,
      'nameServers': ?nameServers,
      'numberOfRecordSets': ?numberOfRecordSets,
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
    };
  }

  factory GetZoneResult.fromMap(Map<String, dynamic> map) {
    return GetZoneResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maxNumberOfRecordSets: (() { final guardedValue = map['maxNumberOfRecordSets']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      nameServers: (() { final guardedValue = map['nameServers']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      numberOfRecordSets: (() { final guardedValue = map['numberOfRecordSets']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
