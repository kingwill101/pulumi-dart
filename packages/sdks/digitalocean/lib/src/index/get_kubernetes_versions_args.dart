// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_kubernetes_versions_get_kubernetes_versions_args_doc}
/// Arguments for getKubernetesVersions.
/// {@endtemplate}
/// {@macro pulumi_index_get_kubernetes_versions_get_kubernetes_versions_args_doc}
class GetKubernetesVersionsArgs {
  /// If provided, Terraform will only return versions that match the string prefix. For example, `1.15.` will match all 1.15.x series releases.
  final pulumi.Input<String>? versionPrefix;

  /// Creates a new [GetKubernetesVersionsArgs].
  /// [versionPrefix] If provided, Terraform will only return versions that match the string prefix. For example, `1.15.` will match all 1.15.x series releases.
  const GetKubernetesVersionsArgs({
    this.versionPrefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'versionPrefix': ?versionPrefix,
    };
  }

  factory GetKubernetesVersionsArgs.fromMap(Map<String, dynamic> map) {
    return GetKubernetesVersionsArgs(
      versionPrefix: (() { final guardedValue = map['versionPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
