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
      'dataPartitionInfo': ?(() { final guardedValue = dataPartitionInfo; if (guardedValue == null) return null; return pulumi.Input.encodeList<DataPartitionPropertiesResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory ListEnergyServicePartitionsResult.fromMap(Map<String, dynamic> map) {
    return ListEnergyServicePartitionsResult(
      dataPartitionInfo: (() { final guardedValue = map['dataPartitionInfo']; if (guardedValue == null) return null; return pulumi.Input.decodeList<DataPartitionPropertiesResponse>(guardedValue, (value) => DataPartitionPropertiesResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}

