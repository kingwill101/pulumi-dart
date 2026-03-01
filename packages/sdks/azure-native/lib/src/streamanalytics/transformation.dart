// ignore_for_file: unused_element, unnecessary_cast


/// A transformation object, containing all information associated with the named transformation. All transformations are contained under a streaming job.
class Transformation {
  /// Resource name
  final String? name;
  /// Specifies the query that will be run in the streaming job. You can learn more about the Stream Analytics Query Language (SAQL) here: https://msdn.microsoft.com/library/azure/dn834998 . Required on PUT (CreateOrReplace) requests.
  final String? query;
  /// Specifies the number of streaming units that the streaming job uses.
  final int? streamingUnits;
  /// Specifies the valid streaming units a streaming job can scale to.
  final List<int>? validStreamingUnits;

  /// Creates a new [Transformation].
  /// [name] Resource name
  /// [query] Specifies the query that will be run in the streaming job. You can learn more about the Stream Analytics Query Language (SAQL) here: https://msdn.microsoft.com/library/azure/dn834998 . Required on PUT (CreateOrReplace) requests.
  /// [streamingUnits] Specifies the number of streaming units that the streaming job uses.
  /// [validStreamingUnits] Specifies the valid streaming units a streaming job can scale to.
  Transformation({
    this.name,
    this.query,
    this.streamingUnits,
    this.validStreamingUnits,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'query': ?query,
      'streamingUnits': ?streamingUnits,
      'validStreamingUnits': ?validStreamingUnits,
    };
  }

  factory Transformation.fromMap(Map<String, dynamic> map) {
    return Transformation(
      name: map['name'] == null ? null : map['name'] as String,
      query: map['query'] == null ? null : map['query'] as String,
      streamingUnits: map['streamingUnits'] == null ? null : map['streamingUnits'] as int,
      validStreamingUnits: map['validStreamingUnits'] == null ? null : (map['validStreamingUnits'] as List).cast<int>(),
    );
  }
}

