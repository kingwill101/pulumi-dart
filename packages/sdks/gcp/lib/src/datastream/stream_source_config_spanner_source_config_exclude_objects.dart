// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stream_source_config_spanner_source_config_exclude_objects_schema.dart';

class StreamSourceConfigSpannerSourceConfigExcludeObjects {
  /// Spanner schemas in the database
  /// Structure is documented below.
  final pulumi.Input<List<StreamSourceConfigSpannerSourceConfigExcludeObjectsSchema>> schemas;

  /// Creates a new [StreamSourceConfigSpannerSourceConfigExcludeObjects].
  /// [schemas] Spanner schemas in the database
  const StreamSourceConfigSpannerSourceConfigExcludeObjects({
    required this.schemas,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'schemas': pulumi.Input.mapInputValue<List<StreamSourceConfigSpannerSourceConfigExcludeObjectsSchema>, List<Map<String, dynamic>>>(schemas, (value) => pulumi.Input.encodeList<StreamSourceConfigSpannerSourceConfigExcludeObjectsSchema, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory StreamSourceConfigSpannerSourceConfigExcludeObjects.fromMap(Map<String, dynamic> map) {
    return StreamSourceConfigSpannerSourceConfigExcludeObjects(
      schemas: pulumi.Input.fromValue(pulumi.Input.decodeList<StreamSourceConfigSpannerSourceConfigExcludeObjectsSchema>(map['schemas']!, (value) => StreamSourceConfigSpannerSourceConfigExcludeObjectsSchema.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

