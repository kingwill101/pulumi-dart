// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_containerinfra_get_cluster_template_get_cluster_template_args_doc}
/// Arguments for getClusterTemplate.
/// {@endtemplate}
/// {@macro pulumi_containerinfra_get_cluster_template_get_cluster_template_args_doc}
class GetClusterTemplateArgs {
  /// The name of the cluster template.
  final pulumi.Input<String> name;
  /// The region in which to obtain the V1 Container Infra
  /// client.
  /// If omitted, the `region` argument of the provider is used.
  final pulumi.Input<String>? region;

  /// Creates a new [GetClusterTemplateArgs].
  /// [name] The name of the cluster template.
  /// [region] The region in which to obtain the V1 Container Infra
  GetClusterTemplateArgs({
    required this.name,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'region': ?region,
    };
  }

  factory GetClusterTemplateArgs.fromMap(Map<String, dynamic> map) {
    return GetClusterTemplateArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

