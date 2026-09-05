import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta.dart';
import 'apiservice_args.dart';
import 'apiservice_spec.dart';
import 'apiservice_status.dart';

/// APIService represents a server for a particular GroupVersion. Name must be "version.group".
class APIServiceApiregistrationK8sIoV1 extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;
  /// Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  late final pulumi.Output<ObjectMeta> metadata;
  /// Spec contains information for locating and communicating with a server
  late final pulumi.Output<APIServiceSpec> spec;
  /// Status contains derived information about an API server
  late final pulumi.Output<APIServiceStatus?> status;

  /// Creates a new [APIServiceApiregistrationK8sIoV1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [APIServiceApiregistrationK8sIoV1]. {@macro pulumi_apiregistration_k8s_io_v1_apiservice_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  APIServiceApiregistrationK8sIoV1(
    String name, {
    APIServiceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:apiregistration.k8s.io/v1:APIService',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiVersion = registerOutput<String>('apiVersion');
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ObjectMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ObjectMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    spec = registerOutput<APIServiceSpec>('spec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return APIServiceSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<APIServiceStatus?>('status', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return APIServiceStatus.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [APIServiceApiregistrationK8sIoV1] resource.
  APIServiceApiregistrationK8sIoV1.reference(String urn)
    : super(
        'kubernetes:apiregistration.k8s.io/v1:APIService',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    apiVersion = registerOutput<String>('apiVersion');
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ObjectMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ObjectMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    spec = registerOutput<APIServiceSpec>('spec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return APIServiceSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<APIServiceStatus?>('status', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return APIServiceStatus.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
