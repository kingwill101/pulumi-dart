// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getAggregateV2.
class GetAggregateV2Result {
  /// List of Hypervisors contained in the Host Aggregate
  final List<String> hosts;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// Metadata of the Host Aggregate
  final Map<String, String> metadata;

  /// See Argument Reference above.
  final String name;

  /// See Argument Reference above.
  final String region;

  /// Availability zone of the Host Aggregate
  final String zone;

  /// Creates a new [GetAggregateV2Result].
  /// [hosts] List of Hypervisors contained in the Host Aggregate
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [metadata] Metadata of the Host Aggregate
  /// [name] See Argument Reference above.
  /// [region] See Argument Reference above.
  /// [zone] Availability zone of the Host Aggregate
  GetAggregateV2Result({
    required this.hosts,
    required this.id,
    required this.metadata,
    required this.name,
    required this.region,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hosts': hosts,
      'id': id,
      'metadata': metadata,
      'name': name,
      'region': region,
      'zone': zone,
    };
  }

  factory GetAggregateV2Result.fromMap(Map<String, dynamic> map) {
    return GetAggregateV2Result(
      hosts: (map['hosts'] as List).cast<String>(),
      id: map['id'] as String,
      metadata: (map['metadata'] as Map).cast<String, String>(),
      name: map['name'] as String,
      region: map['region'] as String,
      zone: map['zone'] as String,
    );
  }
}
