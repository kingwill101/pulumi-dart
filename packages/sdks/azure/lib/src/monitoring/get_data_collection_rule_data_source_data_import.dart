// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_data_collection_rule_data_source_data_import_event_hub_data_source.dart';

class GetDataCollectionRuleDataSourceDataImport {
  /// An `event_hub_data_source` block as defined below.
  final pulumi.Input<List<GetDataCollectionRuleDataSourceDataImportEventHubDataSource>> eventHubDataSources;

  /// Creates a new [GetDataCollectionRuleDataSourceDataImport].
  /// [eventHubDataSources] An `event_hub_data_source` block as defined below.
  const GetDataCollectionRuleDataSourceDataImport({
    required this.eventHubDataSources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventHubDataSources': pulumi.Input.mapInputValue<List<GetDataCollectionRuleDataSourceDataImportEventHubDataSource>, List<Map<String, dynamic>>>(eventHubDataSources, (value) => pulumi.Input.encodeList<GetDataCollectionRuleDataSourceDataImportEventHubDataSource, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetDataCollectionRuleDataSourceDataImport.fromMap(Map<String, dynamic> map) {
    return GetDataCollectionRuleDataSourceDataImport(
      eventHubDataSources: pulumi.Input.fromValue(pulumi.Input.decodeList<GetDataCollectionRuleDataSourceDataImportEventHubDataSource>(map['eventHubDataSources']!, (value) => GetDataCollectionRuleDataSourceDataImportEventHubDataSource.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

