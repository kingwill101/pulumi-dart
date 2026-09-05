// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_containerservice_get_kubernetes_service_versions_get_kubernetes_service_versions_args_doc}
/// Arguments for getKubernetesServiceVersions.
/// {@endtemplate}
/// {@macro pulumi_containerservice_get_kubernetes_service_versions_get_kubernetes_service_versions_args_doc}
class GetKubernetesServiceVersionsArgs {
  /// Should Preview versions of Kubernetes in AKS be included? Defaults to `true`
  final pulumi.Input<bool?>? includePreview;
  /// Specifies the location in which to query for versions.
  final pulumi.Input<String> location;
  /// A prefix filter for the versions of Kubernetes which should be returned; for example `1.` will return `1.9` to `1.14`, whereas `1.12` will return `1.12.2`.
  final pulumi.Input<String?>? versionPrefix;

  /// Creates a new [GetKubernetesServiceVersionsArgs].
  /// [includePreview] Should Preview versions of Kubernetes in AKS be included? Defaults to `true`
  /// [location] Specifies the location in which to query for versions.
  /// [versionPrefix] A prefix filter for the versions of Kubernetes which should be returned; for example `1.` will return `1.9` to `1.14`, whereas `1.12` will return `1.12.2`.
  const GetKubernetesServiceVersionsArgs({
    this.includePreview,
    required this.location,
    this.versionPrefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'includePreview': ?includePreview,
      'location': location,
      'versionPrefix': ?versionPrefix,
    };
  }

  factory GetKubernetesServiceVersionsArgs.fromMap(Map<String, dynamic> map) {
    return GetKubernetesServiceVersionsArgs(
      includePreview: (() { final guardedValue = map['includePreview']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      versionPrefix: (() { final guardedValue = map['versionPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
