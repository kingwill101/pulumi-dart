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
    required pulumi.Output<String> applicationId,
    pulumi.Output<ServiceAttributes>? attributes,
    pulumi.Output<String>? description,
    required pulumi.Output<String> discoveredService,
    pulumi.Output<String>? displayName,
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
    required pulumi.Output<String> serviceId,
  }) :
      applicationId = pulumi.Input.asInput<String>(applicationId),
      attributes = pulumi.Input.asOptionalInput<ServiceAttributes>(attributes),
      description = pulumi.Input.asOptionalInput<String>(description),
      discoveredService = pulumi.Input.asInput<String>(discoveredService),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      serviceId = pulumi.Input.asInput<String>(serviceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationId': applicationId,
      'attributes': ?pulumi.Input.mapOptionalInputValue<ServiceAttributes, Map<String, dynamic>>(attributes, (value) => value.toMap()),
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
      applicationId: pulumi.Output.create<String>(map['applicationId'] as String),
      attributes: map['attributes'] == null ? null : pulumi.Output.create<ServiceAttributes>(ServiceAttributes.fromMap((map['attributes'] as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      discoveredService: pulumi.Output.create<String>(map['discoveredService'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      serviceId: pulumi.Output.create<String>(map['serviceId'] as String),
    );
  }
}

