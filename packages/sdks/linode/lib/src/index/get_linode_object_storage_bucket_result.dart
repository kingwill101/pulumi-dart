// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getLinodeObjectStorageBucket.
class GetLinodeObjectStorageBucketResult {
  final String cluster;
  final String created;
  final String endpointType;
  final String hostname;
  final String id;
  final String label;
  final int objects;
  final String region;
  final String s3Endpoint;
  final int size;

  /// Creates a new [GetLinodeObjectStorageBucketResult].
  /// [cluster] Required.
  /// [created] Required.
  /// [endpointType] Required.
  /// [hostname] Required.
  /// [id] Required.
  /// [label] Required.
  /// [objects] Required.
  /// [region] Required.
  /// [s3Endpoint] Required.
  /// [size] Required.
  const GetLinodeObjectStorageBucketResult({
    required this.cluster,
    required this.created,
    required this.endpointType,
    required this.hostname,
    required this.id,
    required this.label,
    required this.objects,
    required this.region,
    required this.s3Endpoint,
    required this.size,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cluster': cluster,
      'created': created,
      'endpointType': endpointType,
      'hostname': hostname,
      'id': id,
      'label': label,
      'objects': objects,
      'region': region,
      's3Endpoint': s3Endpoint,
      'size': size,
    };
  }

  factory GetLinodeObjectStorageBucketResult.fromMap(Map<String, dynamic> map) {
    return GetLinodeObjectStorageBucketResult(
      cluster: map['cluster'] as String,
      created: map['created'] as String,
      endpointType: map['endpointType'] as String,
      hostname: map['hostname'] as String,
      id: map['id'] as String,
      label: map['label'] as String,
      objects: map['objects'] as int,
      region: map['region'] as String,
      s3Endpoint: map['s3Endpoint'] as String,
      size: map['size'] as int,
    );
  }
}

