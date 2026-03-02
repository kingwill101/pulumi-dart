// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_partition_names.dart';

class EnergyServiceProperties {
  final pulumi.Input<String>? authAppId;
  final pulumi.Input<List<DataPartitionNames>>? dataPartitionNames;

  /// Creates a new [EnergyServiceProperties].
  /// [authAppId] Optional.
  /// [dataPartitionNames] Optional.
  EnergyServiceProperties({
    this.authAppId,
    this.dataPartitionNames,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authAppId': ?authAppId,
      'dataPartitionNames': ?pulumi.Input.mapOptionalInputValue<List<DataPartitionNames>, List<Map<String, dynamic>>>(dataPartitionNames, (value) => pulumi.Input.encodeList<DataPartitionNames, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory EnergyServiceProperties.fromMap(Map<String, dynamic> map) {
    return EnergyServiceProperties(
      authAppId: map['authAppId'] == null ? null : (map['authAppId']! as String).input(),
      dataPartitionNames: map['dataPartitionNames'] == null ? null : (pulumi.Input.decodeList<DataPartitionNames>(map['dataPartitionNames']!, (value) => DataPartitionNames.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

