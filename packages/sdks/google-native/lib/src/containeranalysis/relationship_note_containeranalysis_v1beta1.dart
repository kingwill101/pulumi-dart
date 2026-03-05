// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'relationship_note_type_containeranalysis_v1beta1.dart';

/// RelationshipNote represents an SPDX Relationship section: https://spdx.github.io/spdx-spec/7-relationships-between-SPDX-elements/
class RelationshipNoteContaineranalysisV1beta1 {
  /// The type of relationship between the source and target SPDX elements
  final pulumi.Input<RelationshipNoteTypeContaineranalysisV1beta1>? type;

  /// Creates a new [RelationshipNoteContaineranalysisV1beta1].
  /// [type] The type of relationship between the source and target SPDX elements
  RelationshipNoteContaineranalysisV1beta1({
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?pulumi.Input.mapOptionalInputValue<RelationshipNoteTypeContaineranalysisV1beta1, String>(type, (value) => value.wireValue),
    };
  }

  factory RelationshipNoteContaineranalysisV1beta1.fromMap(Map<String, dynamic> map) {
    return RelationshipNoteContaineranalysisV1beta1(
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RelationshipNoteTypeContaineranalysisV1beta1.fromValue(guardedValue as String)); })(),
    );
  }
}

