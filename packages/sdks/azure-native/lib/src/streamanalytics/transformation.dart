// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A transformation object, containing all information associated with the named transformation. All transformations are contained under a streaming job.
class Transformation {
  /// Resource name
  final pulumi.Input<String>? name;

  /// Specifies the query that will be run in the streaming job. You can learn more about the Stream Analytics Query Language (SAQL) here: https://msdn.microsoft.com/library/azure/dn834998 . Required on PUT (CreateOrReplace) requests.
  final pulumi.Input<String>? query;

  /// Specifies the number of streaming units that the streaming job uses.
  final pulumi.Input<int>? streamingUnits;

  /// Specifies the valid streaming units a streaming job can scale to.
  final pulumi.Input<List<int>>? validStreamingUnits;

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
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      query: (() {
        final guardedValue = map['query'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      streamingUnits: (() {
        final guardedValue = map['streamingUnits'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      validStreamingUnits: (() {
        final guardedValue = map['validStreamingUnits'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<int>());
      })(),
    );
  }
}
