// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'index_field_search_config_text_spec_index_spec.dart';

class IndexFieldSearchConfigTextSpec {
  /// Specifications for how the field should be indexed. Repeated so that the field can be indexed in multiple ways.
  /// Structure is documented below.
  final pulumi.Input<List<IndexFieldSearchConfigTextSpecIndexSpec>> indexSpecs;

  /// Creates a new [IndexFieldSearchConfigTextSpec].
  /// [indexSpecs] Specifications for how the field should be indexed. Repeated so that the field can be indexed in multiple ways.
  const IndexFieldSearchConfigTextSpec({
    required this.indexSpecs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'indexSpecs': pulumi.Input.mapInputValue<List<IndexFieldSearchConfigTextSpecIndexSpec>, List<Map<String, dynamic>>>(indexSpecs, (value) => pulumi.Input.encodeList<IndexFieldSearchConfigTextSpecIndexSpec, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory IndexFieldSearchConfigTextSpec.fromMap(Map<String, dynamic> map) {
    return IndexFieldSearchConfigTextSpec(
      indexSpecs: pulumi.Input.fromValue(pulumi.Input.decodeList<IndexFieldSearchConfigTextSpecIndexSpec>(map['indexSpecs']!, (value) => IndexFieldSearchConfigTextSpecIndexSpec.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
