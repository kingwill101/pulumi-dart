import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta.dart';
import 'apiservice_apiregistration_k8s_io_v1beta1_args.dart';
import 'apiservice_spec_apiregistration_k8s_io_v1beta1.dart';
import 'apiservice_status_apiregistration_k8s_io_v1beta1.dart';

/// APIService represents a server for a particular GroupVersion. Name must be "version.group".
class APIServiceResource extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;
  late final pulumi.Output<ObjectMeta> metadata;
  /// Spec contains information for locating and communicating with a server
  late final pulumi.Output<APIServiceSpecApiregistrationK8sIoV1beta1> spec;
  /// Status contains derived information about an API server
  late final pulumi.Output<APIServiceStatusApiregistrationK8sIoV1beta1?> status;

  /// Creates a new [APIServiceResource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [APIServiceResource]. {@macro pulumi_apiregistration_k8s_io_v1beta1_apiservice_apiregistration_k8s_io_v1beta1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  APIServiceResource(
    String name, {
    APIServiceApiregistrationK8sIoV1beta1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:apiregistration.k8s.io/v1beta1:APIService',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiVersion = registerOutput<String>('apiVersion');
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ObjectMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ObjectMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    spec = registerOutput<APIServiceSpecApiregistrationK8sIoV1beta1>('spec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return APIServiceSpecApiregistrationK8sIoV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<APIServiceStatusApiregistrationK8sIoV1beta1?>('status', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return APIServiceStatusApiregistrationK8sIoV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [APIServiceResource] resource.
  APIServiceResource.reference(String urn)
    : super(
        'kubernetes:apiregistration.k8s.io/v1beta1:APIService',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    apiVersion = registerOutput<String>('apiVersion');
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ObjectMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ObjectMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    spec = registerOutput<APIServiceSpecApiregistrationK8sIoV1beta1>('spec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return APIServiceSpecApiregistrationK8sIoV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<APIServiceStatusApiregistrationK8sIoV1beta1?>('status', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return APIServiceStatusApiregistrationK8sIoV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
