// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta.dart';
import 'flow_schema_spec_flowcontrol_apiserver_k8s_io_v1alpha1.dart';
import 'flow_schema_status_flowcontrol_apiserver_k8s_io_v1alpha1.dart';

/// FlowSchema defines the schema of a group of flows. Note that a flow is made up of a set of inbound API requests with similar attributes and is identified by a pair of strings: the name of the FlowSchema and a "flow distinguisher".
class FlowSchemaFlowcontrolApiserverK8sIoV1alpha1 {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final pulumi.Input<String?>? apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final pulumi.Input<String?>? kind;
  /// `metadata` is the standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  final pulumi.Input<ObjectMeta?>? metadata;
  /// `spec` is the specification of the desired behavior of a FlowSchema. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  final pulumi.Input<FlowSchemaSpecFlowcontrolApiserverK8sIoV1alpha1?>? spec;
  /// `status` is the current status of a FlowSchema. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  final pulumi.Input<FlowSchemaStatusFlowcontrolApiserverK8sIoV1alpha1?>? status;

  /// Creates a new [FlowSchemaFlowcontrolApiserverK8sIoV1alpha1].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] `metadata` is the standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  /// [spec] `spec` is the specification of the desired behavior of a FlowSchema. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  /// [status] `status` is the current status of a FlowSchema. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  const FlowSchemaFlowcontrolApiserverK8sIoV1alpha1({
    this.apiVersion,
    this.kind,
    this.metadata,
    this.spec,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'kind': ?kind,
      'metadata': ?pulumi.Input.mapOptionalInputValue<ObjectMeta, Map<String, dynamic>>(metadata, (value) => value.toMap()),
      'spec': ?pulumi.Input.mapOptionalInputValue<FlowSchemaSpecFlowcontrolApiserverK8sIoV1alpha1, Map<String, dynamic>>(spec, (value) => value.toMap()),
      'status': ?pulumi.Input.mapOptionalInputValue<FlowSchemaStatusFlowcontrolApiserverK8sIoV1alpha1, Map<String, dynamic>>(status, (value) => value.toMap()),
    };
  }

  factory FlowSchemaFlowcontrolApiserverK8sIoV1alpha1.fromMap(Map<String, dynamic> map) {
    return FlowSchemaFlowcontrolApiserverK8sIoV1alpha1(
      apiVersion: (() { final guardedValue = map['apiVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ObjectMeta.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      spec: (() { final guardedValue = map['spec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FlowSchemaSpecFlowcontrolApiserverK8sIoV1alpha1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FlowSchemaStatusFlowcontrolApiserverK8sIoV1alpha1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
