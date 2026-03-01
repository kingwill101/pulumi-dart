// ignore_for_file: unused_element, unnecessary_cast


/// A transformation object, containing all information associated with the named transformation. All transformations are contained under a streaming job.
class TransformationResponse {
  /// The current entity tag for the transformation. This is an opaque string. You can use it to detect whether the resource has changed between requests. You can also use it in the If-Match or If-None-Match headers for write operations for optimistic concurrency.
  final String etag;
  /// Resource Id
  final String id;
  /// Resource name
  final String? name;
  /// Specifies the query that will be run in the streaming job. You can learn more about the Stream Analytics Query Language (SAQL) here: https://msdn.microsoft.com/library/azure/dn834998 . Required on PUT (CreateOrReplace) requests.
  final String? query;
  /// Specifies the number of streaming units that the streaming job uses.
  final int? streamingUnits;
  /// Resource type
  final String type;
  /// Specifies the valid streaming units a streaming job can scale to.
  final List<int>? validStreamingUnits;

  /// Creates a new [TransformationResponse].
  /// [etag] The current entity tag for the transformation. This is an opaque string. You can use it to detect whether the resource has changed between requests. You can also use it in the If-Match or If-None-Match headers for write operations for optimistic concurrency.
  /// [id] Resource Id
  /// [name] Resource name
  /// [query] Specifies the query that will be run in the streaming job. You can learn more about the Stream Analytics Query Language (SAQL) here: https://msdn.microsoft.com/library/azure/dn834998 . Required on PUT (CreateOrReplace) requests.
  /// [streamingUnits] Specifies the number of streaming units that the streaming job uses.
  /// [type] Resource type
  /// [validStreamingUnits] Specifies the valid streaming units a streaming job can scale to.
  TransformationResponse({
    required this.etag,
    required this.id,
    this.name,
    this.query,
    this.streamingUnits,
    required this.type,
    this.validStreamingUnits,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'etag': etag,
      'id': id,
      'name': ?name,
      'query': ?query,
      'streamingUnits': ?streamingUnits,
      'type': type,
      'validStreamingUnits': ?validStreamingUnits,
    };
  }

  factory TransformationResponse.fromMap(Map<String, dynamic> map) {
    return TransformationResponse(
      etag: map['etag'] as String,
      id: map['id'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      query: map['query'] == null ? null : map['query'] as String,
      streamingUnits: map['streamingUnits'] == null ? null : map['streamingUnits'] as int,
      type: map['type'] as String,
      validStreamingUnits: map['validStreamingUnits'] == null ? null : (map['validStreamingUnits'] as List).cast<int>(),
    );
  }
}

