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
  /// Use chart development versions, too. Equivalent to version '>0.0.0-0'. If `version` is set, this is ignored.
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
  /// [devel] Use chart development versions, too. Equivalent to version '>0.0.0-0'. If `version` is set, this is ignored.
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
    pulumi.Output<bool>? allowNullValues,
    pulumi.Output<bool>? atomic,
    required pulumi.Output<String> chart,
    pulumi.Output<bool>? cleanupOnFail,
    pulumi.Output<String>? compat,
    pulumi.Output<bool>? createNamespace,
    pulumi.Output<bool>? dependencyUpdate,
    pulumi.Output<String>? description,
    pulumi.Output<bool>? devel,
    pulumi.Output<bool>? disableCRDHooks,
    pulumi.Output<bool>? disableOpenapiValidation,
    pulumi.Output<bool>? disableWebhooks,
    pulumi.Output<bool>? forceUpdate,
    pulumi.Output<String>? keyring,
    pulumi.Output<bool>? lint,
    pulumi.Output<Map<String, dynamic>>? manifest,
    pulumi.Output<int>? maxHistory,
    pulumi.Output<String>? name,
    pulumi.Output<String>? namespace,
    pulumi.Output<String>? postrender,
    pulumi.Output<bool>? recreatePods,
    pulumi.Output<bool>? renderSubchartNotes,
    pulumi.Output<bool>? replace,
    pulumi.Output<RepositoryOpts>? repositoryOpts,
    pulumi.Output<bool>? resetValues,
    pulumi.Output<Map<String, List<String>>>? resourceNames,
    pulumi.Output<bool>? reuseValues,
    pulumi.Output<bool>? skipAwait,
    pulumi.Output<bool>? skipCrds,
    pulumi.Output<int>? timeout,
    pulumi.Output<List<dynamic>>? valueYamlFiles,
    pulumi.Output<Map<String, dynamic>>? values,
    pulumi.Output<bool>? verify,
    pulumi.Output<String>? version,
    pulumi.Output<bool>? waitForJobs,
  }) :
      allowNullValues = pulumi.Input.asOptionalInput<bool>(allowNullValues),
      atomic = pulumi.Input.asOptionalInput<bool>(atomic),
      chart = pulumi.Input.asInput<String>(chart),
      cleanupOnFail = pulumi.Input.asOptionalInput<bool>(cleanupOnFail),
      compat = pulumi.Input.asOptionalInput<String>(compat),
      createNamespace = pulumi.Input.asOptionalInput<bool>(createNamespace),
      dependencyUpdate = pulumi.Input.asOptionalInput<bool>(dependencyUpdate),
      description = pulumi.Input.asOptionalInput<String>(description),
      devel = pulumi.Input.asOptionalInput<bool>(devel),
      disableCRDHooks = pulumi.Input.asOptionalInput<bool>(disableCRDHooks),
      disableOpenapiValidation = pulumi.Input.asOptionalInput<bool>(disableOpenapiValidation),
      disableWebhooks = pulumi.Input.asOptionalInput<bool>(disableWebhooks),
      forceUpdate = pulumi.Input.asOptionalInput<bool>(forceUpdate),
      keyring = pulumi.Input.asOptionalInput<String>(keyring),
      lint = pulumi.Input.asOptionalInput<bool>(lint),
      manifest = pulumi.Input.asOptionalInput<Map<String, dynamic>>(manifest),
      maxHistory = pulumi.Input.asOptionalInput<int>(maxHistory),
      name = pulumi.Input.asOptionalInput<String>(name),
      namespace = pulumi.Input.asOptionalInput<String>(namespace),
      postrender = pulumi.Input.asOptionalInput<String>(postrender),
      recreatePods = pulumi.Input.asOptionalInput<bool>(recreatePods),
      renderSubchartNotes = pulumi.Input.asOptionalInput<bool>(renderSubchartNotes),
      replace = pulumi.Input.asOptionalInput<bool>(replace),
      repositoryOpts = pulumi.Input.asOptionalInput<RepositoryOpts>(repositoryOpts),
      resetValues = pulumi.Input.asOptionalInput<bool>(resetValues),
      resourceNames = pulumi.Input.asOptionalInput<Map<String, List<String>>>(resourceNames),
      reuseValues = pulumi.Input.asOptionalInput<bool>(reuseValues),
      skipAwait = pulumi.Input.asOptionalInput<bool>(skipAwait),
      skipCrds = pulumi.Input.asOptionalInput<bool>(skipCrds),
      timeout = pulumi.Input.asOptionalInput<int>(timeout),
      valueYamlFiles = pulumi.Input.asOptionalInput<List<dynamic>>(valueYamlFiles),
      values = pulumi.Input.asOptionalInput<Map<String, dynamic>>(values),
      verify = pulumi.Input.asOptionalInput<bool>(verify),
      version = pulumi.Input.asOptionalInput<String>(version),
      waitForJobs = pulumi.Input.asOptionalInput<bool>(waitForJobs);

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
      'repositoryOpts': ?pulumi.Input.mapOptionalInputValue<RepositoryOpts, Map<String, dynamic>>(repositoryOpts, (value) => value.toMap()),
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
      allowNullValues: map['allowNullValues'] == null ? null : pulumi.Output.create<bool>(map['allowNullValues'] as bool),
      atomic: map['atomic'] == null ? null : pulumi.Output.create<bool>(map['atomic'] as bool),
      chart: pulumi.Output.create<String>(map['chart'] as String),
      cleanupOnFail: map['cleanupOnFail'] == null ? null : pulumi.Output.create<bool>(map['cleanupOnFail'] as bool),
      compat: map['compat'] == null ? null : pulumi.Output.create<String>(map['compat'] as String),
      createNamespace: map['createNamespace'] == null ? null : pulumi.Output.create<bool>(map['createNamespace'] as bool),
      dependencyUpdate: map['dependencyUpdate'] == null ? null : pulumi.Output.create<bool>(map['dependencyUpdate'] as bool),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      devel: map['devel'] == null ? null : pulumi.Output.create<bool>(map['devel'] as bool),
      disableCRDHooks: map['disableCRDHooks'] == null ? null : pulumi.Output.create<bool>(map['disableCRDHooks'] as bool),
      disableOpenapiValidation: map['disableOpenapiValidation'] == null ? null : pulumi.Output.create<bool>(map['disableOpenapiValidation'] as bool),
      disableWebhooks: map['disableWebhooks'] == null ? null : pulumi.Output.create<bool>(map['disableWebhooks'] as bool),
      forceUpdate: map['forceUpdate'] == null ? null : pulumi.Output.create<bool>(map['forceUpdate'] as bool),
      keyring: map['keyring'] == null ? null : pulumi.Output.create<String>(map['keyring'] as String),
      lint: map['lint'] == null ? null : pulumi.Output.create<bool>(map['lint'] as bool),
      manifest: map['manifest'] == null ? null : pulumi.Output.create<Map<String, dynamic>>((map['manifest'] as Map).cast<String, dynamic>()),
      maxHistory: map['maxHistory'] == null ? null : pulumi.Output.create<int>(map['maxHistory'] as int),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      namespace: map['namespace'] == null ? null : pulumi.Output.create<String>(map['namespace'] as String),
      postrender: map['postrender'] == null ? null : pulumi.Output.create<String>(map['postrender'] as String),
      recreatePods: map['recreatePods'] == null ? null : pulumi.Output.create<bool>(map['recreatePods'] as bool),
      renderSubchartNotes: map['renderSubchartNotes'] == null ? null : pulumi.Output.create<bool>(map['renderSubchartNotes'] as bool),
      replace: map['replace'] == null ? null : pulumi.Output.create<bool>(map['replace'] as bool),
      repositoryOpts: map['repositoryOpts'] == null ? null : pulumi.Output.create<RepositoryOpts>(RepositoryOpts.fromMap((map['repositoryOpts'] as Map).cast<String, dynamic>())),
      resetValues: map['resetValues'] == null ? null : pulumi.Output.create<bool>(map['resetValues'] as bool),
      resourceNames: map['resourceNames'] == null ? null : pulumi.Output.create<Map<String, List<String>>>((map['resourceNames'] as Map).cast<String, List<String>>()),
      reuseValues: map['reuseValues'] == null ? null : pulumi.Output.create<bool>(map['reuseValues'] as bool),
      skipAwait: map['skipAwait'] == null ? null : pulumi.Output.create<bool>(map['skipAwait'] as bool),
      skipCrds: map['skipCrds'] == null ? null : pulumi.Output.create<bool>(map['skipCrds'] as bool),
      timeout: map['timeout'] == null ? null : pulumi.Output.create<int>(map['timeout'] as int),
      valueYamlFiles: map['valueYamlFiles'] == null ? null : pulumi.Output.create<List<dynamic>>((map['valueYamlFiles'] as List).cast<dynamic>()),
      values: map['values'] == null ? null : pulumi.Output.create<Map<String, dynamic>>((map['values'] as Map).cast<String, dynamic>()),
      verify: map['verify'] == null ? null : pulumi.Output.create<bool>(map['verify'] as bool),
      version: map['version'] == null ? null : pulumi.Output.create<String>(map['version'] as String),
      waitForJobs: map['waitForJobs'] == null ? null : pulumi.Output.create<bool>(map['waitForJobs'] as bool),
    );
  }
}

