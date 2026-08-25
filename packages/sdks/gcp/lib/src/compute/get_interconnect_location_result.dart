// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getInterconnectLocation.
class GetInterconnectLocationResult {
  /// The postal address of the Point of Presence.
  final String? address;
  /// The availability zone for this InterconnectLocation.
  final String? availabilityZone;
  /// The city for this location.
  final String? city;
  /// The continent for this location.
  final String? continent;
  /// A textual description of the resource.
  final String? description;
  /// The name of the provider for this facility.
  final String? facilityProvider;
  /// A provider-assigned Identifier for this facility.
  final String? facilityProviderFacilityId;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? name;
  /// The PeeringDB facility ID for this facility.
  final String? peeringdbFacilityId;
  final String? project;
  /// The URI of the created resource.
  final String? selfLink;
  /// The status of this InterconnectLocation.
  final String? status;

  /// Creates a new [GetInterconnectLocationResult].
  /// [address] The postal address of the Point of Presence.
  /// [availabilityZone] The availability zone for this InterconnectLocation.
  /// [city] The city for this location.
  /// [continent] The continent for this location.
  /// [description] A textual description of the resource.
  /// [facilityProvider] The name of the provider for this facility.
  /// [facilityProviderFacilityId] A provider-assigned Identifier for this facility.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Optional.
  /// [peeringdbFacilityId] The PeeringDB facility ID for this facility.
  /// [project] Optional.
  /// [selfLink] The URI of the created resource.
  /// [status] The status of this InterconnectLocation.
  const GetInterconnectLocationResult({
    this.address,
    this.availabilityZone,
    this.city,
    this.continent,
    this.description,
    this.facilityProvider,
    this.facilityProviderFacilityId,
    this.id,
    this.name,
    this.peeringdbFacilityId,
    this.project,
    this.selfLink,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address,
      'availabilityZone': ?availabilityZone,
      'city': ?city,
      'continent': ?continent,
      'description': ?description,
      'facilityProvider': ?facilityProvider,
      'facilityProviderFacilityId': ?facilityProviderFacilityId,
      'id': ?id,
      'name': ?name,
      'peeringdbFacilityId': ?peeringdbFacilityId,
      'project': ?project,
      'selfLink': ?selfLink,
      'status': ?status,
    };
  }

  factory GetInterconnectLocationResult.fromMap(Map<String, dynamic> map) {
    return GetInterconnectLocationResult(
      address: (() { final guardedValue = map['address']; if (guardedValue == null) return null; return guardedValue as String; })(),
      availabilityZone: (() { final guardedValue = map['availabilityZone']; if (guardedValue == null) return null; return guardedValue as String; })(),
      city: (() { final guardedValue = map['city']; if (guardedValue == null) return null; return guardedValue as String; })(),
      continent: (() { final guardedValue = map['continent']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      facilityProvider: (() { final guardedValue = map['facilityProvider']; if (guardedValue == null) return null; return guardedValue as String; })(),
      facilityProviderFacilityId: (() { final guardedValue = map['facilityProviderFacilityId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      peeringdbFacilityId: (() { final guardedValue = map['peeringdbFacilityId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      selfLink: (() { final guardedValue = map['selfLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
