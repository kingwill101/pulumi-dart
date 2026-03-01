// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta.dart';
import 'daemon_set_spec_apps_v1beta2.dart';

/// {@template pulumi_apps_v1beta2_daemon_set_apps_v1beta2_args_doc}
/// The set of arguments for DaemonSet.
/// {@endtemplate}
/// {@macro pulumi_apps_v1beta2_daemon_set_apps_v1beta2_args_doc}
class DaemonSetAppsV1beta2Args {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final pulumi.Input<String>? apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final pulumi.Input<String>? kind;
  /// Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  final pulumi.Input<ObjectMeta>? metadata;
  /// The desired behavior of this daemon set. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  final pulumi.Input<DaemonSetSpecAppsV1beta2>? spec;

  /// Creates a new [DaemonSetAppsV1beta2Args].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  /// [spec] The desired behavior of this daemon set. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  DaemonSetAppsV1beta2Args({
    pulumi.Output<String>? apiVersion,
    pulumi.Output<String>? kind,
    pulumi.Output<ObjectMeta>? metadata,
    pulumi.Output<DaemonSetSpecAppsV1beta2>? spec,
  }) :
      apiVersion = pulumi.Input.asOptionalInput<String>(apiVersion),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      metadata = pulumi.Input.asOptionalInput<ObjectMeta>(metadata),
      spec = pulumi.Input.asOptionalInput<DaemonSetSpecAppsV1beta2>(spec);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'kind': ?kind,
      'metadata': ?pulumi.Input.mapOptionalInputValue<ObjectMeta, Map<String, dynamic>>(metadata, (value) => value.toMap()),
      'spec': ?pulumi.Input.mapOptionalInputValue<DaemonSetSpecAppsV1beta2, Map<String, dynamic>>(spec, (value) => value.toMap()),
    };
  }

  factory DaemonSetAppsV1beta2Args.fromMap(Map<String, dynamic> map) {
    return DaemonSetAppsV1beta2Args(
      apiVersion: map['apiVersion'] == null ? null : pulumi.Output.create<String>(map['apiVersion'] as String),
      kind: map['kind'] == null ? null : pulumi.Output.create<String>(map['kind'] as String),
      metadata: map['metadata'] == null ? null : pulumi.Output.create<ObjectMeta>(ObjectMeta.fromMap((map['metadata'] as Map).cast<String, dynamic>())),
      spec: map['spec'] == null ? null : pulumi.Output.create<DaemonSetSpecAppsV1beta2>(DaemonSetSpecAppsV1beta2.fromMap((map['spec'] as Map).cast<String, dynamic>())),
    );
  }
}

