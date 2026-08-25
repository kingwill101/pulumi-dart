// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getOdbNetwork.
class GetOdbNetworkResult {
  final String? createTime;
  final String? deletionPolicy;
  final bool? deletionProtection;
  final Map<String, String>? effectiveLabels;
  final String? entitlementId;
  final String? gcpOracleZone;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final Map<String, String>? labels;
  final String? location;
  final String? name;
  final String? network;
  final String? odbNetworkId;
  final String? project;
  final Map<String, String>? pulumiLabels;
  final String? state;

  /// Creates a new [GetOdbNetworkResult].
  /// [createTime] Optional.
  /// [deletionPolicy] Optional.
  /// [deletionProtection] Optional.
  /// [effectiveLabels] Optional.
  /// [entitlementId] Optional.
  /// [gcpOracleZone] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [labels] Optional.
  /// [location] Optional.
  /// [name] Optional.
  /// [network] Optional.
  /// [odbNetworkId] Optional.
  /// [project] Optional.
  /// [pulumiLabels] Optional.
  /// [state] Optional.
  const GetOdbNetworkResult({
    this.createTime,
    this.deletionPolicy,
    this.deletionProtection,
    this.effectiveLabels,
    this.entitlementId,
    this.gcpOracleZone,
    this.id,
    this.labels,
    this.location,
    this.name,
    this.network,
    this.odbNetworkId,
    this.project,
    this.pulumiLabels,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'deletionPolicy': ?deletionPolicy,
      'deletionProtection': ?deletionProtection,
      'effectiveLabels': ?effectiveLabels,
      'entitlementId': ?entitlementId,
      'gcpOracleZone': ?gcpOracleZone,
      'id': ?id,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'network': ?network,
      'odbNetworkId': ?odbNetworkId,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'state': ?state,
    };
  }

  factory GetOdbNetworkResult.fromMap(Map<String, dynamic> map) {
    return GetOdbNetworkResult(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deletionProtection: (() { final guardedValue = map['deletionProtection']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      entitlementId: (() { final guardedValue = map['entitlementId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      gcpOracleZone: (() { final guardedValue = map['gcpOracleZone']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      network: (() { final guardedValue = map['network']; if (guardedValue == null) return null; return guardedValue as String; })(),
      odbNetworkId: (() { final guardedValue = map['odbNetworkId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
