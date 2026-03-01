// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta.dart';
import 'priority_level_configuration_spec_flowcontrol_apiserver_k8s_io_v1beta2.dart';

/// {@template pulumi_flowcontrol_apiserver_k8s_io_v1beta2_priority_level_configuration_flowcontrol_apiserver_k8s_io_v1beta2_args_doc}
/// The set of arguments for PriorityLevelConfiguration.
/// {@endtemplate}
/// {@macro pulumi_flowcontrol_apiserver_k8s_io_v1beta2_priority_level_configuration_flowcontrol_apiserver_k8s_io_v1beta2_args_doc}
class PriorityLevelConfigurationFlowcontrolApiserverK8sIoV1beta2Args {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final pulumi.Input<String>? apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final pulumi.Input<String>? kind;
  /// `metadata` is the standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  final pulumi.Input<ObjectMeta>? metadata;
  /// `spec` is the specification of the desired behavior of a "request-priority". More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  final pulumi.Input<PriorityLevelConfigurationSpecFlowcontrolApiserverK8sIoV1beta2>? spec;

  /// Creates a new [PriorityLevelConfigurationFlowcontrolApiserverK8sIoV1beta2Args].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] `metadata` is the standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  /// [spec] `spec` is the specification of the desired behavior of a "request-priority". More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  PriorityLevelConfigurationFlowcontrolApiserverK8sIoV1beta2Args({
    pulumi.Output<String>? apiVersion,
    pulumi.Output<String>? kind,
    pulumi.Output<ObjectMeta>? metadata,
    pulumi.Output<PriorityLevelConfigurationSpecFlowcontrolApiserverK8sIoV1beta2>? spec,
  }) :
      apiVersion = pulumi.Input.asOptionalInput<String>(apiVersion),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      metadata = pulumi.Input.asOptionalInput<ObjectMeta>(metadata),
      spec = pulumi.Input.asOptionalInput<PriorityLevelConfigurationSpecFlowcontrolApiserverK8sIoV1beta2>(spec);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'kind': ?kind,
      'metadata': ?pulumi.Input.mapOptionalInputValue<ObjectMeta, Map<String, dynamic>>(metadata, (value) => value.toMap()),
      'spec': ?pulumi.Input.mapOptionalInputValue<PriorityLevelConfigurationSpecFlowcontrolApiserverK8sIoV1beta2, Map<String, dynamic>>(spec, (value) => value.toMap()),
    };
  }

  factory PriorityLevelConfigurationFlowcontrolApiserverK8sIoV1beta2Args.fromMap(Map<String, dynamic> map) {
    return PriorityLevelConfigurationFlowcontrolApiserverK8sIoV1beta2Args(
      apiVersion: map['apiVersion'] == null ? null : pulumi.Output.create<String>(map['apiVersion'] as String),
      kind: map['kind'] == null ? null : pulumi.Output.create<String>(map['kind'] as String),
      metadata: map['metadata'] == null ? null : pulumi.Output.create<ObjectMeta>(ObjectMeta.fromMap((map['metadata'] as Map).cast<String, dynamic>())),
      spec: map['spec'] == null ? null : pulumi.Output.create<PriorityLevelConfigurationSpecFlowcontrolApiserverK8sIoV1beta2>(PriorityLevelConfigurationSpecFlowcontrolApiserverK8sIoV1beta2.fromMap((map['spec'] as Map).cast<String, dynamic>())),
    );
  }
}

