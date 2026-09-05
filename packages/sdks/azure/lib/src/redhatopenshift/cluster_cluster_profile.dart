// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterClusterProfile {
  /// The custom domain for the cluster. For more info, see [Prepare a custom domain for your cluster](https://docs.microsoft.com/azure/openshift/tutorial-create-cluster#prepare-a-custom-domain-for-your-cluster-optional). Changing this forces a new resource to be created.
  final pulumi.Input<String> domain;
  /// Whether Federal Information Processing Standard (FIPS) validated cryptographic modules are used. Defaults to `false`. Changing this forces a new resource to be created.
  final pulumi.Input<bool?>? fipsEnabled;
  /// The name of a Resource Group which will be created to host VMs of Azure Red Hat OpenShift Cluster. The value cannot contain uppercase characters. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? managedResourceGroupName;
  /// The Red Hat pull secret for the cluster. For more info, see [Get a Red Hat pull secret](https://learn.microsoft.com/azure/openshift/tutorial-create-cluster#get-a-red-hat-pull-secret-optional). Changing this forces a new resource to be created.
  final pulumi.Input<String?>? pullSecret;
  /// The resource group that the cluster profile is attached to.
  final pulumi.Input<String?>? resourceGroupId;
  /// The version of the OpenShift cluster. Available versions can be found with the Azure CLI command `az aro get-versions --location &lt;region&gt;`. Changing this forces a new resource to be created.
  final pulumi.Input<String> version;

  /// Creates a new [ClusterClusterProfile].
  /// [domain] The custom domain for the cluster. For more info, see [Prepare a custom domain for your cluster](https://docs.microsoft.com/azure/openshift/tutorial-create-cluster#prepare-a-custom-domain-for-your-cluster-optional). Changing this forces a new resource to be created.
  /// [fipsEnabled] Whether Federal Information Processing Standard (FIPS) validated cryptographic modules are used. Defaults to `false`. Changing this forces a new resource to be created.
  /// [managedResourceGroupName] The name of a Resource Group which will be created to host VMs of Azure Red Hat OpenShift Cluster. The value cannot contain uppercase characters. Changing this forces a new resource to be created.
  /// [pullSecret] The Red Hat pull secret for the cluster. For more info, see [Get a Red Hat pull secret](https://learn.microsoft.com/azure/openshift/tutorial-create-cluster#get-a-red-hat-pull-secret-optional). Changing this forces a new resource to be created.
  /// [resourceGroupId] The resource group that the cluster profile is attached to.
  /// [version] The version of the OpenShift cluster. Available versions can be found with the Azure CLI command `az aro get-versions --location &lt;region&gt;`. Changing this forces a new resource to be created.
  const ClusterClusterProfile({
    required this.domain,
    this.fipsEnabled,
    this.managedResourceGroupName,
    this.pullSecret,
    this.resourceGroupId,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domain': domain,
      'fipsEnabled': ?fipsEnabled,
      'managedResourceGroupName': ?managedResourceGroupName,
      'pullSecret': ?pullSecret,
      'resourceGroupId': ?resourceGroupId,
      'version': version,
    };
  }

  factory ClusterClusterProfile.fromMap(Map<String, dynamic> map) {
    return ClusterClusterProfile(
      domain: pulumi.Input.fromValue(map['domain'] as String),
      fipsEnabled: (() { final guardedValue = map['fipsEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      managedResourceGroupName: (() { final guardedValue = map['managedResourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pullSecret: (() { final guardedValue = map['pullSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupId: (() { final guardedValue = map['resourceGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      version: pulumi.Input.fromValue(map['version'] as String),
    );
  }
}
