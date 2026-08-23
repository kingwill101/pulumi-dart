// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'fetch_opts.dart';

/// {@template pulumi_helm_sh_v3_chart_args_doc}
/// The set of arguments for Chart.
/// {@endtemplate}
/// {@macro pulumi_helm_sh_v3_chart_args_doc}
class ChartArgs {
  /// The name of the chart to deploy. If [repo] is provided, this chart name will be prefixed by the repo name. Example: repo: "stable", chart: "nginx-ingress" -&gt; "stable/nginx-ingress" Example: chart: "stable/nginx-ingress" -&gt; "stable/nginx-ingress"
  ///
  /// Required if specifying `ChartOpts` for a remote chart.
  final pulumi.Input<String>? chart;
  /// Additional options to customize the fetching of the Helm chart.
  final pulumi.Input<FetchOpts>? fetchOpts;
  /// The optional namespace to install chart resources into.
  final pulumi.Input<String>? namespace;
  /// The path to the chart directory which contains the `Chart.yaml` file.
  ///
  /// Required if specifying `LocalChartOpts`.
  final pulumi.Input<String>? path;
  /// The repository name of the chart to deploy. Example: "stable".
  ///
  /// Used only when specifying options for a remote chart.
  final pulumi.Input<String>? repo;
  /// An optional prefix for the auto-generated resource names. Example: A resource created with resourcePrefix="foo" would produce a resource named "foo-resourceName".
  final pulumi.Input<String>? resourcePrefix;
  /// Optional array of transformations to apply to resources that will be created by this chart prior to creation. Allows customization of the chart behaviour without directly modifying the chart itself.
  final pulumi.Input<List<dynamic>>? transformations_;
  /// Overrides for chart values.
  final pulumi.Input<Map<String, dynamic>>? values;
  /// The version of the chart to deploy. If not provided, the latest version will be deployed.
  final pulumi.Input<String>? version;

  /// Creates a new [ChartArgs].
  /// [chart] The name of the chart to deploy. If [repo] is provided, this chart name will be prefixed by the repo name. Example: repo: "stable", chart: "nginx-ingress" -&gt; "stable/nginx-ingress" Example: chart: "stable/nginx-ingress" -&gt; "stable/nginx-ingress"
  /// [fetchOpts] Additional options to customize the fetching of the Helm chart.
  /// [namespace] The optional namespace to install chart resources into.
  /// [path] The path to the chart directory which contains the `Chart.yaml` file.
  /// [repo] The repository name of the chart to deploy. Example: "stable".
  /// [resourcePrefix] An optional prefix for the auto-generated resource names. Example: A resource created with resourcePrefix="foo" would produce a resource named "foo-resourceName".
  /// [transformations_] Optional array of transformations to apply to resources that will be created by this chart prior to creation. Allows customization of the chart behaviour without directly modifying the chart itself.
  /// [values] Overrides for chart values.
  /// [version] The version of the chart to deploy. If not provided, the latest version will be deployed.
  const ChartArgs({
    this.chart,
    this.fetchOpts,
    this.namespace,
    this.path,
    this.repo,
    this.resourcePrefix,
    this.transformations_,
    this.values,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'chart': ?chart,
      'fetchOpts': ?pulumi.Input.mapOptionalInputValue<FetchOpts, Map<String, dynamic>>(fetchOpts, (value) => value.toMap()),
      'namespace': ?namespace,
      'path': ?path,
      'repo': ?repo,
      'resourcePrefix': ?resourcePrefix,
      'transformations': ?transformations_,
      'values': ?values,
      'version': ?version,
    };
  }

  factory ChartArgs.fromMap(Map<String, dynamic> map) {
    return ChartArgs(
      chart: (() { final guardedValue = map['chart']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fetchOpts: (() { final guardedValue = map['fetchOpts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FetchOpts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      namespace: (() { final guardedValue = map['namespace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      repo: (() { final guardedValue = map['repo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourcePrefix: (() { final guardedValue = map['resourcePrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      transformations_: (() { final guardedValue = map['transformations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>()); })(),
      values: (() { final guardedValue = map['values']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
