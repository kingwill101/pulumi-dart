import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/list_meta.dart';
import 'audit_sink_list_args.dart';

/// AuditSinkList is a list of AuditSink items.
class AuditSinkListAuditregistrationK8sIoV1alpha1
    extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;

  /// List of audit configurations.
  late final pulumi.Output<List<Map<String, dynamic>>> items;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;
  late final pulumi.Output<ListMeta> metadata;

  /// Creates a new [AuditSinkListAuditregistrationK8sIoV1alpha1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AuditSinkListAuditregistrationK8sIoV1alpha1]. {@macro pulumi_auditregistration_k8s_io_v1alpha1_audit_sink_list_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AuditSinkListAuditregistrationK8sIoV1alpha1(
    String name, {
    AuditSinkListArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'kubernetes:auditregistration.k8s.io/v1alpha1:AuditSinkList',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    apiVersion = registerOutput<String>('apiVersion');
    items = registerOutput<List<Map<String, dynamic>>>('items');
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ListMeta>(
      'metadata',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ListMeta.fromMap((guardedValue as Map).cast<String, dynamic>());
      },
    );
  }
}
