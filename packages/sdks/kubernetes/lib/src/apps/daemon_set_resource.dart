import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta.dart';
import 'daemon_set_apps_v1beta2_args.dart';
import 'daemon_set_spec_apps_v1beta2.dart';
import 'daemon_set_status_apps_v1beta2.dart';

/// DaemonSet represents the configuration of a daemon set.
class DaemonSetResource extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;

  /// Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  late final pulumi.Output<ObjectMeta> metadata;

  /// The desired behavior of this daemon set. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  late final pulumi.Output<DaemonSetSpecAppsV1beta2> spec;

  /// The current status of this daemon set. This data may be out of date by some window of time. Populated by the system. Read-only. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  late final pulumi.Output<DaemonSetStatusAppsV1beta2?> status;

  /// Creates a new [DaemonSetResource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DaemonSetResource]. {@macro pulumi_apps_v1beta2_daemon_set_apps_v1beta2_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DaemonSetResource(
    String name, {
    DaemonSetAppsV1beta2Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'kubernetes:apps/v1beta2:DaemonSet',
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
    spec = registerOutput<DaemonSetSpecAppsV1beta2>(
      'spec',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return DaemonSetSpecAppsV1beta2.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    status = registerOutput<DaemonSetStatusAppsV1beta2?>(
      'status',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return DaemonSetStatusAppsV1beta2.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
  }
}
