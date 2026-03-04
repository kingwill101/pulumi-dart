import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta.dart';
import 'audit_sink_args.dart';
import 'audit_sink_spec.dart';

/// AuditSink represents a cluster level audit sink
class AuditSinkAuditregistrationK8sIoV1alpha1 extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;
  late final pulumi.Output<ObjectMeta> metadata;

  /// Spec defines the audit configuration spec
  late final pulumi.Output<AuditSinkSpec> spec;

  /// Creates a new [AuditSinkAuditregistrationK8sIoV1alpha1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AuditSinkAuditregistrationK8sIoV1alpha1]. {@macro pulumi_auditregistration_k8s_io_v1alpha1_audit_sink_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AuditSinkAuditregistrationK8sIoV1alpha1(
    String name, {
    AuditSinkArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'kubernetes:auditregistration.k8s.io/v1alpha1:AuditSink',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    apiVersion = registerOutput<String>('apiVersion');
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ObjectMeta>('metadata');
    spec = registerOutput<AuditSinkSpec>('spec');
  }
}
