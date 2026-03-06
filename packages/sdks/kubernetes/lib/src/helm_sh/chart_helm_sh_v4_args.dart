// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'post_renderer.dart';
import 'repository_opts_helm_sh_v4.dart';

/// {@template pulumi_helm_sh_v4_chart_helm_sh_v4_args_doc}
/// The set of arguments for Chart.
/// {@endtemplate}
/// {@macro pulumi_helm_sh_v4_chart_helm_sh_v4_args_doc}
class ChartHelmShV4Args {
  /// Chart name to be installed. A path may be used.
  final pulumi.Input<String> chart;
  /// Run helm dependency update before installing the chart.
  final pulumi.Input<bool>? dependencyUpdate;
  /// Use chart development versions, too. Equivalent to version '&gt;0.0.0-0'. If `version` is set, this is ignored.
  final pulumi.Input<bool>? devel;
  /// Location of public keys used for verification. Used only if `verify` is true
  final pulumi.Input<dynamic>? keyring;
  /// Release name.
  final pulumi.Input<String>? name;
  /// Namespace for the release.
  final pulumi.Input<String>? namespace;
  /// Use insecure HTTP for the chart download instead of HTTPS.
  final pulumi.Input<bool>? plainHttp;
  /// Specification defining the post-renderer to use.
  final pulumi.Input<PostRenderer>? postRenderer;
  /// Specification defining the Helm chart repository to use.
  final pulumi.Input<RepositoryOptsHelmShV4>? repositoryOpts;
  /// An optional prefix for the auto-generated resource names. Example: A resource created with resourcePrefix="foo" would produce a resource named "foo:resourceName".
  final pulumi.Input<String>? resourcePrefix;
  /// By default, the provider waits until all resources are in a ready state before marking the release as successful. Setting this to true will skip such await logic.
  final pulumi.Input<bool>? skipAwait;
  /// If set, no CRDs will be installed. By default, CRDs are installed if not already present.
  final pulumi.Input<bool>? skipCrds;
  /// List of assets (raw yaml files). Content is read and merged with values.
  final pulumi.Input<List<dynamic>>? valueYamlFiles;
  /// Custom values set for the release.
  final pulumi.Input<Map<String, dynamic>>? values;
  /// Verify the chart's integrity.
  final pulumi.Input<bool>? verify;
  /// Specify the chart version to install. If this is not specified, the latest version is installed.
  final pulumi.Input<String>? version;

  /// Creates a new [ChartHelmShV4Args].
  /// [chart] Chart name to be installed. A path may be used.
  /// [dependencyUpdate] Run helm dependency update before installing the chart.
  /// [devel] Use chart development versions, too. Equivalent to version '&gt;0.0.0-0'. If `version` is set, this is ignored.
  /// [keyring] Location of public keys used for verification. Used only if `verify` is true
  /// [name] Release name.
  /// [namespace] Namespace for the release.
  /// [plainHttp] Use insecure HTTP for the chart download instead of HTTPS.
  /// [postRenderer] Specification defining the post-renderer to use.
  /// [repositoryOpts] Specification defining the Helm chart repository to use.
  /// [resourcePrefix] An optional prefix for the auto-generated resource names. Example: A resource created with resourcePrefix="foo" would produce a resource named "foo:resourceName".
  /// [skipAwait] By default, the provider waits until all resources are in a ready state before marking the release as successful. Setting this to true will skip such await logic.
  /// [skipCrds] If set, no CRDs will be installed. By default, CRDs are installed if not already present.
  /// [valueYamlFiles] List of assets (raw yaml files). Content is read and merged with values.
  /// [values] Custom values set for the release.
  /// [verify] Verify the chart's integrity.
  /// [version] Specify the chart version to install. If this is not specified, the latest version is installed.
  const ChartHelmShV4Args({
    required this.chart,
    this.dependencyUpdate,
    this.devel,
    this.keyring,
    this.name,
    this.namespace,
    this.plainHttp,
    this.postRenderer,
    this.repositoryOpts,
    this.resourcePrefix,
    this.skipAwait,
    this.skipCrds,
    this.valueYamlFiles,
    this.values,
    this.verify,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'chart': chart,
      'dependencyUpdate': ?dependencyUpdate,
      'devel': ?devel,
      'keyring': ?keyring,
      'name': ?name,
      'namespace': ?namespace,
      'plainHttp': ?plainHttp,
      'postRenderer': ?pulumi.Input.mapOptionalInputValue<PostRenderer, Map<String, dynamic>>(postRenderer, (value) => value.toMap()),
      'repositoryOpts': ?pulumi.Input.mapOptionalInputValue<RepositoryOptsHelmShV4, Map<String, dynamic>>(repositoryOpts, (value) => value.toMap()),
      'resourcePrefix': ?resourcePrefix,
      'skipAwait': ?skipAwait,
      'skipCrds': ?skipCrds,
      'valueYamlFiles': ?valueYamlFiles,
      'values': ?values,
      'verify': ?verify,
      'version': ?version,
    };
  }

  factory ChartHelmShV4Args.fromMap(Map<String, dynamic> map) {
    return ChartHelmShV4Args(
      chart: pulumi.Input.fromValue(map['chart'] as String),
      dependencyUpdate: (() { final guardedValue = map['dependencyUpdate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      devel: (() { final guardedValue = map['devel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      keyring: (() { final guardedValue = map['keyring']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      namespace: (() { final guardedValue = map['namespace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      plainHttp: (() { final guardedValue = map['plainHttp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      postRenderer: (() { final guardedValue = map['postRenderer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PostRenderer.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      repositoryOpts: (() { final guardedValue = map['repositoryOpts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RepositoryOptsHelmShV4.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourcePrefix: (() { final guardedValue = map['resourcePrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      skipAwait: (() { final guardedValue = map['skipAwait']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      skipCrds: (() { final guardedValue = map['skipCrds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      valueYamlFiles: (() { final guardedValue = map['valueYamlFiles']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>()); })(),
      values: (() { final guardedValue = map['values']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      verify: (() { final guardedValue = map['verify']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

