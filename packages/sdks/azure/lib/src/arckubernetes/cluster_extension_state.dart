// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_extension_identity.dart';

/// Input properties used for looking up and filtering ClusterExtension resources.
class ClusterExtensionState {
  /// Specifies the Cluster ID. Changing this forces a new Arc Kubernetes Cluster Extension to be created.
  final pulumi.Input<String>? clusterId;
  /// Configuration settings that are sensitive, as name-value pairs for configuring this extension.
  final pulumi.Input<Map<String, String>>? configurationProtectedSettings;
  /// Configuration settings, as name-value pairs for configuring this extension.
  final pulumi.Input<Map<String, String>>? configurationSettings;
  /// The current version of the extension.
  final pulumi.Input<String>? currentVersion;
  /// Specifies the type of extension. It must be one of the extension types registered with Microsoft.KubernetesConfiguration by the Extension publisher. For more information, please refer to [Available Extensions for Arc-enabled Kubernetes clusters](https://learn.microsoft.com/en-us/azure/azure-arc/kubernetes/extensions-release). Changing this forces a new Arc Kubernetes Cluster Extension to be created.
  final pulumi.Input<String>? extensionType;
  /// An `identity` block as defined below. Changing this forces a new Arc Kubernetes Cluster Extension to be created.
  final pulumi.Input<ClusterExtensionIdentity>? identity;
  /// Specifies the name which should be used for this Arc Kubernetes Cluster Extension. Changing this forces a new Arc Kubernetes Cluster Extension to be created.
  final pulumi.Input<String>? name;
  /// Namespace where the extension release must be placed for a cluster scoped extension. If this namespace does not exist, it will be created. Changing this forces a new Arc Kubernetes Cluster Extension to be created.
  final pulumi.Input<String>? releaseNamespace;
  /// The release train used by this extension. Possible values include but are not limited to `Stable`, `Preview`. Changing this forces a new Arc Kubernetes Cluster Extension to be created.
  final pulumi.Input<String>? releaseTrain;
  /// Namespace where the extension will be created for a namespace scoped extension. If this namespace does not exist, it will be created. Changing this forces a new Arc Kubernetes Cluster Extension to be created.
  final pulumi.Input<String>? targetNamespace;
  /// User-specified version that the extension should pin to. If it is not set, Azure will use the latest version and auto upgrade it. Changing this forces a new Arc Kubernetes Cluster Extension to be created.
  final pulumi.Input<String>? version;

  /// Creates a new [ClusterExtensionState].
  /// [clusterId] Specifies the Cluster ID. Changing this forces a new Arc Kubernetes Cluster Extension to be created.
  /// [configurationProtectedSettings] Configuration settings that are sensitive, as name-value pairs for configuring this extension.
  /// [configurationSettings] Configuration settings, as name-value pairs for configuring this extension.
  /// [currentVersion] The current version of the extension.
  /// [extensionType] Specifies the type of extension. It must be one of the extension types registered with Microsoft.KubernetesConfiguration by the Extension publisher. For more information, please refer to [Available Extensions for Arc-enabled Kubernetes clusters](https://learn.microsoft.com/en-us/azure/azure-arc/kubernetes/extensions-release). Changing this forces a new Arc Kubernetes Cluster Extension to be created.
  /// [identity] An `identity` block as defined below. Changing this forces a new Arc Kubernetes Cluster Extension to be created.
  /// [name] Specifies the name which should be used for this Arc Kubernetes Cluster Extension. Changing this forces a new Arc Kubernetes Cluster Extension to be created.
  /// [releaseNamespace] Namespace where the extension release must be placed for a cluster scoped extension. If this namespace does not exist, it will be created. Changing this forces a new Arc Kubernetes Cluster Extension to be created.
  /// [releaseTrain] The release train used by this extension. Possible values include but are not limited to `Stable`, `Preview`. Changing this forces a new Arc Kubernetes Cluster Extension to be created.
  /// [targetNamespace] Namespace where the extension will be created for a namespace scoped extension. If this namespace does not exist, it will be created. Changing this forces a new Arc Kubernetes Cluster Extension to be created.
  /// [version] User-specified version that the extension should pin to. If it is not set, Azure will use the latest version and auto upgrade it. Changing this forces a new Arc Kubernetes Cluster Extension to be created.
  ClusterExtensionState({
    this.clusterId,
    this.configurationProtectedSettings,
    this.configurationSettings,
    this.currentVersion,
    this.extensionType,
    this.identity,
    this.name,
    this.releaseNamespace,
    this.releaseTrain,
    this.targetNamespace,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': ?clusterId,
      'configurationProtectedSettings': ?configurationProtectedSettings,
      'configurationSettings': ?configurationSettings,
      'currentVersion': ?currentVersion,
      'extensionType': ?extensionType,
      'identity': ?pulumi.Input.mapOptionalInputValue<ClusterExtensionIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'name': ?name,
      'releaseNamespace': ?releaseNamespace,
      'releaseTrain': ?releaseTrain,
      'targetNamespace': ?targetNamespace,
      'version': ?version,
    };
  }

  factory ClusterExtensionState.fromMap(Map<String, dynamic> map) {
    return ClusterExtensionState(
      clusterId: map['clusterId'] == null ? null : (map['clusterId']! as String).input(),
      configurationProtectedSettings: map['configurationProtectedSettings'] == null ? null : ((map['configurationProtectedSettings']! as Map).cast<String, String>()).input(),
      configurationSettings: map['configurationSettings'] == null ? null : ((map['configurationSettings']! as Map).cast<String, String>()).input(),
      currentVersion: map['currentVersion'] == null ? null : (map['currentVersion']! as String).input(),
      extensionType: map['extensionType'] == null ? null : (map['extensionType']! as String).input(),
      identity: map['identity'] == null ? null : (ClusterExtensionIdentity.fromMap((map['identity']! as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      releaseNamespace: map['releaseNamespace'] == null ? null : (map['releaseNamespace']! as String).input(),
      releaseTrain: map['releaseTrain'] == null ? null : (map['releaseTrain']! as String).input(),
      targetNamespace: map['targetNamespace'] == null ? null : (map['targetNamespace']! as String).input(),
      version: map['version'] == null ? null : (map['version']! as String).input(),
    );
  }
}

