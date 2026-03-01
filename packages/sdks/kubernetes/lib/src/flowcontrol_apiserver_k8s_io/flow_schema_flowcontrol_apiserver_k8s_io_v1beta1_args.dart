// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta.dart';
import 'flow_schema_spec_flowcontrol_apiserver_k8s_io_v1beta1.dart';

/// {@template pulumi_flowcontrol_apiserver_k8s_io_v1beta1_flow_schema_flowcontrol_apiserver_k8s_io_v1beta1_args_doc}
/// The set of arguments for FlowSchema.
/// {@endtemplate}
/// {@macro pulumi_flowcontrol_apiserver_k8s_io_v1beta1_flow_schema_flowcontrol_apiserver_k8s_io_v1beta1_args_doc}
class FlowSchemaFlowcontrolApiserverK8sIoV1beta1Args {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final pulumi.Input<String>? apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final pulumi.Input<String>? kind;
  /// `metadata` is the standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  final pulumi.Input<ObjectMeta>? metadata;
  /// `spec` is the specification of the desired behavior of a FlowSchema. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  final pulumi.Input<FlowSchemaSpecFlowcontrolApiserverK8sIoV1beta1>? spec;

  /// Creates a new [FlowSchemaFlowcontrolApiserverK8sIoV1beta1Args].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] `metadata` is the standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  /// [spec] `spec` is the specification of the desired behavior of a FlowSchema. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  FlowSchemaFlowcontrolApiserverK8sIoV1beta1Args({
    pulumi.Output<String>? apiVersion,
    pulumi.Output<String>? kind,
    pulumi.Output<ObjectMeta>? metadata,
    pulumi.Output<FlowSchemaSpecFlowcontrolApiserverK8sIoV1beta1>? spec,
  }) :
      apiVersion = pulumi.Input.asOptionalInput<String>(apiVersion),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      metadata = pulumi.Input.asOptionalInput<ObjectMeta>(metadata),
      spec = pulumi.Input.asOptionalInput<FlowSchemaSpecFlowcontrolApiserverK8sIoV1beta1>(spec);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'kind': ?kind,
      'metadata': ?pulumi.Input.mapOptionalInputValue<ObjectMeta, Map<String, dynamic>>(metadata, (value) => value.toMap()),
      'spec': ?pulumi.Input.mapOptionalInputValue<FlowSchemaSpecFlowcontrolApiserverK8sIoV1beta1, Map<String, dynamic>>(spec, (value) => value.toMap()),
    };
  }

  factory FlowSchemaFlowcontrolApiserverK8sIoV1beta1Args.fromMap(Map<String, dynamic> map) {
    return FlowSchemaFlowcontrolApiserverK8sIoV1beta1Args(
      apiVersion: map['apiVersion'] == null ? null : pulumi.Output.create<String>(map['apiVersion'] as String),
      kind: map['kind'] == null ? null : pulumi.Output.create<String>(map['kind'] as String),
      metadata: map['metadata'] == null ? null : pulumi.Output.create<ObjectMeta>(ObjectMeta.fromMap((map['metadata'] as Map).cast<String, dynamic>())),
      spec: map['spec'] == null ? null : pulumi.Output.create<FlowSchemaSpecFlowcontrolApiserverK8sIoV1beta1>(FlowSchemaSpecFlowcontrolApiserverK8sIoV1beta1.fromMap((map['spec'] as Map).cast<String, dynamic>())),
    );
  }
}

