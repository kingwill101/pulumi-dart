// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'diagnostics_description_response.dart';
import 'service_resource_description_response.dart';

/// Result data returned by getApplication.
class GetApplicationResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Internal - used by Visual Studio to setup the debugging session on the local development environment.
  final String? debugParams;
  /// User readable description of the application.
  final String? description;
  /// Describes the diagnostics definition and usage for an application resource.
  final DiagnosticsDescriptionResponse? diagnostics;
  /// Describes the health state of an application resource.
  final String healthState;
  /// Fully qualified identifier for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The geo-location where the resource lives
  final String location;
  /// The name of the resource
  final String name;
  /// State of the resource.
  final String provisioningState;
  /// Names of the services in the application.
  final List<String> serviceNames;
  /// Describes the services in the application. This property is used to create or modify services of the application. On get only the name of the service is returned. The service description can be obtained by querying for the service resource.
  final List<ServiceResourceDescriptionResponse>? services;
  /// Status of the application.
  final String status;
  /// Gives additional information about the current status of the application.
  final String statusDetails;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. Ex- Microsoft.Compute/virtualMachines or Microsoft.Storage/storageAccounts.
  final String type;
  /// When the application's health state is not 'Ok', this additional details from service fabric Health Manager for the user to know why the application is marked unhealthy.
  final String unhealthyEvaluation;

  /// Creates a new [GetApplicationResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [debugParams] Internal - used by Visual Studio to setup the debugging session on the local development environment.
  /// [description] User readable description of the application.
  /// [diagnostics] Describes the diagnostics definition and usage for an application resource.
  /// [healthState] Describes the health state of an application resource.
  /// [id] Fully qualified identifier for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [provisioningState] State of the resource.
  /// [serviceNames] Names of the services in the application.
  /// [services] Describes the services in the application. This property is used to create or modify services of the application. On get only the name of the service is returned. The service description can be obtained by querying for the service resource.
  /// [status] Status of the application.
  /// [statusDetails] Gives additional information about the current status of the application.
  /// [tags] Resource tags.
  /// [type] The type of the resource. Ex- Microsoft.Compute/virtualMachines or Microsoft.Storage/storageAccounts.
  /// [unhealthyEvaluation] When the application's health state is not 'Ok', this additional details from service fabric Health Manager for the user to know why the application is marked unhealthy.
  const GetApplicationResult({
    required this.azureApiVersion,
    this.debugParams,
    this.description,
    this.diagnostics,
    required this.healthState,
    required this.id,
    required this.location,
    required this.name,
    required this.provisioningState,
    required this.serviceNames,
    this.services,
    required this.status,
    required this.statusDetails,
    this.tags,
    required this.type,
    required this.unhealthyEvaluation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'debugParams': ?debugParams,
      'description': ?description,
      'diagnostics': ?diagnostics?.toMap(),
      'healthState': healthState,
      'id': id,
      'location': location,
      'name': name,
      'provisioningState': provisioningState,
      'serviceNames': serviceNames,
      'services': ?(() { final guardedValue = services; if (guardedValue == null) return null; return pulumi.Input.encodeList<ServiceResourceDescriptionResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'status': status,
      'statusDetails': statusDetails,
      'tags': ?tags,
      'type': type,
      'unhealthyEvaluation': unhealthyEvaluation,
    };
  }

  factory GetApplicationResult.fromMap(Map<String, dynamic> map) {
    return GetApplicationResult(
      azureApiVersion: map['azureApiVersion'] as String,
      debugParams: (() { final guardedValue = map['debugParams']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      diagnostics: (() { final guardedValue = map['diagnostics']; if (guardedValue == null) return null; return DiagnosticsDescriptionResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      healthState: map['healthState'] as String,
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      serviceNames: (map['serviceNames'] as List).cast<String>(),
      services: (() { final guardedValue = map['services']; if (guardedValue == null) return null; return pulumi.Input.decodeList<ServiceResourceDescriptionResponse>(guardedValue, (value) => ServiceResourceDescriptionResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      status: map['status'] as String,
      statusDetails: map['statusDetails'] as String,
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
      unhealthyEvaluation: map['unhealthyEvaluation'] as String,
    );
  }
}

