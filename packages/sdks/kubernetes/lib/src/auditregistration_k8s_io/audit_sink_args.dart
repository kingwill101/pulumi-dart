// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta.dart';
import 'audit_sink_spec.dart';

/// {@template pulumi_auditregistration_k8s_io_v1alpha1_audit_sink_args_doc}
/// The set of arguments for AuditSink.
/// {@endtemplate}
/// {@macro pulumi_auditregistration_k8s_io_v1alpha1_audit_sink_args_doc}
class AuditSinkArgs {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final pulumi.Input<String>? apiVersion;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final pulumi.Input<String>? kind;
  final pulumi.Input<ObjectMeta>? metadata;

  /// Spec defines the audit configuration spec
  final pulumi.Input<AuditSinkSpec>? spec;

  /// Creates a new [AuditSinkArgs].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] Optional.
  /// [spec] Spec defines the audit configuration spec
  AuditSinkArgs({this.apiVersion, this.kind, this.metadata, this.spec});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'kind': ?kind,
      'metadata':
          ?pulumi.Input.mapOptionalInputValue<ObjectMeta, Map<String, dynamic>>(
            metadata,
            (value) => value.toMap(),
          ),
      'spec':
          ?pulumi.Input.mapOptionalInputValue<
            AuditSinkSpec,
            Map<String, dynamic>
          >(spec, (value) => value.toMap()),
    };
  }

  factory AuditSinkArgs.fromMap(Map<String, dynamic> map) {
    return AuditSinkArgs(
      apiVersion: (() {
        final guardedValue = map['apiVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      kind: (() {
        final guardedValue = map['kind'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      metadata: (() {
        final guardedValue = map['metadata'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ObjectMeta.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      spec: (() {
        final guardedValue = map['spec'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AuditSinkSpec.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
    );
  }
}
