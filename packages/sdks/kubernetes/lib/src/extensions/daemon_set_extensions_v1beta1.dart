import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta.dart';
import 'daemon_set_args.dart';
import 'daemon_set_spec.dart';
import 'daemon_set_status.dart';

/// DaemonSet represents the configuration of a daemon set.
class DaemonSetExtensionsV1beta1 extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;

  /// Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  late final pulumi.Output<ObjectMeta> metadata;

  /// The desired behavior of this daemon set. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  late final pulumi.Output<DaemonSetSpec> spec;

  /// The current status of this daemon set. This data may be out of date by some window of time. Populated by the system. Read-only. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  late final pulumi.Output<DaemonSetStatus?> status;

  /// Creates a new [DaemonSetExtensionsV1beta1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DaemonSetExtensionsV1beta1]. {@macro pulumi_extensions_v1beta1_daemon_set_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DaemonSetExtensionsV1beta1(
    String name, {
    DaemonSetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'kubernetes:extensions/v1beta1:DaemonSet',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    apiVersion = registerOutput<String>('apiVersion');
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ObjectMeta>(
      'metadata',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ObjectMeta.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    spec = registerOutput<DaemonSetSpec>(
      'spec',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return DaemonSetSpec.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    status = registerOutput<DaemonSetStatus?>(
      'status',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return DaemonSetStatus.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
  }
}
