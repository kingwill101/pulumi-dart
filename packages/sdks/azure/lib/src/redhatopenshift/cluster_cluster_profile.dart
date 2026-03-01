// ignore_for_file: unused_element, unnecessary_cast


class ClusterClusterProfile {
  /// The custom domain for the cluster. For more info, see [Prepare a custom domain for your cluster](https://docs.microsoft.com/azure/openshift/tutorial-create-cluster#prepare-a-custom-domain-for-your-cluster-optional). Changing this forces a new resource to be created.
  final String domain;
  /// Whether Federal Information Processing Standard (FIPS) validated cryptographic modules are used. Defaults to `false`. Changing this forces a new resource to be created.
  final bool? fipsEnabled;
  /// The name of a Resource Group which will be created to host VMs of Azure Red Hat OpenShift Cluster. The value cannot contain uppercase characters. Changing this forces a new resource to be created.
  final String? managedResourceGroupName;
  /// The Red Hat pull secret for the cluster. For more info, see [Get a Red Hat pull secret](https://learn.microsoft.com/azure/openshift/tutorial-create-cluster#get-a-red-hat-pull-secret-optional). Changing this forces a new resource to be created.
  final String? pullSecret;
  /// The resource group that the cluster profile is attached to.
  final String? resourceGroupId;
  /// The version of the OpenShift cluster. Available versions can be found with the Azure CLI command `az aro get-versions --location <region>`. Changing this forces a new resource to be created.
  final String version;

  /// Creates a new [ClusterClusterProfile].
  /// [domain] The custom domain for the cluster. For more info, see [Prepare a custom domain for your cluster](https://docs.microsoft.com/azure/openshift/tutorial-create-cluster#prepare-a-custom-domain-for-your-cluster-optional). Changing this forces a new resource to be created.
  /// [fipsEnabled] Whether Federal Information Processing Standard (FIPS) validated cryptographic modules are used. Defaults to `false`. Changing this forces a new resource to be created.
  /// [managedResourceGroupName] The name of a Resource Group which will be created to host VMs of Azure Red Hat OpenShift Cluster. The value cannot contain uppercase characters. Changing this forces a new resource to be created.
  /// [pullSecret] The Red Hat pull secret for the cluster. For more info, see [Get a Red Hat pull secret](https://learn.microsoft.com/azure/openshift/tutorial-create-cluster#get-a-red-hat-pull-secret-optional). Changing this forces a new resource to be created.
  /// [resourceGroupId] The resource group that the cluster profile is attached to.
  /// [version] The version of the OpenShift cluster. Available versions can be found with the Azure CLI command `az aro get-versions --location <region>`. Changing this forces a new resource to be created.
  ClusterClusterProfile({
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
      domain: map['domain'] as String,
      fipsEnabled: map['fipsEnabled'] == null ? null : map['fipsEnabled'] as bool,
      managedResourceGroupName: map['managedResourceGroupName'] == null ? null : map['managedResourceGroupName'] as String,
      pullSecret: map['pullSecret'] == null ? null : map['pullSecret'] as String,
      resourceGroupId: map['resourceGroupId'] == null ? null : map['resourceGroupId'] as String,
      version: map['version'] as String,
    );
  }
}

