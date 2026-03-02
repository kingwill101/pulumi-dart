// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiFeatureOnlineStoreFeatureviewBigQuerySource {
  /// Columns to construct entityId / row keys. Start by supporting 1 only.
  final pulumi.Input<List<String>> entityIdColumns;
  /// The BigQuery view URI that will be materialized on each sync trigger based on FeatureView.SyncConfig.
  final pulumi.Input<String> uri;

  /// Creates a new [AiFeatureOnlineStoreFeatureviewBigQuerySource].
  /// [entityIdColumns] Columns to construct entityId / row keys. Start by supporting 1 only.
  /// [uri] The BigQuery view URI that will be materialized on each sync trigger based on FeatureView.SyncConfig.
  AiFeatureOnlineStoreFeatureviewBigQuerySource({
    required this.entityIdColumns,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entityIdColumns': entityIdColumns,
      'uri': uri,
    };
  }

  factory AiFeatureOnlineStoreFeatureviewBigQuerySource.fromMap(Map<String, dynamic> map) {
    return AiFeatureOnlineStoreFeatureviewBigQuerySource(
      entityIdColumns: ((map['entityIdColumns'] as List).cast<String>()).input(),
      uri: (map['uri'] as String).input(),
    );
  }
}

