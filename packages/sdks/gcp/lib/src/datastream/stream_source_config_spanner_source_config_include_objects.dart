// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stream_source_config_spanner_source_config_include_objects_schema.dart';

class StreamSourceConfigSpannerSourceConfigIncludeObjects {
  /// Spanner schemas in the database
  /// Structure is documented below.
  final pulumi.Input<
    List<StreamSourceConfigSpannerSourceConfigIncludeObjectsSchema>
  >
  schemas;

  /// Creates a new [StreamSourceConfigSpannerSourceConfigIncludeObjects].
  /// [schemas] Spanner schemas in the database
  StreamSourceConfigSpannerSourceConfigIncludeObjects({required this.schemas});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'schemas':
          pulumi.Input.mapInputValue<
            List<StreamSourceConfigSpannerSourceConfigIncludeObjectsSchema>,
            List<Map<String, dynamic>>
          >(
            schemas,
            (value) =>
                pulumi.Input.encodeList<
                  StreamSourceConfigSpannerSourceConfigIncludeObjectsSchema,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory StreamSourceConfigSpannerSourceConfigIncludeObjects.fromMap(
    Map<String, dynamic> map,
  ) {
    return StreamSourceConfigSpannerSourceConfigIncludeObjects(
      schemas: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          StreamSourceConfigSpannerSourceConfigIncludeObjectsSchema
        >(
          map['schemas']!,
          (value) =>
              StreamSourceConfigSpannerSourceConfigIncludeObjectsSchema.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
        ),
      ),
    );
  }
}
