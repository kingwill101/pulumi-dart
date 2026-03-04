import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta.dart';
import 'secret_args.dart';

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
class SecretCoreV1 extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;

  /// Data contains the secret data. Each key must consist of alphanumeric characters, '-', '_' or '.'. The serialized form of the secret data is a base64 encoded string, representing the arbitrary (possibly non-string) data value here. Described in https://tools.ietf.org/html/rfc4648#section-4
  late final pulumi.Output<Map<String, String>> data;

  /// Immutable, if set to true, ensures that data stored in the Secret cannot be updated (only object metadata can be modified). If not set to true, the field can be modified at any time. Defaulted to nil.
  late final pulumi.Output<bool> immutable;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;

  /// Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  late final pulumi.Output<ObjectMeta> metadata;

  /// stringData allows specifying non-binary secret data in string form. It is provided as a write-only input field for convenience. All keys and values are merged into the data field on write, overwriting any existing values. The stringData field is never output when reading from the API.
  late final pulumi.Output<Map<String, String>> stringData;

  /// Used to facilitate programmatic handling of secret data. More info: https://kubernetes.io/docs/concepts/configuration/secret/#secret-types
  late final pulumi.Output<String> type;

  /// Creates a new [SecretCoreV1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SecretCoreV1]. {@macro pulumi_core_v1_secret_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SecretCoreV1(
    String name, {
    SecretArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'kubernetes:core/v1:Secret',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    apiVersion = registerOutput<String>('apiVersion');
    data = registerOutput<Map<String, String>>('data');
    immutable = registerOutput<bool>('immutable');
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ObjectMeta>('metadata');
    stringData = registerOutput<Map<String, String>>('stringData');
    type = registerOutput<String>('type');
  }
}
