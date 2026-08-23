// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getOdbNetwork.
class GetOdbNetworkResult {
  final String createTime;
  final String deletionPolicy;
  final bool deletionProtection;
  final Map<String, String> effectiveLabels;
  final String entitlementId;
  final String gcpOracleZone;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final Map<String, String> labels;
  final String location;
  final String name;
  final String network;
  final String odbNetworkId;
  final String? project;
  final Map<String, String> pulumiLabels;
  final String state;

  /// Creates a new [GetOdbNetworkResult].
  /// [createTime] Required.
  /// [deletionPolicy] Required.
  /// [deletionProtection] Required.
  /// [effectiveLabels] Required.
  /// [entitlementId] Required.
  /// [gcpOracleZone] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [labels] Required.
  /// [location] Required.
  /// [name] Required.
  /// [network] Required.
  /// [odbNetworkId] Required.
  /// [project] Optional.
  /// [pulumiLabels] Required.
  /// [state] Required.
  const GetOdbNetworkResult({
    required this.createTime,
    required this.deletionPolicy,
    required this.deletionProtection,
    required this.effectiveLabels,
    required this.entitlementId,
    required this.gcpOracleZone,
    required this.id,
    required this.labels,
    required this.location,
    required this.name,
    required this.network,
    required this.odbNetworkId,
    this.project,
    required this.pulumiLabels,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'deletionPolicy': deletionPolicy,
      'deletionProtection': deletionProtection,
      'effectiveLabels': effectiveLabels,
      'entitlementId': entitlementId,
      'gcpOracleZone': gcpOracleZone,
      'id': id,
      'labels': labels,
      'location': location,
      'name': name,
      'network': network,
      'odbNetworkId': odbNetworkId,
      'project': ?project,
      'pulumiLabels': pulumiLabels,
      'state': state,
    };
  }

  factory GetOdbNetworkResult.fromMap(Map<String, dynamic> map) {
    return GetOdbNetworkResult(
      createTime: map['createTime'] as String,
      deletionPolicy: map['deletionPolicy'] as String,
      deletionProtection: map['deletionProtection'] as bool,
      effectiveLabels: (map['effectiveLabels'] as Map).cast<String, String>(),
      entitlementId: map['entitlementId'] as String,
      gcpOracleZone: map['gcpOracleZone'] as String,
      id: map['id'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      location: map['location'] as String,
      name: map['name'] as String,
      network: map['network'] as String,
      odbNetworkId: map['odbNetworkId'] as String,
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pulumiLabels: (map['pulumiLabels'] as Map).cast<String, String>(),
      state: map['state'] as String,
    );
  }
}
