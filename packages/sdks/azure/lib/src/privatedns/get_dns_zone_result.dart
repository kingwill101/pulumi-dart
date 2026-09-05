// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getDnsZone.
class GetDnsZoneResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// Maximum number of recordsets that can be created in this Private Zone.
  final int? maxNumberOfRecordSets;
  /// Maximum number of Virtual Networks that can be linked to this Private Zone.
  final int? maxNumberOfVirtualNetworkLinks;
  /// Maximum number of Virtual Networks that can be linked to this Private Zone with registration enabled.
  final int? maxNumberOfVirtualNetworkLinksWithRegistration;
  final String? name;
  /// The number of recordsets currently in the zone.
  final int? numberOfRecordSets;
  final String? resourceGroupName;
  /// A mapping of tags for the zone.
  final Map<String, String>? tags;

  /// Creates a new [GetDnsZoneResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [maxNumberOfRecordSets] Maximum number of recordsets that can be created in this Private Zone.
  /// [maxNumberOfVirtualNetworkLinks] Maximum number of Virtual Networks that can be linked to this Private Zone.
  /// [maxNumberOfVirtualNetworkLinksWithRegistration] Maximum number of Virtual Networks that can be linked to this Private Zone with registration enabled.
  /// [name] Optional.
  /// [numberOfRecordSets] The number of recordsets currently in the zone.
  /// [resourceGroupName] Optional.
  /// [tags] A mapping of tags for the zone.
  const GetDnsZoneResult({
    this.id,
    this.maxNumberOfRecordSets,
    this.maxNumberOfVirtualNetworkLinks,
    this.maxNumberOfVirtualNetworkLinksWithRegistration,
    this.name,
    this.numberOfRecordSets,
    this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'maxNumberOfRecordSets': ?maxNumberOfRecordSets,
      'maxNumberOfVirtualNetworkLinks': ?maxNumberOfVirtualNetworkLinks,
      'maxNumberOfVirtualNetworkLinksWithRegistration': ?maxNumberOfVirtualNetworkLinksWithRegistration,
      'name': ?name,
      'numberOfRecordSets': ?numberOfRecordSets,
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
    };
  }

  factory GetDnsZoneResult.fromMap(Map<String, dynamic> map) {
    return GetDnsZoneResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maxNumberOfRecordSets: (() { final guardedValue = map['maxNumberOfRecordSets']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      maxNumberOfVirtualNetworkLinks: (() { final guardedValue = map['maxNumberOfVirtualNetworkLinks']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      maxNumberOfVirtualNetworkLinksWithRegistration: (() { final guardedValue = map['maxNumberOfVirtualNetworkLinksWithRegistration']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      numberOfRecordSets: (() { final guardedValue = map['numberOfRecordSets']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
