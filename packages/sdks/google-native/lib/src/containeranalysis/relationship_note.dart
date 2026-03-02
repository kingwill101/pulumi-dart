// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'relationship_note_type.dart';

/// RelationshipNote represents an SPDX Relationship section: https://spdx.github.io/spdx-spec/7-relationships-between-SPDX-elements/
class RelationshipNote {
  /// The type of relationship between the source and target SPDX elements
  final pulumi.Input<RelationshipNoteType>? type;

  /// Creates a new [RelationshipNote].
  /// [type] The type of relationship between the source and target SPDX elements
  RelationshipNote({
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?pulumi.Input.mapOptionalInputValue<RelationshipNoteType, String>(type, (value) => value.value),
    };
  }

  factory RelationshipNote.fromMap(Map<String, dynamic> map) {
    return RelationshipNote(
      type: map['type'] == null ? null : (RelationshipNoteType.fromValue(map['type'] as String)).input(),
    );
  }
}

