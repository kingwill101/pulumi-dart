// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_feature_group_big_query_big_query_source.dart';

class AiFeatureGroupBigQuery {
  /// The BigQuery source URI that points to either a BigQuery Table or View.
  /// Structure is documented below.
  final pulumi.Input<AiFeatureGroupBigQueryBigQuerySource> bigQuerySource;

  /// Columns to construct entityId / row keys. If not provided defaults to entityId.
  final pulumi.Input<List<String>>? entityIdColumns;

  /// Creates a new [AiFeatureGroupBigQuery].
  /// [bigQuerySource] The BigQuery source URI that points to either a BigQuery Table or View.
  /// [entityIdColumns] Columns to construct entityId / row keys. If not provided defaults to entityId.
  AiFeatureGroupBigQuery({required this.bigQuerySource, this.entityIdColumns});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bigQuerySource':
          pulumi.Input.mapInputValue<
            AiFeatureGroupBigQueryBigQuerySource,
            Map<String, dynamic>
          >(bigQuerySource, (value) => value.toMap()),
      'entityIdColumns': ?entityIdColumns,
    };
  }

  factory AiFeatureGroupBigQuery.fromMap(Map<String, dynamic> map) {
    return AiFeatureGroupBigQuery(
      bigQuerySource: pulumi.Input.fromValue(
        AiFeatureGroupBigQueryBigQuerySource.fromMap(
          (map['bigQuerySource']! as Map).cast<String, dynamic>(),
        ),
      ),
      entityIdColumns: (() {
        final guardedValue = map['entityIdColumns'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
