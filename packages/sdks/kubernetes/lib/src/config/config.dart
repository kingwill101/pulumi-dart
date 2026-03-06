// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration values for the kubernetes package.
class KubernetesConfig {
  const KubernetesConfig();

  String? _raw(String key) {
    final deployment = pulumi.Deployment.instance;
    return deployment.getConfig(key);
  }

  bool _isSecret(String key) {
    final deployment = pulumi.Deployment.instance;
    return deployment.isConfigSecret(key);
  }

  /// If present and set to true, all resources will be rendered to the directory specified by renderYamlToDirectory on every update, even if the resource has not changed. This is useful for tools like ArgoCD Config Management Plugin that require all manifests to be regenerated on each run. Only valid when renderYamlToDirectory is set.
  bool? get alwaysRender {
    final raw = _raw('alwaysRender');
    return (raw).toBool();
  }

  bool get alwaysRenderIsSecret => _isSecret('alwaysRender');

  /// If present, the name of the kubeconfig cluster to use.
  String? get cluster {
    final raw = _raw('cluster');
    return raw;
  }

  bool get clusterIsSecret => _isSecret('cluster');

  /// If present, this value will control the provider's replacement behavior. In particular, the provider will _only_ be replaced when `clusterIdentifier` changes; all other changes to provider configuration will be treated as updates.
  ///
  /// Kubernetes does not yet offer an API for cluster identification, so Pulumi uses heuristics to decide when a provider resource should be replaced or updated. These heuristics can sometimes lead to destructive replace operations when an update would be more appropriate, or vice versa.
  ///
  /// Use `clusterIdentifier` for more fine-grained control of the provider resource's lifecycle.
  String? get clusterIdentifier {
    final raw = _raw('clusterIdentifier');
    return raw;
  }

  bool get clusterIdentifierIsSecret => _isSecret('clusterIdentifier');

  /// If present, the name of the kubeconfig context to use.
  String? get context {
    final raw = _raw('context');
    return raw;
  }

  bool get contextIsSecret => _isSecret('context');

  /// If present and set to true, the provider will delete resources associated with an unreachable Kubernetes cluster from Pulumi state
  bool? get deleteUnreachable {
    final raw = _raw('deleteUnreachable');
    return (raw).toBool();
  }

  bool get deleteUnreachableIsSecret => _isSecret('deleteUnreachable');

  /// If present and set to true, allow ConfigMaps to be mutated.
  /// Disabled by default for backward-compatibility.
  ///
  /// This config can be specified in the following ways using this precedence:
  /// 1. This `enableConfigMapMutable` parameter.
  /// 2. The `PULUMI_K8S_ENABLE_CONFIGMAP_MUTABLE` environment variable.
  bool? get enableConfigMapMutable {
    final raw = _raw('enableConfigMapMutable');
    return (raw).toBool();
  }

  bool get enableConfigMapMutableIsSecret => _isSecret('enableConfigMapMutable');

  /// Obsolete. This option has no effect.
  bool? get enableReplaceCRD {
    final raw = _raw('enableReplaceCRD');
    return (raw).toBool();
  }

  bool get enableReplaceCRDIsSecret => _isSecret('enableReplaceCRD');

  /// If present and set to true, allow Secrets to be mutated.
  /// Disabled by default for backward compatibility.
  ///
  /// This config can be specified in the following ways using this precedence:
  /// 1. This `enableSecretMutable` parameter.
  /// 2. The `PULUMI_K8S_ENABLE_SECRET_MUTABLE` environment variable.
  bool? get enableSecretMutable {
    final raw = _raw('enableSecretMutable');
    return (raw).toBool();
  }

  bool get enableSecretMutableIsSecret => _isSecret('enableSecretMutable');

  /// If present and set to false, disable Server-Side Apply mode.
  /// See https://github.com/pulumi/pulumi-kubernetes/issues/2011 for additional details.
  bool? get enableServerSideApply {
    final raw = _raw('enableServerSideApply');
    return (raw).toBool();
  }

  bool get enableServerSideApplyIsSecret => _isSecret('enableServerSideApply');

  /// The contents of a kubeconfig file or the path to a kubeconfig file. If this is set, this config will be used instead of $KUBECONFIG.
  String? get kubeconfig {
    final raw = _raw('kubeconfig');
    return raw;
  }

  bool get kubeconfigIsSecret => _isSecret('kubeconfig');

  /// If present, the default namespace to use. This flag is ignored for cluster-scoped resources.
  ///
  /// A namespace can be specified in multiple places, and the precedence is as follows:
  /// 1. `.metadata.namespace` set on the resource.
  /// 2. This `namespace` parameter.
  /// 3. `namespace` set for the active context in the kubeconfig.
  String? get namespace {
    final raw = _raw('namespace');
    return raw;
  }

  bool get namespaceIsSecret => _isSecret('namespace');

  /// BETA FEATURE - If present, render resource manifests to this directory. In this mode, resources will not
  /// be created on a Kubernetes cluster, but the rendered manifests will be kept in sync with changes
  /// to the Pulumi program. This feature is in developer preview, and is disabled by default.
  ///
  /// Note that some computed Outputs such as status fields will not be populated
  /// since the resources are not created on a Kubernetes cluster. These Output values will remain undefined,
  /// and may result in an error if they are referenced by other resources. Also note that any secret values
  /// used in these resources will be rendered in plaintext to the resulting YAML.
  String? get renderYamlToDirectory {
    final raw = _raw('renderYamlToDirectory');
    return raw;
  }

  bool get renderYamlToDirectoryIsSecret => _isSecret('renderYamlToDirectory');

  /// If present and set to true, the provider will skip resources update associated with an unreachable Kubernetes cluster from Pulumi state
  bool? get skipUpdateUnreachable {
    final raw = _raw('skipUpdateUnreachable');
    return (raw).toBool();
  }

  bool get skipUpdateUnreachableIsSecret => _isSecret('skipUpdateUnreachable');

  /// If present and set to true, the provider will use strict configuration mode. Recommended for production stacks. In this mode, the default Kubernetes provider is disabled, and the `kubeconfig` and `context` settings are required for Provider configuration. These settings unambiguously ensure that every Kubernetes resource is associated with a particular cluster.
  bool? get strictMode {
    final raw = _raw('strictMode');
    return (raw).toBool();
  }

  bool get strictModeIsSecret => _isSecret('strictMode');

  /// If present and set to true, suppress apiVersion deprecation warnings from the CLI.
  ///
  /// This config can be specified in the following ways, using this precedence:
  /// 1. This `suppressDeprecationWarnings` parameter.
  /// 2. The `PULUMI_K8S_SUPPRESS_DEPRECATION_WARNINGS` environment variable.
  bool? get suppressDeprecationWarnings {
    final raw = _raw('suppressDeprecationWarnings');
    return (raw).toBool();
  }

  bool get suppressDeprecationWarningsIsSecret => _isSecret('suppressDeprecationWarnings');

  /// If present and set to true, suppress unsupported Helm hook warnings from the CLI.
  ///
  /// This config can be specified in the following ways, using this precedence:
  /// 1. This `suppressHelmHookWarnings` parameter.
  /// 2. The `PULUMI_K8S_SUPPRESS_HELM_HOOK_WARNINGS` environment variable.
  bool? get suppressHelmHookWarnings {
    final raw = _raw('suppressHelmHookWarnings');
    return (raw).toBool();
  }

  bool get suppressHelmHookWarningsIsSecret => _isSecret('suppressHelmHookWarnings');

}

const config = KubernetesConfig();

