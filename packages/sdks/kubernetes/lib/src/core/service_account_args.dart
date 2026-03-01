// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta.dart';
import 'local_object_reference.dart';
import 'object_reference.dart';

/// {@template pulumi_core_v1_service_account_args_doc}
/// The set of arguments for ServiceAccount.
/// {@endtemplate}
/// {@macro pulumi_core_v1_service_account_args_doc}
class ServiceAccountArgs {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final pulumi.Input<String>? apiVersion;
  /// AutomountServiceAccountToken indicates whether pods running as this service account should have an API token automatically mounted. Can be overridden at the pod level.
  final pulumi.Input<bool>? automountServiceAccountToken;
  /// ImagePullSecrets is a list of references to secrets in the same namespace to use for pulling any images in pods that reference this ServiceAccount. ImagePullSecrets are distinct from Secrets because Secrets can be mounted in the pod, but ImagePullSecrets are only accessed by the kubelet. More info: https://kubernetes.io/docs/concepts/containers/images/#specifying-imagepullsecrets-on-a-pod
  final pulumi.Input<List<LocalObjectReference>>? imagePullSecrets;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final pulumi.Input<String>? kind;
  /// Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  final pulumi.Input<ObjectMeta>? metadata;
  /// Secrets is a list of the secrets in the same namespace that pods running using this ServiceAccount are allowed to use. Pods are only limited to this list if this service account has a "kubernetes.io/enforce-mountable-secrets" annotation set to "true". The "kubernetes.io/enforce-mountable-secrets" annotation is deprecated since v1.32. Prefer separate namespaces to isolate access to mounted secrets. This field should not be used to find auto-generated service account token secrets for use outside of pods. Instead, tokens can be requested directly using the TokenRequest API, or service account token secrets can be manually created. More info: https://kubernetes.io/docs/concepts/configuration/secret
  final pulumi.Input<List<ObjectReference>>? secrets;

  /// Creates a new [ServiceAccountArgs].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [automountServiceAccountToken] AutomountServiceAccountToken indicates whether pods running as this service account should have an API token automatically mounted. Can be overridden at the pod level.
  /// [imagePullSecrets] ImagePullSecrets is a list of references to secrets in the same namespace to use for pulling any images in pods that reference this ServiceAccount. ImagePullSecrets are distinct from Secrets because Secrets can be mounted in the pod, but ImagePullSecrets are only accessed by the kubelet. More info: https://kubernetes.io/docs/concepts/containers/images/#specifying-imagepullsecrets-on-a-pod
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  /// [secrets] Secrets is a list of the secrets in the same namespace that pods running using this ServiceAccount are allowed to use. Pods are only limited to this list if this service account has a "kubernetes.io/enforce-mountable-secrets" annotation set to "true". The "kubernetes.io/enforce-mountable-secrets" annotation is deprecated since v1.32. Prefer separate namespaces to isolate access to mounted secrets. This field should not be used to find auto-generated service account token secrets for use outside of pods. Instead, tokens can be requested directly using the TokenRequest API, or service account token secrets can be manually created. More info: https://kubernetes.io/docs/concepts/configuration/secret
  ServiceAccountArgs({
    pulumi.Output<String>? apiVersion,
    pulumi.Output<bool>? automountServiceAccountToken,
    pulumi.Output<List<LocalObjectReference>>? imagePullSecrets,
    pulumi.Output<String>? kind,
    pulumi.Output<ObjectMeta>? metadata,
    pulumi.Output<List<ObjectReference>>? secrets,
  }) :
      apiVersion = pulumi.Input.asOptionalInput<String>(apiVersion),
      automountServiceAccountToken = pulumi.Input.asOptionalInput<bool>(automountServiceAccountToken),
      imagePullSecrets = pulumi.Input.asOptionalInput<List<LocalObjectReference>>(imagePullSecrets),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      metadata = pulumi.Input.asOptionalInput<ObjectMeta>(metadata),
      secrets = pulumi.Input.asOptionalInput<List<ObjectReference>>(secrets);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'automountServiceAccountToken': ?automountServiceAccountToken,
      'imagePullSecrets': ?pulumi.Input.mapOptionalInputValue<List<LocalObjectReference>, List<Map<String, dynamic>>>(imagePullSecrets, (value) => pulumi.Input.encodeList<LocalObjectReference, Map<String, dynamic>>(value, (value) => value.toMap())),
      'kind': ?kind,
      'metadata': ?pulumi.Input.mapOptionalInputValue<ObjectMeta, Map<String, dynamic>>(metadata, (value) => value.toMap()),
      'secrets': ?pulumi.Input.mapOptionalInputValue<List<ObjectReference>, List<Map<String, dynamic>>>(secrets, (value) => pulumi.Input.encodeList<ObjectReference, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ServiceAccountArgs.fromMap(Map<String, dynamic> map) {
    return ServiceAccountArgs(
      apiVersion: map['apiVersion'] == null ? null : pulumi.Output.create<String>(map['apiVersion'] as String),
      automountServiceAccountToken: map['automountServiceAccountToken'] == null ? null : pulumi.Output.create<bool>(map['automountServiceAccountToken'] as bool),
      imagePullSecrets: map['imagePullSecrets'] == null ? null : pulumi.Output.create<List<LocalObjectReference>>(pulumi.Input.decodeList<LocalObjectReference>(map['imagePullSecrets'], (value) => LocalObjectReference.fromMap((value as Map).cast<String, dynamic>()))),
      kind: map['kind'] == null ? null : pulumi.Output.create<String>(map['kind'] as String),
      metadata: map['metadata'] == null ? null : pulumi.Output.create<ObjectMeta>(ObjectMeta.fromMap((map['metadata'] as Map).cast<String, dynamic>())),
      secrets: map['secrets'] == null ? null : pulumi.Output.create<List<ObjectReference>>(pulumi.Input.decodeList<ObjectReference>(map['secrets'], (value) => ObjectReference.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

