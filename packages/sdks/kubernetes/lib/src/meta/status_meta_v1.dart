import 'package:pulumi/pulumi.dart' as pulumi;
import 'list_meta.dart';
import 'status_args.dart';
import 'status_details.dart';

/// Status is a return value for calls that don't return other objects.
class StatusMetaV1 extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;
  /// Suggested HTTP return code for this status, 0 if not set.
  late final pulumi.Output<int> code;
  /// Extended data associated with the reason.  Each reason may define its own extended details. This field is optional and the data returned is not guaranteed to conform to any schema except that defined by the reason type.
  late final pulumi.Output<StatusDetails> details;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;
  /// A human-readable description of the status of this operation.
  late final pulumi.Output<String> message;
  /// Standard list metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<ListMeta> metadata;
  /// A machine-readable description of why this operation is in the "Failure" status. If this value is empty there is no information available. A Reason clarifies an HTTP status code but does not override it.
  late final pulumi.Output<String> reason;
  /// Status of the operation. One of: "Success" or "Failure". More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  late final pulumi.Output<String?> status;

  /// Creates a new [StatusMetaV1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [StatusMetaV1]. {@macro pulumi_meta_v1_status_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  StatusMetaV1(
    String name, {
    StatusArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:meta/v1:Status',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiVersion = registerOutput<String>('apiVersion');
    code = registerOutput<int>('code');
    details = registerOutput<StatusDetails>('details', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StatusDetails.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    kind = registerOutput<String>('kind');
    message = registerOutput<String>('message');
    metadata = registerOutput<ListMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ListMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    reason = registerOutput<String>('reason');
    status = registerOutput<String?>('status');
  }

  /// Creates a typed reference to an existing [StatusMetaV1] resource.
  StatusMetaV1.reference(String urn)
    : super(
        'kubernetes:meta/v1:Status',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    apiVersion = registerOutput<String>('apiVersion');
    code = registerOutput<int>('code');
    details = registerOutput<StatusDetails>('details', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StatusDetails.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    kind = registerOutput<String>('kind');
    message = registerOutput<String>('message');
    metadata = registerOutput<ListMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ListMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    reason = registerOutput<String>('reason');
    status = registerOutput<String?>('status');
  }
}
