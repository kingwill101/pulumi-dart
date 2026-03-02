// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering MedtechServiceFhirDestination resources.
class MedtechServiceFhirDestinationState {
  /// Specifies the destination Fhir mappings of the Med Tech Service Fhir Destination.
  final pulumi.Input<String>? destinationFhirMappingJson;
  /// Specifies the destination fhir service id of the Med Tech Service Fhir Destination.
  final pulumi.Input<String>? destinationFhirServiceId;
  /// Specifies the destination identity resolution type where the Healthcare Med Tech Service Fhir Destination should be created. Possible values are `Create`, `Lookup`.
  final pulumi.Input<String>? destinationIdentityResolutionType;
  /// Specifies the Azure Region where the Healthcare Med Tech Service Fhir Destination should be created. Changing this forces a new Healthcare Med Tech Service Fhir Destination to be created.
  final pulumi.Input<String>? location;
  /// Specifies the name of the Healthcare Med Tech Service where the Healthcare Med Tech Service Fhir Destination should exist. Changing this forces a new Healthcare Med Tech Service Fhir Destination to be created.
  final pulumi.Input<String>? medtechServiceId;
  /// Specifies the name of the Healthcare Med Tech Service Fhir Destination. Changing this forces a new Healthcare Med Tech Service Fhir Destination to be created.
  final pulumi.Input<String>? name;

  /// Creates a new [MedtechServiceFhirDestinationState].
  /// [destinationFhirMappingJson] Specifies the destination Fhir mappings of the Med Tech Service Fhir Destination.
  /// [destinationFhirServiceId] Specifies the destination fhir service id of the Med Tech Service Fhir Destination.
  /// [destinationIdentityResolutionType] Specifies the destination identity resolution type where the Healthcare Med Tech Service Fhir Destination should be created. Possible values are `Create`, `Lookup`.
  /// [location] Specifies the Azure Region where the Healthcare Med Tech Service Fhir Destination should be created. Changing this forces a new Healthcare Med Tech Service Fhir Destination to be created.
  /// [medtechServiceId] Specifies the name of the Healthcare Med Tech Service where the Healthcare Med Tech Service Fhir Destination should exist. Changing this forces a new Healthcare Med Tech Service Fhir Destination to be created.
  /// [name] Specifies the name of the Healthcare Med Tech Service Fhir Destination. Changing this forces a new Healthcare Med Tech Service Fhir Destination to be created.
  MedtechServiceFhirDestinationState({
    this.destinationFhirMappingJson,
    this.destinationFhirServiceId,
    this.destinationIdentityResolutionType,
    this.location,
    this.medtechServiceId,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationFhirMappingJson': ?destinationFhirMappingJson,
      'destinationFhirServiceId': ?destinationFhirServiceId,
      'destinationIdentityResolutionType': ?destinationIdentityResolutionType,
      'location': ?location,
      'medtechServiceId': ?medtechServiceId,
      'name': ?name,
    };
  }

  factory MedtechServiceFhirDestinationState.fromMap(Map<String, dynamic> map) {
    return MedtechServiceFhirDestinationState(
      destinationFhirMappingJson: map['destinationFhirMappingJson'] == null ? null : (map['destinationFhirMappingJson'] as String).input(),
      destinationFhirServiceId: map['destinationFhirServiceId'] == null ? null : (map['destinationFhirServiceId'] as String).input(),
      destinationIdentityResolutionType: map['destinationIdentityResolutionType'] == null ? null : (map['destinationIdentityResolutionType'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      medtechServiceId: map['medtechServiceId'] == null ? null : (map['medtechServiceId'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
    );
  }
}

