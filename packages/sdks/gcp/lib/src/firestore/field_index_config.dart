// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'field_index_config_index.dart';

class FieldIndexConfig {
  /// The indexes to configure on the field. Order or array contains must be specified.
  /// Structure is documented below.
  final pulumi.Input<List<FieldIndexConfigIndex>>? indexes;

  /// Creates a new [FieldIndexConfig].
  /// [indexes] The indexes to configure on the field. Order or array contains must be specified.
  FieldIndexConfig({
    this.indexes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'indexes': ?pulumi.Input.mapOptionalInputValue<List<FieldIndexConfigIndex>, List<Map<String, dynamic>>>(indexes, (value) => pulumi.Input.encodeList<FieldIndexConfigIndex, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory FieldIndexConfig.fromMap(Map<String, dynamic> map) {
    return FieldIndexConfig(
      indexes: map['indexes'] == null ? null : (pulumi.Input.decodeList<FieldIndexConfigIndex>(map['indexes'], (value) => FieldIndexConfigIndex.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

