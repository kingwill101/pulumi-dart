// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getPeering.
class GetPeeringResult {
  /// The full names of the Google Compute Engine [networks](/compute/docs/networks-and-firewalls#networks) to which the instance is connected. Caller needs to make sure that CIDR subnets do not overlap between networks, else peering creation will fail.
  final String? authorizedNetwork;
  /// The time the instance was created.
  final String? createTime;
  /// Full domain resource path for the Managed AD Domain involved in peering. The resource path should be in the form: `projects/{project_id}/locations/global/domains/{domain_name}`
  final String? domainResource;
  /// Optional. Resource labels to represent user-provided metadata.
  final Map<String, String>? labels;
  /// Unique name of the peering in this scope including projects and location using the form: `projects/{project_id}/locations/global/peerings/{peering_id}`.
  final String? name;
  /// The current state of this Peering.
  final String? state;
  /// Additional information about the current status of this peering, if available.
  final String? statusMessage;
  /// Last update time.
  final String? updateTime;

  /// Creates a new [GetPeeringResult].
  /// [authorizedNetwork] The full names of the Google Compute Engine [networks](/compute/docs/networks-and-firewalls#networks) to which the instance is connected. Caller needs to make sure that CIDR subnets do not overlap between networks, else peering creation will fail.
  /// [createTime] The time the instance was created.
  /// [domainResource] Full domain resource path for the Managed AD Domain involved in peering. The resource path should be in the form: `projects/{project_id}/locations/global/domains/{domain_name}`
  /// [labels] Optional. Resource labels to represent user-provided metadata.
  /// [name] Unique name of the peering in this scope including projects and location using the form: `projects/{project_id}/locations/global/peerings/{peering_id}`.
  /// [state] The current state of this Peering.
  /// [statusMessage] Additional information about the current status of this peering, if available.
  /// [updateTime] Last update time.
  const GetPeeringResult({
    this.authorizedNetwork,
    this.createTime,
    this.domainResource,
    this.labels,
    this.name,
    this.state,
    this.statusMessage,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizedNetwork': ?authorizedNetwork,
      'createTime': ?createTime,
      'domainResource': ?domainResource,
      'labels': ?labels,
      'name': ?name,
      'state': ?state,
      'statusMessage': ?statusMessage,
      'updateTime': ?updateTime,
    };
  }

  factory GetPeeringResult.fromMap(Map<String, dynamic> map) {
    return GetPeeringResult(
      authorizedNetwork: (() { final guardedValue = map['authorizedNetwork']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      domainResource: (() { final guardedValue = map['domainResource']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      statusMessage: (() { final guardedValue = map['statusMessage']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
