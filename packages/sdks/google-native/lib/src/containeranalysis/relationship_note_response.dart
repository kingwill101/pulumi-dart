// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// RelationshipNote represents an SPDX Relationship section: https://spdx.github.io/spdx-spec/7-relationships-between-SPDX-elements/
class RelationshipNoteResponse {
  /// The type of relationship between the source and target SPDX elements
  final pulumi.Input<String> type;

  /// Creates a new [RelationshipNoteResponse].
  /// [type] The type of relationship between the source and target SPDX elements
  const RelationshipNoteResponse({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
    };
  }

  factory RelationshipNoteResponse.fromMap(Map<String, dynamic> map) {
    return RelationshipNoteResponse(
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
