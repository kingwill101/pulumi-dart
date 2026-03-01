// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_partition_names.dart';

class EnergyServiceProperties {
  final String? authAppId;
  final List<DataPartitionNames>? dataPartitionNames;

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
      'dataPartitionNames': ?dataPartitionNames == null ? null : pulumi.Input.encodeList<DataPartitionNames, Map<String, dynamic>>(dataPartitionNames!, (value) => value.toMap()),
    };
  }

  factory EnergyServiceProperties.fromMap(Map<String, dynamic> map) {
    return EnergyServiceProperties(
      authAppId: map['authAppId'] == null ? null : map['authAppId'] as String,
      dataPartitionNames: map['dataPartitionNames'] == null ? null : pulumi.Input.decodeList<DataPartitionNames>(map['dataPartitionNames'], (value) => DataPartitionNames.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

