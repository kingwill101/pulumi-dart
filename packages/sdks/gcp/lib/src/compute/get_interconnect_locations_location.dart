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
      address: pulumi.Input.fromValue(map['address'] as String),
      availabilityZone: pulumi.Input.fromValue(map['availabilityZone'] as String),
      availableFeatures: pulumi.Input.fromValue((map['availableFeatures'] as List).cast<String>()),
      availableLinkTypes: pulumi.Input.fromValue((map['availableLinkTypes'] as List).cast<String>()),
      city: pulumi.Input.fromValue(map['city'] as String),
      continent: pulumi.Input.fromValue(map['continent'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      facilityProvider: pulumi.Input.fromValue(map['facilityProvider'] as String),
      facilityProviderFacilityId: pulumi.Input.fromValue(map['facilityProviderFacilityId'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      peeringdbFacilityId: pulumi.Input.fromValue(map['peeringdbFacilityId'] as String),
      selfLink: pulumi.Input.fromValue(map['selfLink'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      supportsPzs: pulumi.Input.fromValue(map['supportsPzs'] as bool),
    );
  }
}

