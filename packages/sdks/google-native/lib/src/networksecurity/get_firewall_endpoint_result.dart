// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getFirewallEndpoint.
class GetFirewallEndpointResult {
  /// List of networks that are associated with this endpoint in the local zone. This is a projection of the FirewallEndpointAssociations pointing at this endpoint. A network will only appear in this list after traffic routing is fully configured. Format: projects/{project}/global/networks/{name}.
  final List<String> associatedNetworks;
  /// Optional. Project to bill on endpoint uptime usage.
  final String billingProjectId;
  /// Create time stamp
  final String createTime;
  /// Optional. Description of the firewall endpoint. Max length 2048 characters.
  final String description;
  /// Optional. Labels as key value pairs
  final Map<String, String> labels;
  /// name of resource
  final String name;
  /// Whether reconciling is in progress, recommended per https://google.aip.dev/128.
  final bool reconciling;
  /// Current state of the endpoint.
  final String state;
  /// Update time stamp
  final String updateTime;

  /// Creates a new [GetFirewallEndpointResult].
  /// [associatedNetworks] List of networks that are associated with this endpoint in the local zone. This is a projection of the FirewallEndpointAssociations pointing at this endpoint. A network will only appear in this list after traffic routing is fully configured. Format: projects/{project}/global/networks/{name}.
  /// [billingProjectId] Optional. Project to bill on endpoint uptime usage.
  /// [createTime] Create time stamp
  /// [description] Optional. Description of the firewall endpoint. Max length 2048 characters.
  /// [labels] Optional. Labels as key value pairs
  /// [name] name of resource
  /// [reconciling] Whether reconciling is in progress, recommended per https://google.aip.dev/128.
  /// [state] Current state of the endpoint.
  /// [updateTime] Update time stamp
  const GetFirewallEndpointResult({
    required this.associatedNetworks,
    required this.billingProjectId,
    required this.createTime,
    required this.description,
    required this.labels,
    required this.name,
    required this.reconciling,
    required this.state,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'associatedNetworks': associatedNetworks,
      'billingProjectId': billingProjectId,
      'createTime': createTime,
      'description': description,
      'labels': labels,
      'name': name,
      'reconciling': reconciling,
      'state': state,
      'updateTime': updateTime,
    };
  }

  factory GetFirewallEndpointResult.fromMap(Map<String, dynamic> map) {
    return GetFirewallEndpointResult(
      associatedNetworks: (map['associatedNetworks'] as List).cast<String>(),
      billingProjectId: map['billingProjectId'] as String,
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      reconciling: map['reconciling'] as bool,
      state: map['state'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
