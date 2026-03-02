// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// RelationshipOccurrence represents an SPDX Relationship section: https://spdx.github.io/spdx-spec/7-relationships-between-SPDX-elements/
class RelationshipOccurrence {
  /// A place for the SPDX file creator to record any general comments about the relationship
  final pulumi.Input<String>? comment;
  /// Also referred to as SPDXRef-A The source SPDX element (file, package, etc)
  final pulumi.Input<String>? source;
  /// Also referred to as SPDXRef-B The target SPDC element (file, package, etc) In cases where there are "known unknowns", the use of the keyword NOASSERTION can be used The keywords NONE can be used to indicate that an SPDX element (package/file/snippet) has no other elements connected by some relationship to it
  final pulumi.Input<String>? target;

  /// Creates a new [RelationshipOccurrence].
  /// [comment] A place for the SPDX file creator to record any general comments about the relationship
  /// [source] Also referred to as SPDXRef-A The source SPDX element (file, package, etc)
  /// [target] Also referred to as SPDXRef-B The target SPDC element (file, package, etc) In cases where there are "known unknowns", the use of the keyword NOASSERTION can be used The keywords NONE can be used to indicate that an SPDX element (package/file/snippet) has no other elements connected by some relationship to it
  RelationshipOccurrence({
    this.comment,
    this.source,
    this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comment': ?comment,
      'source': ?source,
      'target': ?target,
    };
  }

  factory RelationshipOccurrence.fromMap(Map<String, dynamic> map) {
    return RelationshipOccurrence(
      comment: map['comment'] == null ? null : (map['comment'] as String).input(),
      source: map['source'] == null ? null : (map['source'] as String).input(),
      target: map['target'] == null ? null : (map['target'] as String).input(),
    );
  }
}

