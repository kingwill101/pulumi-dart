// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getFirewallEndpoint.
class GetFirewallEndpointResult {
  /// List of networks that are associated with this endpoint in the local zone. This is a projection of the FirewallEndpointAssociations pointing at this endpoint. A network will only appear in this list after traffic routing is fully configured. Format: projects/{project}/global/networks/{name}.
  final List<String>? associatedNetworks;
  /// Optional. Project to bill on endpoint uptime usage.
  final String? billingProjectId;
  /// Create time stamp
  final String? createTime;
  /// Optional. Description of the firewall endpoint. Max length 2048 characters.
  final String? description;
  /// Optional. Labels as key value pairs
  final Map<String, String>? labels;
  /// name of resource
  final String? name;
  /// Whether reconciling is in progress, recommended per https://google.aip.dev/128.
  final bool? reconciling;
  /// Current state of the endpoint.
  final String? state;
  /// Update time stamp
  final String? updateTime;

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
    this.associatedNetworks,
    this.billingProjectId,
    this.createTime,
    this.description,
    this.labels,
    this.name,
    this.reconciling,
    this.state,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'associatedNetworks': ?associatedNetworks,
      'billingProjectId': ?billingProjectId,
      'createTime': ?createTime,
      'description': ?description,
      'labels': ?labels,
      'name': ?name,
      'reconciling': ?reconciling,
      'state': ?state,
      'updateTime': ?updateTime,
    };
  }

  factory GetFirewallEndpointResult.fromMap(Map<String, dynamic> map) {
    return GetFirewallEndpointResult(
      associatedNetworks: (() { final guardedValue = map['associatedNetworks']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      billingProjectId: (() { final guardedValue = map['billingProjectId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      reconciling: (() { final guardedValue = map['reconciling']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
