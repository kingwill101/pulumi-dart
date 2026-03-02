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
  /// Use chart development versions, too. Equivalent to version '>0.0.0-0'. If `version` is set, this is ignored.
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
  /// [devel] Use chart development versions, too. Equivalent to version '>0.0.0-0'. If `version` is set, this is ignored.
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
  ChartHelmShV4Args({
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
      chart: (map['chart'] as String).input(),
      dependencyUpdate: map['dependencyUpdate'] == null ? null : (map['dependencyUpdate']! as bool).input(),
      devel: map['devel'] == null ? null : (map['devel']! as bool).input(),
      keyring: map['keyring'] == null ? null : (map['keyring']!).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      namespace: map['namespace'] == null ? null : (map['namespace']! as String).input(),
      plainHttp: map['plainHttp'] == null ? null : (map['plainHttp']! as bool).input(),
      postRenderer: map['postRenderer'] == null ? null : (PostRenderer.fromMap((map['postRenderer']! as Map).cast<String, dynamic>())).input(),
      repositoryOpts: map['repositoryOpts'] == null ? null : (RepositoryOptsHelmShV4.fromMap((map['repositoryOpts']! as Map).cast<String, dynamic>())).input(),
      resourcePrefix: map['resourcePrefix'] == null ? null : (map['resourcePrefix']! as String).input(),
      skipAwait: map['skipAwait'] == null ? null : (map['skipAwait']! as bool).input(),
      skipCrds: map['skipCrds'] == null ? null : (map['skipCrds']! as bool).input(),
      valueYamlFiles: map['valueYamlFiles'] == null ? null : ((map['valueYamlFiles']! as List).cast<dynamic>()).input(),
      values: map['values'] == null ? null : ((map['values']! as Map).cast<String, dynamic>()).input(),
      verify: map['verify'] == null ? null : (map['verify']! as bool).input(),
      version: map['version'] == null ? null : (map['version']! as String).input(),
    );
  }
}

