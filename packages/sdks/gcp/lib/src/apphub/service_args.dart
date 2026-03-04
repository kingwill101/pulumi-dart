// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_attributes.dart';

/// {@template pulumi_apphub_service_service_args_doc}
/// The set of arguments for Service.
/// {@endtemplate}
/// {@macro pulumi_apphub_service_service_args_doc}
class ServiceArgs {
  /// Part of `parent`.  Full resource name of a parent Application. Example: projects/{HOST_PROJECT_ID}/locations/{LOCATION}/applications/{APPLICATION_ID}
  final pulumi.Input<String> applicationId;

  /// Consumer provided attributes.
  /// Structure is documented below.
  final pulumi.Input<ServiceAttributes>? attributes;

  /// User-defined description of a Service.
  final pulumi.Input<String>? description;

  /// Immutable. The resource name of the original discovered service.
  final pulumi.Input<String> discoveredService;

  /// User-defined name for the Service.
  final pulumi.Input<String>? displayName;

  /// Part of `parent`.  Full resource name of a parent Application. Example: projects/{HOST_PROJECT_ID}/locations/{LOCATION}/applications/{APPLICATION_ID}
  final pulumi.Input<String> location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The Service identifier.
  final pulumi.Input<String> serviceId;

  /// Creates a new [ServiceArgs].
  /// [applicationId] Part of `parent`.  Full resource name of a parent Application. Example: projects/{HOST_PROJECT_ID}/locations/{LOCATION}/applications/{APPLICATION_ID}
  /// [attributes] Consumer provided attributes.
  /// [description] User-defined description of a Service.
  /// [discoveredService] Immutable. The resource name of the original discovered service.
  /// [displayName] User-defined name for the Service.
  /// [location] Part of `parent`.  Full resource name of a parent Application. Example: projects/{HOST_PROJECT_ID}/locations/{LOCATION}/applications/{APPLICATION_ID}
  /// [project] The ID of the project in which the resource belongs.
  /// [serviceId] The Service identifier.
  ServiceArgs({
    required this.applicationId,
    this.attributes,
    this.description,
    required this.discoveredService,
    this.displayName,
    required this.location,
    this.project,
    required this.serviceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationId': applicationId,
      'attributes':
          ?pulumi.Input.mapOptionalInputValue<
            ServiceAttributes,
            Map<String, dynamic>
          >(attributes, (value) => value.toMap()),
      'description': ?description,
      'discoveredService': discoveredService,
      'displayName': ?displayName,
      'location': location,
      'project': ?project,
      'serviceId': serviceId,
    };
  }

  factory ServiceArgs.fromMap(Map<String, dynamic> map) {
    return ServiceArgs(
      applicationId: pulumi.Input.fromValue(map['applicationId'] as String),
      attributes: (() {
        final guardedValue = map['attributes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ServiceAttributes.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      discoveredService: pulumi.Input.fromValue(
        map['discoveredService'] as String,
      ),
      displayName: (() {
        final guardedValue = map['displayName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      serviceId: pulumi.Input.fromValue(map['serviceId'] as String),
    );
  }
}
