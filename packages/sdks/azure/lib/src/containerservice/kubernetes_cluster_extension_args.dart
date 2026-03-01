// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'kubernetes_cluster_extension_plan.dart';

/// {@template pulumi_containerservice_kubernetes_cluster_extension_kubernetes_cluster_extension_args_doc}
/// The set of arguments for KubernetesClusterExtension.
/// {@endtemplate}
/// {@macro pulumi_containerservice_kubernetes_cluster_extension_kubernetes_cluster_extension_args_doc}
class KubernetesClusterExtensionArgs {
  /// Specifies the Cluster ID. Changing this forces a new Kubernetes Cluster Extension to be created.
  final pulumi.Input<String> clusterId;
  /// Configuration settings that are sensitive, as name-value pairs for configuring this extension.
  final pulumi.Input<Map<String, String>>? configurationProtectedSettings;
  /// Configuration settings, as name-value pairs for configuring this extension.
  final pulumi.Input<Map<String, String>>? configurationSettings;
  /// Specifies the type of extension. It must be one of the extension types registered with Microsoft.KubernetesConfiguration by the Extension publisher. For more information, please refer to [Available Extensions for AKS](https://learn.microsoft.com/en-us/azure/aks/cluster-extensions?tabs=azure-cli#currently-available-extensions). Changing this forces a new Kubernetes Cluster Extension to be created.
  final pulumi.Input<String> extensionType;
  /// Specifies the name which should be used for this Kubernetes Cluster Extension. Changing this forces a new Kubernetes Cluster Extension to be created.
  final pulumi.Input<String>? name;
  /// A `plan` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<KubernetesClusterExtensionPlan>? plan;
  /// Namespace where the extension release must be placed for a cluster scoped extension. If this namespace does not exist, it will be created. Changing this forces a new Kubernetes Cluster Extension to be created.
  final pulumi.Input<String>? releaseNamespace;
  /// The release train used by this extension. Possible values include but are not limited to `Stable`, `Preview`. Changing this forces a new Kubernetes Cluster Extension to be created.
  final pulumi.Input<String>? releaseTrain;
  /// Namespace where the extension will be created for a namespace scoped extension. If this namespace does not exist, it will be created. Changing this forces a new Kubernetes Cluster Extension to be created.
  final pulumi.Input<String>? targetNamespace;
  /// User-specified version that the extension should pin to. If it is not set, Azure will use the latest version and auto upgrade it. Changing this forces a new Kubernetes Cluster Extension to be created.
  final pulumi.Input<String>? version;

  /// Creates a new [KubernetesClusterExtensionArgs].
  /// [clusterId] Specifies the Cluster ID. Changing this forces a new Kubernetes Cluster Extension to be created.
  /// [configurationProtectedSettings] Configuration settings that are sensitive, as name-value pairs for configuring this extension.
  /// [configurationSettings] Configuration settings, as name-value pairs for configuring this extension.
  /// [extensionType] Specifies the type of extension. It must be one of the extension types registered with Microsoft.KubernetesConfiguration by the Extension publisher. For more information, please refer to [Available Extensions for AKS](https://learn.microsoft.com/en-us/azure/aks/cluster-extensions?tabs=azure-cli#currently-available-extensions). Changing this forces a new Kubernetes Cluster Extension to be created.
  /// [name] Specifies the name which should be used for this Kubernetes Cluster Extension. Changing this forces a new Kubernetes Cluster Extension to be created.
  /// [plan] A `plan` block as defined below. Changing this forces a new resource to be created.
  /// [releaseNamespace] Namespace where the extension release must be placed for a cluster scoped extension. If this namespace does not exist, it will be created. Changing this forces a new Kubernetes Cluster Extension to be created.
  /// [releaseTrain] The release train used by this extension. Possible values include but are not limited to `Stable`, `Preview`. Changing this forces a new Kubernetes Cluster Extension to be created.
  /// [targetNamespace] Namespace where the extension will be created for a namespace scoped extension. If this namespace does not exist, it will be created. Changing this forces a new Kubernetes Cluster Extension to be created.
  /// [version] User-specified version that the extension should pin to. If it is not set, Azure will use the latest version and auto upgrade it. Changing this forces a new Kubernetes Cluster Extension to be created.
  KubernetesClusterExtensionArgs({
    required pulumi.Output<String> clusterId,
    pulumi.Output<Map<String, String>>? configurationProtectedSettings,
    pulumi.Output<Map<String, String>>? configurationSettings,
    required pulumi.Output<String> extensionType,
    pulumi.Output<String>? name,
    pulumi.Output<KubernetesClusterExtensionPlan>? plan,
    pulumi.Output<String>? releaseNamespace,
    pulumi.Output<String>? releaseTrain,
    pulumi.Output<String>? targetNamespace,
    pulumi.Output<String>? version,
  }) :
      clusterId = pulumi.Input.asInput<String>(clusterId),
      configurationProtectedSettings = pulumi.Input.asOptionalInput<Map<String, String>>(configurationProtectedSettings),
      configurationSettings = pulumi.Input.asOptionalInput<Map<String, String>>(configurationSettings),
      extensionType = pulumi.Input.asInput<String>(extensionType),
      name = pulumi.Input.asOptionalInput<String>(name),
      plan = pulumi.Input.asOptionalInput<KubernetesClusterExtensionPlan>(plan),
      releaseNamespace = pulumi.Input.asOptionalInput<String>(releaseNamespace),
      releaseTrain = pulumi.Input.asOptionalInput<String>(releaseTrain),
      targetNamespace = pulumi.Input.asOptionalInput<String>(targetNamespace),
      version = pulumi.Input.asOptionalInput<String>(version);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': clusterId,
      'configurationProtectedSettings': ?configurationProtectedSettings,
      'configurationSettings': ?configurationSettings,
      'extensionType': extensionType,
      'name': ?name,
      'plan': ?pulumi.Input.mapOptionalInputValue<KubernetesClusterExtensionPlan, Map<String, dynamic>>(plan, (value) => value.toMap()),
      'releaseNamespace': ?releaseNamespace,
      'releaseTrain': ?releaseTrain,
      'targetNamespace': ?targetNamespace,
      'version': ?version,
    };
  }

  factory KubernetesClusterExtensionArgs.fromMap(Map<String, dynamic> map) {
    return KubernetesClusterExtensionArgs(
      clusterId: pulumi.Output.create<String>(map['clusterId'] as String),
      configurationProtectedSettings: map['configurationProtectedSettings'] == null ? null : pulumi.Output.create<Map<String, String>>((map['configurationProtectedSettings'] as Map).cast<String, String>()),
      configurationSettings: map['configurationSettings'] == null ? null : pulumi.Output.create<Map<String, String>>((map['configurationSettings'] as Map).cast<String, String>()),
      extensionType: pulumi.Output.create<String>(map['extensionType'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      plan: map['plan'] == null ? null : pulumi.Output.create<KubernetesClusterExtensionPlan>(KubernetesClusterExtensionPlan.fromMap((map['plan'] as Map).cast<String, dynamic>())),
      releaseNamespace: map['releaseNamespace'] == null ? null : pulumi.Output.create<String>(map['releaseNamespace'] as String),
      releaseTrain: map['releaseTrain'] == null ? null : pulumi.Output.create<String>(map['releaseTrain'] as String),
      targetNamespace: map['targetNamespace'] == null ? null : pulumi.Output.create<String>(map['targetNamespace'] as String),
      version: map['version'] == null ? null : pulumi.Output.create<String>(map['version'] as String),
    );
  }
}

