// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../index/helm_release_settings.dart';
import '../index/kube_client_settings.dart';

/// {@template pulumi_providers_provider_args_doc}
/// The set of arguments for Provider.
/// {@endtemplate}
/// {@macro pulumi_providers_provider_args_doc}
class ProviderArgs {
  /// If present and set to true, all resources will be rendered to the directory specified by renderYamlToDirectory on every update, even if the resource has not changed. This is useful for tools like ArgoCD Config Management Plugin that require all manifests to be regenerated on each run. Only valid when renderYamlToDirectory is set.
  final pulumi.Input<bool>? alwaysRender;

  /// If present, the name of the kubeconfig cluster to use.
  final pulumi.Input<String>? cluster;

  /// If present, this value will control the provider's replacement behavior. In particular, the provider will _only_ be replaced when `clusterIdentifier` changes; all other changes to provider configuration will be treated as updates.
  ///
  /// Kubernetes does not yet offer an API for cluster identification, so Pulumi uses heuristics to decide when a provider resource should be replaced or updated. These heuristics can sometimes lead to destructive replace operations when an update would be more appropriate, or vice versa.
  ///
  /// Use `clusterIdentifier` for more fine-grained control of the provider resource's lifecycle.
  final pulumi.Input<String>? clusterIdentifier;

  /// If present, the name of the kubeconfig context to use.
  final pulumi.Input<String>? context;

  /// If present and set to true, the provider will delete resources associated with an unreachable Kubernetes cluster from Pulumi state
  final pulumi.Input<bool>? deleteUnreachable;

  /// BETA FEATURE - If present and set to true, allow ConfigMaps to be mutated.
  /// This feature is in developer preview, and is disabled by default.
  ///
  /// This config can be specified in the following ways using this precedence:
  /// 1. This `enableConfigMapMutable` parameter.
  /// 2. The `PULUMI_K8S_ENABLE_CONFIGMAP_MUTABLE` environment variable.
  final pulumi.Input<bool>? enableConfigMapMutable;

  /// BETA FEATURE - If present and set to true, allow Secrets to be mutated.
  /// This feature is in developer preview, and is disabled by default.
  ///
  /// This config can be specified in the following ways using this precedence:
  /// 1. This `enableSecretMutable` parameter.
  /// 2. The `PULUMI_K8S_ENABLE_SECRET_MUTABLE` environment variable.
  final pulumi.Input<bool>? enableSecretMutable;

  /// If present and set to false, disable Server-Side Apply mode.
  /// See https://github.com/pulumi/pulumi-kubernetes/issues/2011 for additional details.
  final pulumi.Input<bool>? enableServerSideApply;

  /// Options to configure the Helm Release resource.
  final pulumi.Input<HelmReleaseSettings>? helmReleaseSettings;

  /// Options for tuning the Kubernetes client used by a Provider.
  final pulumi.Input<KubeClientSettings>? kubeClientSettings;

  /// The contents of a kubeconfig file or the path to a kubeconfig file.
  final pulumi.Input<String>? kubeconfig;

  /// If present, the default namespace to use. This flag is ignored for cluster-scoped resources.
  ///
  /// A namespace can be specified in multiple places, and the precedence is as follows:
  /// 1. `.metadata.namespace` set on the resource.
  /// 2. This `namespace` parameter.
  /// 3. `namespace` set for the active context in the kubeconfig.
  final pulumi.Input<String>? namespace;

  /// BETA FEATURE - If present, render resource manifests to this directory. In this mode, resources will not
  /// be created on a Kubernetes cluster, but the rendered manifests will be kept in sync with changes
  /// to the Pulumi program. This feature is in developer preview, and is disabled by default.
  ///
  /// Note that some computed Outputs such as status fields will not be populated
  /// since the resources are not created on a Kubernetes cluster. These Output values will remain undefined,
  /// and may result in an error if they are referenced by other resources. Also note that any secret values
  /// used in these resources will be rendered in plaintext to the resulting YAML.
  final pulumi.Input<String>? renderYamlToDirectory;

  /// If present and set to true, the provider will skip resources update associated with an unreachable Kubernetes cluster from Pulumi state
  final pulumi.Input<bool>? skipUpdateUnreachable;

  /// If present and set to true, suppress apiVersion deprecation warnings from the CLI.
  final pulumi.Input<bool>? suppressDeprecationWarnings;

  /// If present and set to true, suppress unsupported Helm hook warnings from the CLI.
  final pulumi.Input<bool>? suppressHelmHookWarnings;

  /// Creates a new [ProviderArgs].
  /// [alwaysRender] If present and set to true, all resources will be rendered to the directory specified by renderYamlToDirectory on every update, even if the resource has not changed. This is useful for tools like ArgoCD Config Management Plugin that require all manifests to be regenerated on each run. Only valid when renderYamlToDirectory is set.
  /// [cluster] If present, the name of the kubeconfig cluster to use.
  /// [clusterIdentifier] If present, this value will control the provider's replacement behavior. In particular, the provider will _only_ be replaced when `clusterIdentifier` changes; all other changes to provider configuration will be treated as updates.
  /// [context] If present, the name of the kubeconfig context to use.
  /// [deleteUnreachable] If present and set to true, the provider will delete resources associated with an unreachable Kubernetes cluster from Pulumi state
  /// [enableConfigMapMutable] BETA FEATURE - If present and set to true, allow ConfigMaps to be mutated.
  /// [enableSecretMutable] BETA FEATURE - If present and set to true, allow Secrets to be mutated.
  /// [enableServerSideApply] If present and set to false, disable Server-Side Apply mode.
  /// [helmReleaseSettings] Options to configure the Helm Release resource.
  /// [kubeClientSettings] Options for tuning the Kubernetes client used by a Provider.
  /// [kubeconfig] The contents of a kubeconfig file or the path to a kubeconfig file.
  /// [namespace] If present, the default namespace to use. This flag is ignored for cluster-scoped resources.
  /// [renderYamlToDirectory] BETA FEATURE - If present, render resource manifests to this directory. In this mode, resources will not
  /// [skipUpdateUnreachable] If present and set to true, the provider will skip resources update associated with an unreachable Kubernetes cluster from Pulumi state
  /// [suppressDeprecationWarnings] If present and set to true, suppress apiVersion deprecation warnings from the CLI.
  /// [suppressHelmHookWarnings] If present and set to true, suppress unsupported Helm hook warnings from the CLI.
  ProviderArgs({
    this.alwaysRender,
    this.cluster,
    this.clusterIdentifier,
    this.context,
    this.deleteUnreachable,
    this.enableConfigMapMutable,
    this.enableSecretMutable,
    this.enableServerSideApply,
    this.helmReleaseSettings,
    this.kubeClientSettings,
    this.kubeconfig,
    this.namespace,
    this.renderYamlToDirectory,
    this.skipUpdateUnreachable,
    this.suppressDeprecationWarnings,
    this.suppressHelmHookWarnings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alwaysRender': ?alwaysRender,
      'cluster': ?cluster,
      'clusterIdentifier': ?clusterIdentifier,
      'context': ?context,
      'deleteUnreachable': ?deleteUnreachable,
      'enableConfigMapMutable': ?enableConfigMapMutable,
      'enableSecretMutable': ?enableSecretMutable,
      'enableServerSideApply': ?enableServerSideApply,
      'helmReleaseSettings':
          ?pulumi.Input.mapOptionalInputValue<
            HelmReleaseSettings,
            Map<String, dynamic>
          >(helmReleaseSettings, (value) => value.toMap()),
      'kubeClientSettings':
          ?pulumi.Input.mapOptionalInputValue<
            KubeClientSettings,
            Map<String, dynamic>
          >(kubeClientSettings, (value) => value.toMap()),
      'kubeconfig': ?kubeconfig,
      'namespace': ?namespace,
      'renderYamlToDirectory': ?renderYamlToDirectory,
      'skipUpdateUnreachable': ?skipUpdateUnreachable,
      'suppressDeprecationWarnings': ?suppressDeprecationWarnings,
      'suppressHelmHookWarnings': ?suppressHelmHookWarnings,
    };
  }

  factory ProviderArgs.fromMap(Map<String, dynamic> map) {
    return ProviderArgs(
      alwaysRender: (() {
        final guardedValue = map['alwaysRender'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      cluster: (() {
        final guardedValue = map['cluster'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      clusterIdentifier: (() {
        final guardedValue = map['clusterIdentifier'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      context: (() {
        final guardedValue = map['context'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      deleteUnreachable: (() {
        final guardedValue = map['deleteUnreachable'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      enableConfigMapMutable: (() {
        final guardedValue = map['enableConfigMapMutable'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      enableSecretMutable: (() {
        final guardedValue = map['enableSecretMutable'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      enableServerSideApply: (() {
        final guardedValue = map['enableServerSideApply'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      helmReleaseSettings: (() {
        final guardedValue = map['helmReleaseSettings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          HelmReleaseSettings.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      kubeClientSettings: (() {
        final guardedValue = map['kubeClientSettings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          KubeClientSettings.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      kubeconfig: (() {
        final guardedValue = map['kubeconfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      namespace: (() {
        final guardedValue = map['namespace'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      renderYamlToDirectory: (() {
        final guardedValue = map['renderYamlToDirectory'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      skipUpdateUnreachable: (() {
        final guardedValue = map['skipUpdateUnreachable'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      suppressDeprecationWarnings: (() {
        final guardedValue = map['suppressDeprecationWarnings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      suppressHelmHookWarnings: (() {
        final guardedValue = map['suppressHelmHookWarnings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
