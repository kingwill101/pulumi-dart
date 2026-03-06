// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getManagementDnsZoneBinding.
class GetManagementDnsZoneBindingResult {
  /// Creation time of this resource.
  final String createTime;
  /// User-provided description for this resource.
  final String description;
  /// The resource name of this binding. Resource names are schemeless URIs that follow the conventions in https://cloud.google.com/apis/design/resource_names. For example: `projects/my-project/locations/us-central1-a/privateClouds/my-cloud/managementDnsZoneBindings/my-management-dns-zone-binding`
  final String name;
  /// The state of the resource.
  final String state;
  /// System-generated unique identifier for the resource.
  final String uid;
  /// Last update time of this resource.
  final String updateTime;
  /// Network to bind is a VMware Engine network. Specify the name in the following form for VMware engine network: `projects/{project}/locations/global/vmwareEngineNetworks/{vmware_engine_network_id}`. `{project}` can either be a project number or a project ID.
  final String vmwareEngineNetwork;
  /// Network to bind is a standard consumer VPC. Specify the name in the following form for consumer VPC network: `projects/{project}/global/networks/{network_id}`. `{project}` can either be a project number or a project ID.
  final String vpcNetwork;

  /// Creates a new [GetManagementDnsZoneBindingResult].
  /// [createTime] Creation time of this resource.
  /// [description] User-provided description for this resource.
  /// [name] The resource name of this binding. Resource names are schemeless URIs that follow the conventions in https://cloud.google.com/apis/design/resource_names. For example: `projects/my-project/locations/us-central1-a/privateClouds/my-cloud/managementDnsZoneBindings/my-management-dns-zone-binding`
  /// [state] The state of the resource.
  /// [uid] System-generated unique identifier for the resource.
  /// [updateTime] Last update time of this resource.
  /// [vmwareEngineNetwork] Network to bind is a VMware Engine network. Specify the name in the following form for VMware engine network: `projects/{project}/locations/global/vmwareEngineNetworks/{vmware_engine_network_id}`. `{project}` can either be a project number or a project ID.
  /// [vpcNetwork] Network to bind is a standard consumer VPC. Specify the name in the following form for consumer VPC network: `projects/{project}/global/networks/{network_id}`. `{project}` can either be a project number or a project ID.
  const GetManagementDnsZoneBindingResult({
    required this.createTime,
    required this.description,
    required this.name,
    required this.state,
    required this.uid,
    required this.updateTime,
    required this.vmwareEngineNetwork,
    required this.vpcNetwork,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'description': description,
      'name': name,
      'state': state,
      'uid': uid,
      'updateTime': updateTime,
      'vmwareEngineNetwork': vmwareEngineNetwork,
      'vpcNetwork': vpcNetwork,
    };
  }

  factory GetManagementDnsZoneBindingResult.fromMap(Map<String, dynamic> map) {
    return GetManagementDnsZoneBindingResult(
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      name: map['name'] as String,
      state: map['state'] as String,
      uid: map['uid'] as String,
      updateTime: map['updateTime'] as String,
      vmwareEngineNetwork: map['vmwareEngineNetwork'] as String,
      vpcNetwork: map['vpcNetwork'] as String,
    );
  }
}

