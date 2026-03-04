// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'repository_opts.dart';

/// {@template pulumi_helm_sh_v3_release_args_doc}
/// The set of arguments for Release.
/// {@endtemplate}
/// {@macro pulumi_helm_sh_v3_release_args_doc}
class ReleaseArgs {
  /// Whether to allow Null values in helm chart configs.
  final pulumi.Input<bool>? allowNullValues;

  /// If set, installation process purges chart on fail. `skipAwait` will be disabled automatically if atomic is used.
  final pulumi.Input<bool>? atomic;

  /// Chart name to be installed. A path may be used.
  final pulumi.Input<String> chart;

  /// Allow deletion of new resources created in this upgrade when upgrade fails.
  final pulumi.Input<bool>? cleanupOnFail;
  final pulumi.Input<String>? compat;

  /// Create the namespace if it does not exist.
  final pulumi.Input<bool>? createNamespace;

  /// Run helm dependency update before installing the chart.
  final pulumi.Input<bool>? dependencyUpdate;

  /// Add a custom description
  final pulumi.Input<String>? description;

  /// Use chart development versions, too. Equivalent to version '&gt;0.0.0-0'. If `version` is set, this is ignored.
  final pulumi.Input<bool>? devel;

  /// Prevent CRD hooks from running, but run other hooks.  See helm install --no-crd-hook
  final pulumi.Input<bool>? disableCRDHooks;

  /// If set, the installation process will not validate rendered templates against the Kubernetes OpenAPI Schema
  final pulumi.Input<bool>? disableOpenapiValidation;

  /// Prevent hooks from running.
  final pulumi.Input<bool>? disableWebhooks;

  /// Force resource update through delete/recreate if needed.
  final pulumi.Input<bool>? forceUpdate;

  /// Location of public keys used for verification. Used only if `verify` is true
  final pulumi.Input<String>? keyring;

  /// Run helm lint when planning.
  final pulumi.Input<bool>? lint;

  /// The rendered manifests as JSON. Not yet supported.
  final pulumi.Input<Map<String, dynamic>>? manifest;

  /// Limit the maximum number of revisions saved per release. Use 0 for no limit.
  final pulumi.Input<int>? maxHistory;

  /// Release name.
  final pulumi.Input<String>? name;

  /// Namespace to install the release into.
  final pulumi.Input<String>? namespace;

  /// Postrender command to run.
  final pulumi.Input<String>? postrender;

  /// Perform pods restart during upgrade/rollback.
  final pulumi.Input<bool>? recreatePods;

  /// If set, render subchart notes along with the parent.
  final pulumi.Input<bool>? renderSubchartNotes;

  /// Re-use the given name, even if that name is already used. This is unsafe in production
  final pulumi.Input<bool>? replace;

  /// Specification defining the Helm chart repository to use.
  final pulumi.Input<RepositoryOpts>? repositoryOpts;

  /// When upgrading, reset the values to the ones built into the chart.
  final pulumi.Input<bool>? resetValues;

  /// Names of resources created by the release grouped by "kind/version".
  final pulumi.Input<Map<String, List<String>>>? resourceNames;

  /// When upgrading, reuse the last release's values and merge in any overrides. If 'resetValues' is specified, this is ignored
  final pulumi.Input<bool>? reuseValues;

  /// By default, the provider waits until all resources are in a ready state before marking the release as successful. Setting this to true will skip such await logic.
  final pulumi.Input<bool>? skipAwait;

  /// If set, no CRDs will be installed. By default, CRDs are installed if not already present.
  final pulumi.Input<bool>? skipCrds;

  /// Time in seconds to wait for any individual kubernetes operation.
  final pulumi.Input<int>? timeout;

  /// List of assets (raw yaml files). Content is read and merged with values.
  final pulumi.Input<List<dynamic>>? valueYamlFiles;

  /// Custom values set for the release.
  final pulumi.Input<Map<String, dynamic>>? values;

  /// Verify the package before installing it.
  final pulumi.Input<bool>? verify;

  /// Specify the exact chart version to install. If this is not specified, the latest version is installed.
  final pulumi.Input<String>? version;

  /// Will wait until all Jobs have been completed before marking the release as successful. This is ignored if `skipAwait` is enabled.
  final pulumi.Input<bool>? waitForJobs;

  /// Creates a new [ReleaseArgs].
  /// [allowNullValues] Whether to allow Null values in helm chart configs.
  /// [atomic] If set, installation process purges chart on fail. `skipAwait` will be disabled automatically if atomic is used.
  /// [chart] Chart name to be installed. A path may be used.
  /// [cleanupOnFail] Allow deletion of new resources created in this upgrade when upgrade fails.
  /// [compat] Optional.
  /// [createNamespace] Create the namespace if it does not exist.
  /// [dependencyUpdate] Run helm dependency update before installing the chart.
  /// [description] Add a custom description
  /// [devel] Use chart development versions, too. Equivalent to version '&gt;0.0.0-0'. If `version` is set, this is ignored.
  /// [disableCRDHooks] Prevent CRD hooks from running, but run other hooks.  See helm install --no-crd-hook
  /// [disableOpenapiValidation] If set, the installation process will not validate rendered templates against the Kubernetes OpenAPI Schema
  /// [disableWebhooks] Prevent hooks from running.
  /// [forceUpdate] Force resource update through delete/recreate if needed.
  /// [keyring] Location of public keys used for verification. Used only if `verify` is true
  /// [lint] Run helm lint when planning.
  /// [manifest] The rendered manifests as JSON. Not yet supported.
  /// [maxHistory] Limit the maximum number of revisions saved per release. Use 0 for no limit.
  /// [name] Release name.
  /// [namespace] Namespace to install the release into.
  /// [postrender] Postrender command to run.
  /// [recreatePods] Perform pods restart during upgrade/rollback.
  /// [renderSubchartNotes] If set, render subchart notes along with the parent.
  /// [replace] Re-use the given name, even if that name is already used. This is unsafe in production
  /// [repositoryOpts] Specification defining the Helm chart repository to use.
  /// [resetValues] When upgrading, reset the values to the ones built into the chart.
  /// [resourceNames] Names of resources created by the release grouped by "kind/version".
  /// [reuseValues] When upgrading, reuse the last release's values and merge in any overrides. If 'resetValues' is specified, this is ignored
  /// [skipAwait] By default, the provider waits until all resources are in a ready state before marking the release as successful. Setting this to true will skip such await logic.
  /// [skipCrds] If set, no CRDs will be installed. By default, CRDs are installed if not already present.
  /// [timeout] Time in seconds to wait for any individual kubernetes operation.
  /// [valueYamlFiles] List of assets (raw yaml files). Content is read and merged with values.
  /// [values] Custom values set for the release.
  /// [verify] Verify the package before installing it.
  /// [version] Specify the exact chart version to install. If this is not specified, the latest version is installed.
  /// [waitForJobs] Will wait until all Jobs have been completed before marking the release as successful. This is ignored if `skipAwait` is enabled.
  ReleaseArgs({
    this.allowNullValues,
    this.atomic,
    required this.chart,
    this.cleanupOnFail,
    this.compat,
    this.createNamespace,
    this.dependencyUpdate,
    this.description,
    this.devel,
    this.disableCRDHooks,
    this.disableOpenapiValidation,
    this.disableWebhooks,
    this.forceUpdate,
    this.keyring,
    this.lint,
    this.manifest,
    this.maxHistory,
    this.name,
    this.namespace,
    this.postrender,
    this.recreatePods,
    this.renderSubchartNotes,
    this.replace,
    this.repositoryOpts,
    this.resetValues,
    this.resourceNames,
    this.reuseValues,
    this.skipAwait,
    this.skipCrds,
    this.timeout,
    this.valueYamlFiles,
    this.values,
    this.verify,
    this.version,
    this.waitForJobs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowNullValues': ?allowNullValues,
      'atomic': ?atomic,
      'chart': chart,
      'cleanupOnFail': ?cleanupOnFail,
      'compat': ?compat,
      'createNamespace': ?createNamespace,
      'dependencyUpdate': ?dependencyUpdate,
      'description': ?description,
      'devel': ?devel,
      'disableCRDHooks': ?disableCRDHooks,
      'disableOpenapiValidation': ?disableOpenapiValidation,
      'disableWebhooks': ?disableWebhooks,
      'forceUpdate': ?forceUpdate,
      'keyring': ?keyring,
      'lint': ?lint,
      'manifest': ?manifest,
      'maxHistory': ?maxHistory,
      'name': ?name,
      'namespace': ?namespace,
      'postrender': ?postrender,
      'recreatePods': ?recreatePods,
      'renderSubchartNotes': ?renderSubchartNotes,
      'replace': ?replace,
      'repositoryOpts':
          ?pulumi.Input.mapOptionalInputValue<
            RepositoryOpts,
            Map<String, dynamic>
          >(repositoryOpts, (value) => value.toMap()),
      'resetValues': ?resetValues,
      'resourceNames': ?resourceNames,
      'reuseValues': ?reuseValues,
      'skipAwait': ?skipAwait,
      'skipCrds': ?skipCrds,
      'timeout': ?timeout,
      'valueYamlFiles': ?valueYamlFiles,
      'values': ?values,
      'verify': ?verify,
      'version': ?version,
      'waitForJobs': ?waitForJobs,
    };
  }

  factory ReleaseArgs.fromMap(Map<String, dynamic> map) {
    return ReleaseArgs(
      allowNullValues: (() {
        final guardedValue = map['allowNullValues'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      atomic: (() {
        final guardedValue = map['atomic'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      chart: pulumi.Input.fromValue(map['chart'] as String),
      cleanupOnFail: (() {
        final guardedValue = map['cleanupOnFail'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      compat: (() {
        final guardedValue = map['compat'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      createNamespace: (() {
        final guardedValue = map['createNamespace'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      dependencyUpdate: (() {
        final guardedValue = map['dependencyUpdate'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      devel: (() {
        final guardedValue = map['devel'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      disableCRDHooks: (() {
        final guardedValue = map['disableCRDHooks'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      disableOpenapiValidation: (() {
        final guardedValue = map['disableOpenapiValidation'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      disableWebhooks: (() {
        final guardedValue = map['disableWebhooks'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      forceUpdate: (() {
        final guardedValue = map['forceUpdate'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      keyring: (() {
        final guardedValue = map['keyring'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      lint: (() {
        final guardedValue = map['lint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      manifest: (() {
        final guardedValue = map['manifest'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      maxHistory: (() {
        final guardedValue = map['maxHistory'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      namespace: (() {
        final guardedValue = map['namespace'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      postrender: (() {
        final guardedValue = map['postrender'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      recreatePods: (() {
        final guardedValue = map['recreatePods'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      renderSubchartNotes: (() {
        final guardedValue = map['renderSubchartNotes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      replace: (() {
        final guardedValue = map['replace'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      repositoryOpts: (() {
        final guardedValue = map['repositoryOpts'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          RepositoryOpts.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      resetValues: (() {
        final guardedValue = map['resetValues'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      resourceNames: (() {
        final guardedValue = map['resourceNames'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, List<String>>(),
        );
      })(),
      reuseValues: (() {
        final guardedValue = map['reuseValues'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      skipAwait: (() {
        final guardedValue = map['skipAwait'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      skipCrds: (() {
        final guardedValue = map['skipCrds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      timeout: (() {
        final guardedValue = map['timeout'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      valueYamlFiles: (() {
        final guardedValue = map['valueYamlFiles'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>());
      })(),
      values: (() {
        final guardedValue = map['values'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      verify: (() {
        final guardedValue = map['verify'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      version: (() {
        final guardedValue = map['version'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      waitForJobs: (() {
        final guardedValue = map['waitForJobs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
