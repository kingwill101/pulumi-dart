// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'diagnostics_description.dart';
import 'service_resource_description.dart';

/// {@template pulumi_servicefabricmesh_application_args_doc}
/// The set of arguments for Application.
/// {@endtemplate}
/// {@macro pulumi_servicefabricmesh_application_args_doc}
class ApplicationArgs {
  /// The identity of the application.
  final pulumi.Input<String>? applicationResourceName;
  /// Internal - used by Visual Studio to setup the debugging session on the local development environment.
  final pulumi.Input<String>? debugParams;
  /// User readable description of the application.
  final pulumi.Input<String>? description;
  /// Describes the diagnostics definition and usage for an application resource.
  final pulumi.Input<DiagnosticsDescription>? diagnostics;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Azure resource group name
  final pulumi.Input<String> resourceGroupName;
  /// Describes the services in the application. This property is used to create or modify services of the application. On get only the name of the service is returned. The service description can be obtained by querying for the service resource.
  final pulumi.Input<List<ServiceResourceDescription>>? services;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ApplicationArgs].
  /// [applicationResourceName] The identity of the application.
  /// [debugParams] Internal - used by Visual Studio to setup the debugging session on the local development environment.
  /// [description] User readable description of the application.
  /// [diagnostics] Describes the diagnostics definition and usage for an application resource.
  /// [location] The geo-location where the resource lives
  /// [resourceGroupName] Azure resource group name
  /// [services] Describes the services in the application. This property is used to create or modify services of the application. On get only the name of the service is returned. The service description can be obtained by querying for the service resource.
  /// [tags] Resource tags.
  ApplicationArgs({
    this.applicationResourceName,
    this.debugParams,
    this.description,
    this.diagnostics,
    this.location,
    required this.resourceGroupName,
    this.services,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationResourceName': ?applicationResourceName,
      'debugParams': ?debugParams,
      'description': ?description,
      'diagnostics': ?pulumi.Input.mapOptionalInputValue<DiagnosticsDescription, Map<String, dynamic>>(diagnostics, (value) => value.toMap()),
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'services': ?pulumi.Input.mapOptionalInputValue<List<ServiceResourceDescription>, List<Map<String, dynamic>>>(services, (value) => pulumi.Input.encodeList<ServiceResourceDescription, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
    };
  }

  factory ApplicationArgs.fromMap(Map<String, dynamic> map) {
    return ApplicationArgs(
      applicationResourceName: map['applicationResourceName'] == null ? null : (map['applicationResourceName']! as String).input(),
      debugParams: map['debugParams'] == null ? null : (map['debugParams']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      diagnostics: map['diagnostics'] == null ? null : (DiagnosticsDescription.fromMap((map['diagnostics']! as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      services: map['services'] == null ? null : (pulumi.Input.decodeList<ServiceResourceDescription>(map['services']!, (value) => ServiceResourceDescription.fromMap((value as Map).cast<String, dynamic>()))).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

