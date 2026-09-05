import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta.dart';
import 'config_map_args.dart';

/// ConfigMap holds configuration data for pods to consume.
class ConfigMapCoreV1 extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;
  /// BinaryData contains the binary data. Each key must consist of alphanumeric characters, '-', '_' or '.'. BinaryData can contain byte sequences that are not in the UTF-8 range. The keys stored in BinaryData must not overlap with the ones in the Data field, this is enforced during validation process. Using this field will require 1.10+ apiserver and kubelet. Note: BinaryData keys are not currently propagated to container env vars via ConfigMapKeyRef or ConfigMapRef env sources; only Data keys are used.
  late final pulumi.Output<Map<String, String>> binaryData;
  /// Data contains the configuration data. Each key must consist of alphanumeric characters, '-', '_' or '.'. Values with non-UTF-8 byte sequences must use the BinaryData field. The keys stored in Data must not overlap with the keys in the BinaryData field, this is enforced during validation process.
  late final pulumi.Output<Map<String, String>> data;
  /// Immutable, if set to true, ensures that data stored in the ConfigMap cannot be updated (only object metadata can be modified). If not set to true, the field can be modified at any time. Defaulted to nil.
  late final pulumi.Output<bool> immutable;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;
  /// Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  late final pulumi.Output<ObjectMeta> metadata;

  /// Creates a new [ConfigMapCoreV1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ConfigMapCoreV1]. {@macro pulumi_core_v1_config_map_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ConfigMapCoreV1(
    String name, {
    ConfigMapArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:core/v1:ConfigMap',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiVersion = registerOutput<String>('apiVersion');
    binaryData = registerOutput<Map<String, String>>('binaryData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    data = registerOutput<Map<String, String>>('data', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    immutable = registerOutput<bool>('immutable');
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ObjectMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ObjectMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [ConfigMapCoreV1] resource.
  ConfigMapCoreV1.reference(String urn)
    : super(
        'kubernetes:core/v1:ConfigMap',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    apiVersion = registerOutput<String>('apiVersion');
    binaryData = registerOutput<Map<String, String>>('binaryData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    data = registerOutput<Map<String, String>>('data', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    immutable = registerOutput<bool>('immutable');
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ObjectMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ObjectMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
