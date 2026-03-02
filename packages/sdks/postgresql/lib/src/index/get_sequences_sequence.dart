// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetSequencesSequence {
  /// The sequence's data type as defined in ``information_schema.sequences``.
  final pulumi.Input<String> dataType;
  /// The sequence name.
  final pulumi.Input<String> objectName;
  /// The parent schema.
  final pulumi.Input<String> schemaName;

  /// Creates a new [GetSequencesSequence].
  /// [dataType] The sequence's data type as defined in ``information_schema.sequences``.
  /// [objectName] The sequence name.
  /// [schemaName] The parent schema.
  GetSequencesSequence({
    required this.dataType,
    required this.objectName,
    required this.schemaName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataType': dataType,
      'objectName': objectName,
      'schemaName': schemaName,
    };
  }

  factory GetSequencesSequence.fromMap(Map<String, dynamic> map) {
    return GetSequencesSequence(
      dataType: (map['dataType'] as String).input(),
      objectName: (map['objectName'] as String).input(),
      schemaName: (map['schemaName'] as String).input(),
    );
  }
}

