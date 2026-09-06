// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'auto_scaling_policy.dart';
import 'container_code_package_properties.dart';
import 'diagnostics_ref.dart';
import 'network_ref.dart';

/// This type describes a service resource.
class ServiceResourceDescription {
  /// Auto scaling policies
  final pulumi.Input<List<AutoScalingPolicy>?>? autoScalingPolicies;
  /// Describes the set of code packages that forms the service. A code package describes the container and the properties for running it. All the code packages are started together on the same host and share the same context (network, process etc.).
  final pulumi.Input<List<ContainerCodePackageProperties>> codePackages;
  /// User readable description of the service.
  final pulumi.Input<String?>? description;
  /// Reference to sinks in DiagnosticsDescription.
  final pulumi.Input<DiagnosticsRef?>? diagnostics;
  /// The name of the resource
  final pulumi.Input<String?>? name;
  /// The names of the private networks that this service needs to be part of.
  final pulumi.Input<List<NetworkRef>?>? networkRefs;
  /// The operation system required by the code in service.
  final pulumi.Input<dynamic> osType;
  /// The number of replicas of the service to create. Defaults to 1 if not specified.
  final pulumi.Input<int?>? replicaCount;

  /// Creates a new [ServiceResourceDescription].
  /// [autoScalingPolicies] Auto scaling policies
  /// [codePackages] Describes the set of code packages that forms the service. A code package describes the container and the properties for running it. All the code packages are started together on the same host and share the same context (network, process etc.).
  /// [description] User readable description of the service.
  /// [diagnostics] Reference to sinks in DiagnosticsDescription.
  /// [name] The name of the resource
  /// [networkRefs] The names of the private networks that this service needs to be part of.
  /// [osType] The operation system required by the code in service.
  /// [replicaCount] The number of replicas of the service to create. Defaults to 1 if not specified.
  const ServiceResourceDescription({
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
      'autoScalingPolicies': ?pulumi.Input.mapOptionalInputValue<List<AutoScalingPolicy>, List<Map<String, dynamic>>>(autoScalingPolicies, (value) => pulumi.Input.encodeList<AutoScalingPolicy, Map<String, dynamic>>(value, (value) => value.toMap())),
      'codePackages': pulumi.Input.mapInputValue<List<ContainerCodePackageProperties>, List<Map<String, dynamic>>>(codePackages, (value) => pulumi.Input.encodeList<ContainerCodePackageProperties, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'diagnostics': ?pulumi.Input.mapOptionalInputValue<DiagnosticsRef, Map<String, dynamic>>(diagnostics, (value) => value.toMap()),
      'name': ?name,
      'networkRefs': ?pulumi.Input.mapOptionalInputValue<List<NetworkRef>, List<Map<String, dynamic>>>(networkRefs, (value) => pulumi.Input.encodeList<NetworkRef, Map<String, dynamic>>(value, (value) => value.toMap())),
      'osType': osType,
      'replicaCount': ?replicaCount,
    };
  }

  factory ServiceResourceDescription.fromMap(Map<String, dynamic> map) {
    return ServiceResourceDescription(
      autoScalingPolicies: (() { final guardedValue = map['autoScalingPolicies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AutoScalingPolicy>(guardedValue, (value) => AutoScalingPolicy.fromMap((value as Map).cast<String, dynamic>()))); })(),
      codePackages: pulumi.Input.fromValue(pulumi.Input.decodeList<ContainerCodePackageProperties>(map['codePackages']!, (value) => ContainerCodePackageProperties.fromMap((value as Map).cast<String, dynamic>()))),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      diagnostics: (() { final guardedValue = map['diagnostics']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DiagnosticsRef.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkRefs: (() { final guardedValue = map['networkRefs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NetworkRef>(guardedValue, (value) => NetworkRef.fromMap((value as Map).cast<String, dynamic>()))); })(),
      osType: pulumi.Input.fromValue(map['osType']),
      replicaCount: (() { final guardedValue = map['replicaCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
