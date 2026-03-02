// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A transformation object, containing all information associated with the named transformation. All transformations are contained under a streaming job.
class TransformationResponse {
  /// The current entity tag for the transformation. This is an opaque string. You can use it to detect whether the resource has changed between requests. You can also use it in the If-Match or If-None-Match headers for write operations for optimistic concurrency.
  final pulumi.Input<String> etag;
  /// Resource Id
  final pulumi.Input<String> id;
  /// Resource name
  final pulumi.Input<String>? name;
  /// Specifies the query that will be run in the streaming job. You can learn more about the Stream Analytics Query Language (SAQL) here: https://msdn.microsoft.com/library/azure/dn834998 . Required on PUT (CreateOrReplace) requests.
  final pulumi.Input<String>? query;
  /// Specifies the number of streaming units that the streaming job uses.
  final pulumi.Input<int>? streamingUnits;
  /// Resource type
  final pulumi.Input<String> type;
  /// Specifies the valid streaming units a streaming job can scale to.
  final pulumi.Input<List<int>>? validStreamingUnits;

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
      etag: (map['etag'] as String).input(),
      id: (map['id'] as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      query: map['query'] == null ? null : (map['query']! as String).input(),
      streamingUnits: map['streamingUnits'] == null ? null : (map['streamingUnits']! as int).input(),
      type: (map['type'] as String).input(),
      validStreamingUnits: map['validStreamingUnits'] == null ? null : ((map['validStreamingUnits']! as List).cast<int>()).input(),
    );
  }
}

