// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'avro_serialization.dart';
import 'azure_data_lake_store_output_data_source.dart';

/// An output object, containing all information associated with the named output. All outputs are contained under a streaming job.
class OutputType {
  /// Describes the data source that output will be written to. Required on PUT (CreateOrReplace) requests.
  final pulumi.Input<AzureDataLakeStoreOutputDataSource>? datasource;
  /// Resource name
  final pulumi.Input<String>? name;
  /// Describes how data from an input is serialized or how data is serialized when written to an output. Required on PUT (CreateOrReplace) requests.
  final pulumi.Input<AvroSerialization>? serialization;
  /// The size window to constrain a Stream Analytics output to.
  final pulumi.Input<int>? sizeWindow;
  /// The time frame for filtering Stream Analytics job outputs.
  final pulumi.Input<String>? timeWindow;

  /// Creates a new [OutputType].
  /// [datasource] Describes the data source that output will be written to. Required on PUT (CreateOrReplace) requests.
  /// [name] Resource name
  /// [serialization] Describes how data from an input is serialized or how data is serialized when written to an output. Required on PUT (CreateOrReplace) requests.
  /// [sizeWindow] The size window to constrain a Stream Analytics output to.
  /// [timeWindow] The time frame for filtering Stream Analytics job outputs.
  OutputType({
    this.datasource,
    this.name,
    this.serialization,
    this.sizeWindow,
    this.timeWindow,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasource': ?pulumi.Input.mapOptionalInputValue<AzureDataLakeStoreOutputDataSource, Map<String, dynamic>>(datasource, (value) => value.toMap()),
      'name': ?name,
      'serialization': ?pulumi.Input.mapOptionalInputValue<AvroSerialization, Map<String, dynamic>>(serialization, (value) => value.toMap()),
      'sizeWindow': ?sizeWindow,
      'timeWindow': ?timeWindow,
    };
  }

  factory OutputType.fromMap(Map<String, dynamic> map) {
    return OutputType(
      datasource: map['datasource'] == null ? null : (AzureDataLakeStoreOutputDataSource.fromMap((map['datasource']! as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      serialization: map['serialization'] == null ? null : (AvroSerialization.fromMap((map['serialization']! as Map).cast<String, dynamic>())).input(),
      sizeWindow: map['sizeWindow'] == null ? null : (map['sizeWindow']! as int).input(),
      timeWindow: map['timeWindow'] == null ? null : (map['timeWindow']! as String).input(),
    );
  }
}

