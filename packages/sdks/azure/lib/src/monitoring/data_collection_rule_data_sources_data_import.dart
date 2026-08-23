// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_collection_rule_data_sources_data_import_event_hub_data_source.dart';

class DataCollectionRuleDataSourcesDataImport {
  /// An `eventHubDataSource` block as defined below.
  final pulumi.Input<List<DataCollectionRuleDataSourcesDataImportEventHubDataSource>> eventHubDataSources;

  /// Creates a new [DataCollectionRuleDataSourcesDataImport].
  /// [eventHubDataSources] An `eventHubDataSource` block as defined below.
  const DataCollectionRuleDataSourcesDataImport({
    required this.eventHubDataSources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventHubDataSources': pulumi.Input.mapInputValue<List<DataCollectionRuleDataSourcesDataImportEventHubDataSource>, List<Map<String, dynamic>>>(eventHubDataSources, (value) => pulumi.Input.encodeList<DataCollectionRuleDataSourcesDataImportEventHubDataSource, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DataCollectionRuleDataSourcesDataImport.fromMap(Map<String, dynamic> map) {
    return DataCollectionRuleDataSourcesDataImport(
      eventHubDataSources: pulumi.Input.fromValue(pulumi.Input.decodeList<DataCollectionRuleDataSourcesDataImportEventHubDataSource>(map['eventHubDataSources']!, (value) => DataCollectionRuleDataSourcesDataImportEventHubDataSource.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
