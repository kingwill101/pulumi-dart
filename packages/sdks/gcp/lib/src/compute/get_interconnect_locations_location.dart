// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInterconnectLocationsLocation {
  /// The postal address of the Point of Presence.
  final pulumi.Input<String> address;
  /// The availability zone for this InterconnectLocation.
  final pulumi.Input<String> availabilityZone;
  /// A list of features available at this InterconnectLocation.
  final pulumi.Input<List<String>> availableFeatures;
  /// A list of link types available at this InterconnectLocation.
  final pulumi.Input<List<String>> availableLinkTypes;
  /// The city for this location.
  final pulumi.Input<String> city;
  /// The continent for this location.
  final pulumi.Input<String> continent;
  /// A textual description of the resource.
  final pulumi.Input<String> description;
  /// The name of the provider for this facility.
  final pulumi.Input<String> facilityProvider;
  /// A provider-assigned Identifier for this facility.
  final pulumi.Input<String> facilityProviderFacilityId;
  final pulumi.Input<String> name;
  /// The PeeringDB facility ID for this facility.
  final pulumi.Input<String> peeringdbFacilityId;
  /// The URI of the created resource.
  final pulumi.Input<String> selfLink;
  /// The status of this InterconnectLocation.
  final pulumi.Input<String> status;
  /// Reserved for future use.
  final pulumi.Input<bool> supportsPzs;

  /// Creates a new [GetInterconnectLocationsLocation].
  /// [address] The postal address of the Point of Presence.
  /// [availabilityZone] The availability zone for this InterconnectLocation.
  /// [availableFeatures] A list of features available at this InterconnectLocation.
  /// [availableLinkTypes] A list of link types available at this InterconnectLocation.
  /// [city] The city for this location.
  /// [continent] The continent for this location.
  /// [description] A textual description of the resource.
  /// [facilityProvider] The name of the provider for this facility.
  /// [facilityProviderFacilityId] A provider-assigned Identifier for this facility.
  /// [name] Required.
  /// [peeringdbFacilityId] The PeeringDB facility ID for this facility.
  /// [selfLink] The URI of the created resource.
  /// [status] The status of this InterconnectLocation.
  /// [supportsPzs] Reserved for future use.
  GetInterconnectLocationsLocation({
    required this.address,
    required this.availabilityZone,
    required this.availableFeatures,
    required this.availableLinkTypes,
    required this.city,
    required this.continent,
    required this.description,
    required this.facilityProvider,
    required this.facilityProviderFacilityId,
    required this.name,
    required this.peeringdbFacilityId,
    required this.selfLink,
    required this.status,
    required this.supportsPzs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': address,
      'availabilityZone': availabilityZone,
      'availableFeatures': availableFeatures,
      'availableLinkTypes': availableLinkTypes,
      'city': city,
      'continent': continent,
      'description': description,
      'facilityProvider': facilityProvider,
      'facilityProviderFacilityId': facilityProviderFacilityId,
      'name': name,
      'peeringdbFacilityId': peeringdbFacilityId,
      'selfLink': selfLink,
      'status': status,
      'supportsPzs': supportsPzs,
    };
  }

  factory GetInterconnectLocationsLocation.fromMap(Map<String, dynamic> map) {
    return GetInterconnectLocationsLocation(
      address: (map['address'] as String).input(),
      availabilityZone: (map['availabilityZone'] as String).input(),
      availableFeatures: ((map['availableFeatures'] as List).cast<String>()).input(),
      availableLinkTypes: ((map['availableLinkTypes'] as List).cast<String>()).input(),
      city: (map['city'] as String).input(),
      continent: (map['continent'] as String).input(),
      description: (map['description'] as String).input(),
      facilityProvider: (map['facilityProvider'] as String).input(),
      facilityProviderFacilityId: (map['facilityProviderFacilityId'] as String).input(),
      name: (map['name'] as String).input(),
      peeringdbFacilityId: (map['peeringdbFacilityId'] as String).input(),
      selfLink: (map['selfLink'] as String).input(),
      status: (map['status'] as String).input(),
      supportsPzs: (map['supportsPzs'] as bool).input(),
    );
  }
}

