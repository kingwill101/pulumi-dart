// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_containerservice_get_kubernetes_service_versions_get_kubernetes_service_versions_args_doc}
/// Arguments for getKubernetesServiceVersions.
/// {@endtemplate}
/// {@macro pulumi_containerservice_get_kubernetes_service_versions_get_kubernetes_service_versions_args_doc}
class GetKubernetesServiceVersionsArgs {
  /// Should Preview versions of Kubernetes in AKS be included? Defaults to `true`
  final pulumi.Input<bool>? includePreview;
  /// Specifies the location in which to query for versions.
  final pulumi.Input<String> location;
  /// A prefix filter for the versions of Kubernetes which should be returned; for example `1.` will return `1.9` to `1.14`, whereas `1.12` will return `1.12.2`.
  final pulumi.Input<String>? versionPrefix;

  /// Creates a new [GetKubernetesServiceVersionsArgs].
  /// [includePreview] Should Preview versions of Kubernetes in AKS be included? Defaults to `true`
  /// [location] Specifies the location in which to query for versions.
  /// [versionPrefix] A prefix filter for the versions of Kubernetes which should be returned; for example `1.` will return `1.9` to `1.14`, whereas `1.12` will return `1.12.2`.
  GetKubernetesServiceVersionsArgs({
    pulumi.Output<bool>? includePreview,
    required pulumi.Output<String> location,
    pulumi.Output<String>? versionPrefix,
  }) :
      includePreview = pulumi.Input.asOptionalInput<bool>(includePreview),
      location = pulumi.Input.asInput<String>(location),
      versionPrefix = pulumi.Input.asOptionalInput<String>(versionPrefix);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'includePreview': ?includePreview,
      'location': location,
      'versionPrefix': ?versionPrefix,
    };
  }

  factory GetKubernetesServiceVersionsArgs.fromMap(Map<String, dynamic> map) {
    return GetKubernetesServiceVersionsArgs(
      includePreview: map['includePreview'] == null ? null : pulumi.Output.create<bool>(map['includePreview'] as bool),
      location: pulumi.Output.create<String>(map['location'] as String),
      versionPrefix: map['versionPrefix'] == null ? null : pulumi.Output.create<String>(map['versionPrefix'] as String),
    );
  }
}

