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
    pulumi.Output<String>? destinationFhirMappingJson,
    pulumi.Output<String>? destinationFhirServiceId,
    pulumi.Output<String>? destinationIdentityResolutionType,
    pulumi.Output<String>? location,
    pulumi.Output<String>? medtechServiceId,
    pulumi.Output<String>? name,
  }) :
      destinationFhirMappingJson = pulumi.Input.asOptionalInput<String>(destinationFhirMappingJson),
      destinationFhirServiceId = pulumi.Input.asOptionalInput<String>(destinationFhirServiceId),
      destinationIdentityResolutionType = pulumi.Input.asOptionalInput<String>(destinationIdentityResolutionType),
      location = pulumi.Input.asOptionalInput<String>(location),
      medtechServiceId = pulumi.Input.asOptionalInput<String>(medtechServiceId),
      name = pulumi.Input.asOptionalInput<String>(name);

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
      destinationFhirMappingJson: map['destinationFhirMappingJson'] == null ? null : pulumi.Output.create<String>(map['destinationFhirMappingJson'] as String),
      destinationFhirServiceId: map['destinationFhirServiceId'] == null ? null : pulumi.Output.create<String>(map['destinationFhirServiceId'] as String),
      destinationIdentityResolutionType: map['destinationIdentityResolutionType'] == null ? null : pulumi.Output.create<String>(map['destinationIdentityResolutionType'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      medtechServiceId: map['medtechServiceId'] == null ? null : pulumi.Output.create<String>(map['medtechServiceId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
    );
  }
}

