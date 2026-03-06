// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_healthcare_medtech_service_fhir_destination_medtech_service_fhir_destination_args_doc}
/// The set of arguments for MedtechServiceFhirDestination.
/// {@endtemplate}
/// {@macro pulumi_healthcare_medtech_service_fhir_destination_medtech_service_fhir_destination_args_doc}
class MedtechServiceFhirDestinationArgs {
  /// Specifies the destination Fhir mappings of the Med Tech Service Fhir Destination.
  final pulumi.Input<String> destinationFhirMappingJson;
  /// Specifies the destination fhir service id of the Med Tech Service Fhir Destination.
  final pulumi.Input<String> destinationFhirServiceId;
  /// Specifies the destination identity resolution type where the Healthcare Med Tech Service Fhir Destination should be created. Possible values are `Create`, `Lookup`.
  final pulumi.Input<String> destinationIdentityResolutionType;
  /// Specifies the Azure Region where the Healthcare Med Tech Service Fhir Destination should be created. Changing this forces a new Healthcare Med Tech Service Fhir Destination to be created.
  final pulumi.Input<String>? location;
  /// Specifies the name of the Healthcare Med Tech Service where the Healthcare Med Tech Service Fhir Destination should exist. Changing this forces a new Healthcare Med Tech Service Fhir Destination to be created.
  final pulumi.Input<String> medtechServiceId;
  /// Specifies the name of the Healthcare Med Tech Service Fhir Destination. Changing this forces a new Healthcare Med Tech Service Fhir Destination to be created.
  final pulumi.Input<String>? name;

  /// Creates a new [MedtechServiceFhirDestinationArgs].
  /// [destinationFhirMappingJson] Specifies the destination Fhir mappings of the Med Tech Service Fhir Destination.
  /// [destinationFhirServiceId] Specifies the destination fhir service id of the Med Tech Service Fhir Destination.
  /// [destinationIdentityResolutionType] Specifies the destination identity resolution type where the Healthcare Med Tech Service Fhir Destination should be created. Possible values are `Create`, `Lookup`.
  /// [location] Specifies the Azure Region where the Healthcare Med Tech Service Fhir Destination should be created. Changing this forces a new Healthcare Med Tech Service Fhir Destination to be created.
  /// [medtechServiceId] Specifies the name of the Healthcare Med Tech Service where the Healthcare Med Tech Service Fhir Destination should exist. Changing this forces a new Healthcare Med Tech Service Fhir Destination to be created.
  /// [name] Specifies the name of the Healthcare Med Tech Service Fhir Destination. Changing this forces a new Healthcare Med Tech Service Fhir Destination to be created.
  const MedtechServiceFhirDestinationArgs({
    required this.destinationFhirMappingJson,
    required this.destinationFhirServiceId,
    required this.destinationIdentityResolutionType,
    this.location,
    required this.medtechServiceId,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationFhirMappingJson': destinationFhirMappingJson,
      'destinationFhirServiceId': destinationFhirServiceId,
      'destinationIdentityResolutionType': destinationIdentityResolutionType,
      'location': ?location,
      'medtechServiceId': medtechServiceId,
      'name': ?name,
    };
  }

  factory MedtechServiceFhirDestinationArgs.fromMap(Map<String, dynamic> map) {
    return MedtechServiceFhirDestinationArgs(
      destinationFhirMappingJson: pulumi.Input.fromValue(map['destinationFhirMappingJson'] as String),
      destinationFhirServiceId: pulumi.Input.fromValue(map['destinationFhirServiceId'] as String),
      destinationIdentityResolutionType: pulumi.Input.fromValue(map['destinationIdentityResolutionType'] as String),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      medtechServiceId: pulumi.Input.fromValue(map['medtechServiceId'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

