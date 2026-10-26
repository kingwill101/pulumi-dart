// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getFirewallEndpointAssociation.
class GetFirewallEndpointAssociationResult {
  /// Create time stamp
  final String? createTime;
  /// The URL of the FirewallEndpoint that is being associated.
  final String? firewallEndpoint;
  /// Optional. Labels as key value pairs
  final Map<String, String>? labels;
  /// name of resource
  final String? name;
  /// The URL of the network that is being associated.
  final String? network;
  /// Whether reconciling is in progress, recommended per https://google.aip.dev/128.
  final bool? reconciling;
  /// Current state of the association.
  final String? state;
  /// Optional. The URL of the TlsInspectionPolicy that is being associated.
  final String? tlsInspectionPolicy;
  /// Update time stamp
  final String? updateTime;

  /// Creates a new [GetFirewallEndpointAssociationResult].
  /// [createTime] Create time stamp
  /// [firewallEndpoint] The URL of the FirewallEndpoint that is being associated.
  /// [labels] Optional. Labels as key value pairs
  /// [name] name of resource
  /// [network] The URL of the network that is being associated.
  /// [reconciling] Whether reconciling is in progress, recommended per https://google.aip.dev/128.
  /// [state] Current state of the association.
  /// [tlsInspectionPolicy] Optional. The URL of the TlsInspectionPolicy that is being associated.
  /// [updateTime] Update time stamp
  const GetFirewallEndpointAssociationResult({
    this.createTime,
    this.firewallEndpoint,
    this.labels,
    this.name,
    this.network,
    this.reconciling,
    this.state,
    this.tlsInspectionPolicy,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'firewallEndpoint': ?firewallEndpoint,
      'labels': ?labels,
      'name': ?name,
      'network': ?network,
      'reconciling': ?reconciling,
      'state': ?state,
      'tlsInspectionPolicy': ?tlsInspectionPolicy,
      'updateTime': ?updateTime,
    };
  }

  factory GetFirewallEndpointAssociationResult.fromMap(Map<String, dynamic> map) {
    return GetFirewallEndpointAssociationResult(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      firewallEndpoint: (() { final guardedValue = map['firewallEndpoint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      network: (() { final guardedValue = map['network']; if (guardedValue == null) return null; return guardedValue as String; })(),
      reconciling: (() { final guardedValue = map['reconciling']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tlsInspectionPolicy: (() { final guardedValue = map['tlsInspectionPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
