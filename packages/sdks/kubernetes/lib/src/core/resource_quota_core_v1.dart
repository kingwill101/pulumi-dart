import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta.dart';
import 'resource_quota_args.dart';
import 'resource_quota_spec.dart';
import 'resource_quota_status.dart';

/// ResourceQuota sets aggregate quota restrictions enforced per namespace
class ResourceQuotaCoreV1 extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;
  /// Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  late final pulumi.Output<ObjectMeta> metadata;
  /// Spec defines the desired quota. https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  late final pulumi.Output<ResourceQuotaSpec> spec;
  /// Status defines the actual enforced quota and its current usage. https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  late final pulumi.Output<ResourceQuotaStatus?> status;

  /// Creates a new [ResourceQuotaCoreV1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ResourceQuotaCoreV1]. {@macro pulumi_core_v1_resource_quota_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ResourceQuotaCoreV1(
    String name, {
    ResourceQuotaArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:core/v1:ResourceQuota',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiVersion = registerOutput<String>('apiVersion');
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ObjectMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ObjectMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    spec = registerOutput<ResourceQuotaSpec>('spec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResourceQuotaSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<ResourceQuotaStatus?>('status', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResourceQuotaStatus.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [ResourceQuotaCoreV1] resource.
  ResourceQuotaCoreV1.reference(String urn)
    : super(
        'kubernetes:core/v1:ResourceQuota',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    apiVersion = registerOutput<String>('apiVersion');
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ObjectMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ObjectMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    spec = registerOutput<ResourceQuotaSpec>('spec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResourceQuotaSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<ResourceQuotaStatus?>('status', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResourceQuotaStatus.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
