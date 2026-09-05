import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta_patch.dart';
import 'secret_patch_args.dart';

/// Patch resources are used to modify existing Kubernetes resources by using
/// Server-Side Apply updates. The name of the resource must be specified, but all other properties are optional. More than
/// one patch may be applied to the same resource, and a random FieldManager name will be used for each Patch resource.
/// Conflicts will result in an error by default, but can be forced using the "pulumi.com/patchForce" annotation. See the
/// [Server-Side Apply Docs](https://www.pulumi.com/registry/packages/kubernetes/how-to-guides/managing-resources-with-server-side-apply/) for
/// additional information about using Server-Side Apply to manage Kubernetes resources with Pulumi.
/// Secret holds secret data of a certain type. The total bytes of the values in the Data field must be less than MaxSecretSize bytes.
///
/// Note: While Pulumi automatically encrypts the 'data' and 'stringData'
/// fields, this encryption only applies to Pulumi's context, including the state file,
/// the Service, the CLI, etc. Kubernetes does not encrypt Secret resources by default,
/// and the contents are visible to users with access to the Secret in Kubernetes using
/// tools like 'kubectl'.
///
/// For more information on securing Kubernetes Secrets, see the following links:
/// https://kubernetes.io/docs/concepts/configuration/secret/#security-properties
/// https://kubernetes.io/docs/concepts/configuration/secret/#risks
class SecretPatchCoreV1 extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String?> apiVersion;
  /// Data contains the secret data. Each key must consist of alphanumeric characters, '-', '_' or '.'. The serialized form of the secret data is a base64 encoded string, representing the arbitrary (possibly non-string) data value here. Described in https://tools.ietf.org/html/rfc4648#section-4
  late final pulumi.Output<Map<String, String>?> data;
  /// Immutable, if set to true, ensures that data stored in the Secret cannot be updated (only object metadata can be modified). If not set to true, the field can be modified at any time. Defaulted to nil.
  late final pulumi.Output<bool?> immutable;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String?> kind;
  /// Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  late final pulumi.Output<ObjectMetaPatch?> metadata;
  /// stringData allows specifying non-binary secret data in string form. It is provided as a write-only input field for convenience. All keys and values are merged into the data field on write, overwriting any existing values. The stringData field is never output when reading from the API.
  late final pulumi.Output<Map<String, String>?> stringData;
  /// Used to facilitate programmatic handling of secret data. More info: https://kubernetes.io/docs/concepts/configuration/secret/#secret-types
  late final pulumi.Output<String?> type;

  /// Creates a new [SecretPatchCoreV1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SecretPatchCoreV1]. {@macro pulumi_core_v1_secret_patch_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SecretPatchCoreV1(
    String name, {
    SecretPatchArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:core/v1:SecretPatch',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
          additionalSecretOutputs: const ['data', 'stringData'],
        ) {
    apiVersion = registerOutput<String?>('apiVersion');
    data = registerOutput<Map<String, String>?>('data', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    immutable = registerOutput<bool?>('immutable');
    kind = registerOutput<String?>('kind');
    metadata = registerOutput<ObjectMetaPatch?>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ObjectMetaPatch.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    stringData = registerOutput<Map<String, String>?>('stringData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    type = registerOutput<String?>('type');
  }

  /// Creates a typed reference to an existing [SecretPatchCoreV1] resource.
  SecretPatchCoreV1.reference(String urn)
    : super(
        'kubernetes:core/v1:SecretPatch',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['data', 'stringData'],
        isResourceReference: true,
      ) {
    apiVersion = registerOutput<String?>('apiVersion');
    data = registerOutput<Map<String, String>?>('data', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    immutable = registerOutput<bool?>('immutable');
    kind = registerOutput<String?>('kind');
    metadata = registerOutput<ObjectMetaPatch?>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ObjectMetaPatch.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    stringData = registerOutput<Map<String, String>?>('stringData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    type = registerOutput<String?>('type');
  }
}
