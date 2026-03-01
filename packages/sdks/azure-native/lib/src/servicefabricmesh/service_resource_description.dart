// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'auto_scaling_policy.dart';
import 'container_code_package_properties.dart';
import 'diagnostics_ref.dart';
import 'network_ref.dart';

/// This type describes a service resource.
class ServiceResourceDescription {
  /// Auto scaling policies
  final List<AutoScalingPolicy>? autoScalingPolicies;
  /// Describes the set of code packages that forms the service. A code package describes the container and the properties for running it. All the code packages are started together on the same host and share the same context (network, process etc.).
  final List<ContainerCodePackageProperties> codePackages;
  /// User readable description of the service.
  final String? description;
  /// Reference to sinks in DiagnosticsDescription.
  final DiagnosticsRef? diagnostics;
  /// The name of the resource
  final String? name;
  /// The names of the private networks that this service needs to be part of.
  final List<NetworkRef>? networkRefs;
  /// The operation system required by the code in service.
  final String osType;
  /// The number of replicas of the service to create. Defaults to 1 if not specified.
  final int? replicaCount;

  /// Creates a new [ServiceResourceDescription].
  /// [autoScalingPolicies] Auto scaling policies
  /// [codePackages] Describes the set of code packages that forms the service. A code package describes the container and the properties for running it. All the code packages are started together on the same host and share the same context (network, process etc.).
  /// [description] User readable description of the service.
  /// [diagnostics] Reference to sinks in DiagnosticsDescription.
  /// [name] The name of the resource
  /// [networkRefs] The names of the private networks that this service needs to be part of.
  /// [osType] The operation system required by the code in service.
  /// [replicaCount] The number of replicas of the service to create. Defaults to 1 if not specified.
  ServiceResourceDescription({
    this.autoScalingPolicies,
    required this.codePackages,
    this.description,
    this.diagnostics,
    this.name,
    this.networkRefs,
    required this.osType,
    this.replicaCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoScalingPolicies': ?autoScalingPolicies == null ? null : pulumi.Input.encodeList<AutoScalingPolicy, Map<String, dynamic>>(autoScalingPolicies!, (value) => value.toMap()),
      'codePackages': pulumi.Input.encodeList<ContainerCodePackageProperties, Map<String, dynamic>>(codePackages, (value) => value.toMap()),
      'description': ?description,
      'diagnostics': ?diagnostics == null ? null : diagnostics!.toMap(),
      'name': ?name,
      'networkRefs': ?networkRefs == null ? null : pulumi.Input.encodeList<NetworkRef, Map<String, dynamic>>(networkRefs!, (value) => value.toMap()),
      'osType': osType,
      'replicaCount': ?replicaCount,
    };
  }

  factory ServiceResourceDescription.fromMap(Map<String, dynamic> map) {
    return ServiceResourceDescription(
      autoScalingPolicies: map['autoScalingPolicies'] == null ? null : pulumi.Input.decodeList<AutoScalingPolicy>(map['autoScalingPolicies'], (value) => AutoScalingPolicy.fromMap((value as Map).cast<String, dynamic>())),
      codePackages: pulumi.Input.decodeList<ContainerCodePackageProperties>(map['codePackages'], (value) => ContainerCodePackageProperties.fromMap((value as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : map['description'] as String,
      diagnostics: map['diagnostics'] == null ? null : DiagnosticsRef.fromMap((map['diagnostics'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      networkRefs: map['networkRefs'] == null ? null : pulumi.Input.decodeList<NetworkRef>(map['networkRefs'], (value) => NetworkRef.fromMap((value as Map).cast<String, dynamic>())),
      osType: map['osType'] as String,
      replicaCount: map['replicaCount'] == null ? null : map['replicaCount'] as int,
    );
  }
}

