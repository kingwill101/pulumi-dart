// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getPeering.
class GetPeeringManagedidentitiesV1beta1Result {
  /// The full names of the Google Compute Engine [networks](/compute/docs/networks-and-firewalls#networks) to which the instance is connected. Caller needs to make sure that CIDR subnets do not overlap between networks, else peering creation will fail.
  final String authorizedNetwork;
  /// The time the instance was created.
  final String createTime;
  /// Full domain resource path for the Managed AD Domain involved in peering. The resource path should be in the form: `projects/{project_id}/locations/global/domains/{domain_name}`
  final String domainResource;
  /// Optional. Resource labels to represent user provided metadata.
  final Map<String, String> labels;
  /// Unique name of the peering in this scope including projects and location using the form: `projects/{project_id}/locations/global/peerings/{peering_id}`.
  final String name;
  /// The current state of this Peering.
  final String state;
  /// Additional information about the current status of this peering, if available.
  final String statusMessage;
  /// Last update time.
  final String updateTime;

  /// Creates a new [GetPeeringManagedidentitiesV1beta1Result].
  /// [authorizedNetwork] The full names of the Google Compute Engine [networks](/compute/docs/networks-and-firewalls#networks) to which the instance is connected. Caller needs to make sure that CIDR subnets do not overlap between networks, else peering creation will fail.
  /// [createTime] The time the instance was created.
  /// [domainResource] Full domain resource path for the Managed AD Domain involved in peering. The resource path should be in the form: `projects/{project_id}/locations/global/domains/{domain_name}`
  /// [labels] Optional. Resource labels to represent user provided metadata.
  /// [name] Unique name of the peering in this scope including projects and location using the form: `projects/{project_id}/locations/global/peerings/{peering_id}`.
  /// [state] The current state of this Peering.
  /// [statusMessage] Additional information about the current status of this peering, if available.
  /// [updateTime] Last update time.
  const GetPeeringManagedidentitiesV1beta1Result({
    required this.authorizedNetwork,
    required this.createTime,
    required this.domainResource,
    required this.labels,
    required this.name,
    required this.state,
    required this.statusMessage,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizedNetwork': authorizedNetwork,
      'createTime': createTime,
      'domainResource': domainResource,
      'labels': labels,
      'name': name,
      'state': state,
      'statusMessage': statusMessage,
      'updateTime': updateTime,
    };
  }

  factory GetPeeringManagedidentitiesV1beta1Result.fromMap(Map<String, dynamic> map) {
    return GetPeeringManagedidentitiesV1beta1Result(
      authorizedNetwork: map['authorizedNetwork'] as String,
      createTime: map['createTime'] as String,
      domainResource: map['domainResource'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      state: map['state'] as String,
      statusMessage: map['statusMessage'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}

