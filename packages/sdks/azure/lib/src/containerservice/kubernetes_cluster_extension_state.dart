// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'kubernetes_cluster_extension_aks_assigned_identity.dart';
import 'kubernetes_cluster_extension_plan.dart';

/// Input properties used for looking up and filtering KubernetesClusterExtension resources.
class KubernetesClusterExtensionState {
  /// An `aks_assigned_identity` block as defined below.
  final pulumi.Input<List<KubernetesClusterExtensionAksAssignedIdentity>>?
  aksAssignedIdentities;

  /// Specifies the Cluster ID. Changing this forces a new Kubernetes Cluster Extension to be created.
  final pulumi.Input<String>? clusterId;

  /// Configuration settings that are sensitive, as name-value pairs for configuring this extension.
  final pulumi.Input<Map<String, String>>? configurationProtectedSettings;

  /// Configuration settings, as name-value pairs for configuring this extension.
  final pulumi.Input<Map<String, String>>? configurationSettings;

  /// The current version of the extension.
  final pulumi.Input<String>? currentVersion;

  /// Specifies the type of extension. It must be one of the extension types registered with Microsoft.KubernetesConfiguration by the Extension publisher. For more information, please refer to [Available Extensions for AKS](https://learn.microsoft.com/en-us/azure/aks/cluster-extensions?tabs=azure-cli#currently-available-extensions). Changing this forces a new Kubernetes Cluster Extension to be created.
  final pulumi.Input<String>? extensionType;

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

  /// Creates a new [KubernetesClusterExtensionState].
  /// [aksAssignedIdentities] An `aks_assigned_identity` block as defined below.
  /// [clusterId] Specifies the Cluster ID. Changing this forces a new Kubernetes Cluster Extension to be created.
  /// [configurationProtectedSettings] Configuration settings that are sensitive, as name-value pairs for configuring this extension.
  /// [configurationSettings] Configuration settings, as name-value pairs for configuring this extension.
  /// [currentVersion] The current version of the extension.
  /// [extensionType] Specifies the type of extension. It must be one of the extension types registered with Microsoft.KubernetesConfiguration by the Extension publisher. For more information, please refer to [Available Extensions for AKS](https://learn.microsoft.com/en-us/azure/aks/cluster-extensions?tabs=azure-cli#currently-available-extensions). Changing this forces a new Kubernetes Cluster Extension to be created.
  /// [name] Specifies the name which should be used for this Kubernetes Cluster Extension. Changing this forces a new Kubernetes Cluster Extension to be created.
  /// [plan] A `plan` block as defined below. Changing this forces a new resource to be created.
  /// [releaseNamespace] Namespace where the extension release must be placed for a cluster scoped extension. If this namespace does not exist, it will be created. Changing this forces a new Kubernetes Cluster Extension to be created.
  /// [releaseTrain] The release train used by this extension. Possible values include but are not limited to `Stable`, `Preview`. Changing this forces a new Kubernetes Cluster Extension to be created.
  /// [targetNamespace] Namespace where the extension will be created for a namespace scoped extension. If this namespace does not exist, it will be created. Changing this forces a new Kubernetes Cluster Extension to be created.
  /// [version] User-specified version that the extension should pin to. If it is not set, Azure will use the latest version and auto upgrade it. Changing this forces a new Kubernetes Cluster Extension to be created.
  KubernetesClusterExtensionState({
    this.aksAssignedIdentities,
    this.clusterId,
    this.configurationProtectedSettings,
    this.configurationSettings,
    this.currentVersion,
    this.extensionType,
    this.name,
    this.plan,
    this.releaseNamespace,
    this.releaseTrain,
    this.targetNamespace,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aksAssignedIdentities':
          ?pulumi.Input.mapOptionalInputValue<
            List<KubernetesClusterExtensionAksAssignedIdentity>,
            List<Map<String, dynamic>>
          >(
            aksAssignedIdentities,
            (value) =>
                pulumi.Input.encodeList<
                  KubernetesClusterExtensionAksAssignedIdentity,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'clusterId': ?clusterId,
      'configurationProtectedSettings': ?configurationProtectedSettings,
      'configurationSettings': ?configurationSettings,
      'currentVersion': ?currentVersion,
      'extensionType': ?extensionType,
      'name': ?name,
      'plan':
          ?pulumi.Input.mapOptionalInputValue<
            KubernetesClusterExtensionPlan,
            Map<String, dynamic>
          >(plan, (value) => value.toMap()),
      'releaseNamespace': ?releaseNamespace,
      'releaseTrain': ?releaseTrain,
      'targetNamespace': ?targetNamespace,
      'version': ?version,
    };
  }

  factory KubernetesClusterExtensionState.fromMap(Map<String, dynamic> map) {
    return KubernetesClusterExtensionState(
      aksAssignedIdentities: (() {
        final guardedValue = map['aksAssignedIdentities'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi
              .Input.decodeList<KubernetesClusterExtensionAksAssignedIdentity>(
            guardedValue,
            (value) => KubernetesClusterExtensionAksAssignedIdentity.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      clusterId: (() {
        final guardedValue = map['clusterId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      configurationProtectedSettings: (() {
        final guardedValue = map['configurationProtectedSettings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      configurationSettings: (() {
        final guardedValue = map['configurationSettings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      currentVersion: (() {
        final guardedValue = map['currentVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      extensionType: (() {
        final guardedValue = map['extensionType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      plan: (() {
        final guardedValue = map['plan'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          KubernetesClusterExtensionPlan.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      releaseNamespace: (() {
        final guardedValue = map['releaseNamespace'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      releaseTrain: (() {
        final guardedValue = map['releaseTrain'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      targetNamespace: (() {
        final guardedValue = map['targetNamespace'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      version: (() {
        final guardedValue = map['version'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
