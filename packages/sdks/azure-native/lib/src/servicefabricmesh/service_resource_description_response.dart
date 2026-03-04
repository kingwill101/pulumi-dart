// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'auto_scaling_policy_response.dart';
import 'container_code_package_properties_response.dart';
import 'diagnostics_ref_response.dart';
import 'network_ref_response.dart';

/// This type describes a service resource.
class ServiceResourceDescriptionResponse {
  /// Auto scaling policies
  final pulumi.Input<List<AutoScalingPolicyResponse>>? autoScalingPolicies;

  /// Describes the set of code packages that forms the service. A code package describes the container and the properties for running it. All the code packages are started together on the same host and share the same context (network, process etc.).
  final pulumi.Input<List<ContainerCodePackagePropertiesResponse>> codePackages;

  /// User readable description of the service.
  final pulumi.Input<String>? description;

  /// Reference to sinks in DiagnosticsDescription.
  final pulumi.Input<DiagnosticsRefResponse>? diagnostics;

  /// Describes the health state of an application resource.
  final pulumi.Input<String> healthState;

  /// Fully qualified identifier for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final pulumi.Input<String> id;

  /// The name of the resource
  final pulumi.Input<String>? name;

  /// The names of the private networks that this service needs to be part of.
  final pulumi.Input<List<NetworkRefResponse>>? networkRefs;

  /// The operation system required by the code in service.
  final pulumi.Input<String> osType;

  /// State of the resource.
  final pulumi.Input<String> provisioningState;

  /// The number of replicas of the service to create. Defaults to 1 if not specified.
  final pulumi.Input<int>? replicaCount;

  /// Status of the service.
  final pulumi.Input<String> status;

  /// Gives additional information about the current status of the service.
  final pulumi.Input<String> statusDetails;

  /// The type of the resource. Ex- Microsoft.Compute/virtualMachines or Microsoft.Storage/storageAccounts.
  final pulumi.Input<String> type;

  /// When the service's health state is not 'Ok', this additional details from service fabric Health Manager for the user to know why the service is marked unhealthy.
  final pulumi.Input<String> unhealthyEvaluation;

  /// Creates a new [ServiceResourceDescriptionResponse].
  /// [autoScalingPolicies] Auto scaling policies
  /// [codePackages] Describes the set of code packages that forms the service. A code package describes the container and the properties for running it. All the code packages are started together on the same host and share the same context (network, process etc.).
  /// [description] User readable description of the service.
  /// [diagnostics] Reference to sinks in DiagnosticsDescription.
  /// [healthState] Describes the health state of an application resource.
  /// [id] Fully qualified identifier for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [name] The name of the resource
  /// [networkRefs] The names of the private networks that this service needs to be part of.
  /// [osType] The operation system required by the code in service.
  /// [provisioningState] State of the resource.
  /// [replicaCount] The number of replicas of the service to create. Defaults to 1 if not specified.
  /// [status] Status of the service.
  /// [statusDetails] Gives additional information about the current status of the service.
  /// [type] The type of the resource. Ex- Microsoft.Compute/virtualMachines or Microsoft.Storage/storageAccounts.
  /// [unhealthyEvaluation] When the service's health state is not 'Ok', this additional details from service fabric Health Manager for the user to know why the service is marked unhealthy.
  ServiceResourceDescriptionResponse({
    this.autoScalingPolicies,
    required this.codePackages,
    this.description,
    this.diagnostics,
    required this.healthState,
    required this.id,
    this.name,
    this.networkRefs,
    required this.osType,
    required this.provisioningState,
    this.replicaCount,
    required this.status,
    required this.statusDetails,
    required this.type,
    required this.unhealthyEvaluation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoScalingPolicies':
          ?pulumi.Input.mapOptionalInputValue<
            List<AutoScalingPolicyResponse>,
            List<Map<String, dynamic>>
          >(
            autoScalingPolicies,
            (value) =>
                pulumi.Input.encodeList<
                  AutoScalingPolicyResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'codePackages':
          pulumi.Input.mapInputValue<
            List<ContainerCodePackagePropertiesResponse>,
            List<Map<String, dynamic>>
          >(
            codePackages,
            (value) =>
                pulumi.Input.encodeList<
                  ContainerCodePackagePropertiesResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'description': ?description,
      'diagnostics':
          ?pulumi.Input.mapOptionalInputValue<
            DiagnosticsRefResponse,
            Map<String, dynamic>
          >(diagnostics, (value) => value.toMap()),
      'healthState': healthState,
      'id': id,
      'name': ?name,
      'networkRefs':
          ?pulumi.Input.mapOptionalInputValue<
            List<NetworkRefResponse>,
            List<Map<String, dynamic>>
          >(
            networkRefs,
            (value) =>
                pulumi.Input.encodeList<
                  NetworkRefResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'osType': osType,
      'provisioningState': provisioningState,
      'replicaCount': ?replicaCount,
      'status': status,
      'statusDetails': statusDetails,
      'type': type,
      'unhealthyEvaluation': unhealthyEvaluation,
    };
  }

  factory ServiceResourceDescriptionResponse.fromMap(Map<String, dynamic> map) {
    return ServiceResourceDescriptionResponse(
      autoScalingPolicies: (() {
        final guardedValue = map['autoScalingPolicies'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<AutoScalingPolicyResponse>(
            guardedValue,
            (value) => AutoScalingPolicyResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      codePackages: pulumi.Input.fromValue(
        pulumi.Input.decodeList<ContainerCodePackagePropertiesResponse>(
          map['codePackages']!,
          (value) => ContainerCodePackagePropertiesResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      diagnostics: (() {
        final guardedValue = map['diagnostics'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DiagnosticsRefResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      healthState: pulumi.Input.fromValue(map['healthState'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      networkRefs: (() {
        final guardedValue = map['networkRefs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<NetworkRefResponse>(
            guardedValue,
            (value) => NetworkRefResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      osType: pulumi.Input.fromValue(map['osType'] as String),
      provisioningState: pulumi.Input.fromValue(
        map['provisioningState'] as String,
      ),
      replicaCount: (() {
        final guardedValue = map['replicaCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      status: pulumi.Input.fromValue(map['status'] as String),
      statusDetails: pulumi.Input.fromValue(map['statusDetails'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
      unhealthyEvaluation: pulumi.Input.fromValue(
        map['unhealthyEvaluation'] as String,
      ),
    );
  }
}
