// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class IndexFieldSearchConfigTextSpecIndexSpec {
  /// Ways to index the text field value.
  final pulumi.Input<String?>? indexType;
  /// How to match the text field value.
  final pulumi.Input<String?>? matchType;

  /// Creates a new [IndexFieldSearchConfigTextSpecIndexSpec].
  /// [indexType] Ways to index the text field value.
  /// [matchType] How to match the text field value.
  const IndexFieldSearchConfigTextSpecIndexSpec({
    this.indexType,
    this.matchType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'indexType': ?indexType,
      'matchType': ?matchType,
    };
  }

  factory IndexFieldSearchConfigTextSpecIndexSpec.fromMap(Map<String, dynamic> map) {
    return IndexFieldSearchConfigTextSpecIndexSpec(
      indexType: (() { final guardedValue = map['indexType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      matchType: (() { final guardedValue = map['matchType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
