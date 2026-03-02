// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// RelationshipOccurrence represents an SPDX Relationship section: https://spdx.github.io/spdx-spec/7-relationships-between-SPDX-elements/
class RelationshipOccurrenceResponse {
  /// A place for the SPDX file creator to record any general comments about the relationship
  final pulumi.Input<String> comment;
  /// Also referred to as SPDXRef-A The source SPDX element (file, package, etc)
  final pulumi.Input<String> source;
  /// Also referred to as SPDXRef-B The target SPDC element (file, package, etc) In cases where there are "known unknowns", the use of the keyword NOASSERTION can be used The keywords NONE can be used to indicate that an SPDX element (package/file/snippet) has no other elements connected by some relationship to it
  final pulumi.Input<String> target;
  /// The type of relationship between the source and target SPDX elements
  final pulumi.Input<String> type;

  /// Creates a new [RelationshipOccurrenceResponse].
  /// [comment] A place for the SPDX file creator to record any general comments about the relationship
  /// [source] Also referred to as SPDXRef-A The source SPDX element (file, package, etc)
  /// [target] Also referred to as SPDXRef-B The target SPDC element (file, package, etc) In cases where there are "known unknowns", the use of the keyword NOASSERTION can be used The keywords NONE can be used to indicate that an SPDX element (package/file/snippet) has no other elements connected by some relationship to it
  /// [type] The type of relationship between the source and target SPDX elements
  RelationshipOccurrenceResponse({
    required this.comment,
    required this.source,
    required this.target,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comment': comment,
      'source': source,
      'target': target,
      'type': type,
    };
  }

  factory RelationshipOccurrenceResponse.fromMap(Map<String, dynamic> map) {
    return RelationshipOccurrenceResponse(
      comment: (map['comment'] as String).input(),
      source: (map['source'] as String).input(),
      target: (map['target'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

