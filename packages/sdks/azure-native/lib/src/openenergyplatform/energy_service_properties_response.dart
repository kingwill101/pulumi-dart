// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_partition_names_response.dart';

class EnergyServicePropertiesResponse {
  final String? authAppId;
  final List<DataPartitionNamesResponse>? dataPartitionNames;
  final String dnsName;
  final String provisioningState;

  /// Creates a new [EnergyServicePropertiesResponse].
  /// [authAppId] Optional.
  /// [dataPartitionNames] Optional.
  /// [dnsName] Required.
  /// [provisioningState] Required.
  EnergyServicePropertiesResponse({
    this.authAppId,
    this.dataPartitionNames,
    required this.dnsName,
    required this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authAppId': ?authAppId,
      'dataPartitionNames': ?dataPartitionNames == null ? null : pulumi.Input.encodeList<DataPartitionNamesResponse, Map<String, dynamic>>(dataPartitionNames!, (value) => value.toMap()),
      'dnsName': dnsName,
      'provisioningState': provisioningState,
    };
  }

  factory EnergyServicePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return EnergyServicePropertiesResponse(
      authAppId: map['authAppId'] == null ? null : map['authAppId'] as String,
      dataPartitionNames: map['dataPartitionNames'] == null ? null : pulumi.Input.decodeList<DataPartitionNamesResponse>(map['dataPartitionNames'], (value) => DataPartitionNamesResponse.fromMap((value as Map).cast<String, dynamic>())),
      dnsName: map['dnsName'] as String,
      provisioningState: map['provisioningState'] as String,
    );
  }
}

