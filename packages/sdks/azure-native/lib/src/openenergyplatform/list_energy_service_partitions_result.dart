// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_partition_properties_response.dart';

/// Result data returned by listEnergyServicePartitions.
class ListEnergyServicePartitionsResult {
  /// List of data partitions along with their properties in a given OEP resource.
  final List<DataPartitionPropertiesResponse>? dataPartitionInfo;

  /// Creates a new [ListEnergyServicePartitionsResult].
  /// [dataPartitionInfo] List of data partitions along with their properties in a given OEP resource.
  ListEnergyServicePartitionsResult({
    this.dataPartitionInfo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataPartitionInfo': ?dataPartitionInfo == null ? null : pulumi.Input.encodeList<DataPartitionPropertiesResponse, Map<String, dynamic>>(dataPartitionInfo!, (value) => value.toMap()),
    };
  }

  factory ListEnergyServicePartitionsResult.fromMap(Map<String, dynamic> map) {
    return ListEnergyServicePartitionsResult(
      dataPartitionInfo: map['dataPartitionInfo'] == null ? null : pulumi.Input.decodeList<DataPartitionPropertiesResponse>(map['dataPartitionInfo'], (value) => DataPartitionPropertiesResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

