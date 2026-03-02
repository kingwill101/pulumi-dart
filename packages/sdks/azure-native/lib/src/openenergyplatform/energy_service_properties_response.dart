// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_partition_names_response.dart';

class EnergyServicePropertiesResponse {
  final pulumi.Input<String>? authAppId;
  final pulumi.Input<List<DataPartitionNamesResponse>>? dataPartitionNames;
  final pulumi.Input<String> dnsName;
  final pulumi.Input<String> provisioningState;

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
      'dataPartitionNames': ?pulumi.Input.mapOptionalInputValue<List<DataPartitionNamesResponse>, List<Map<String, dynamic>>>(dataPartitionNames, (value) => pulumi.Input.encodeList<DataPartitionNamesResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dnsName': dnsName,
      'provisioningState': provisioningState,
    };
  }

  factory EnergyServicePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return EnergyServicePropertiesResponse(
      authAppId: map['authAppId'] == null ? null : (map['authAppId'] as String).input(),
      dataPartitionNames: map['dataPartitionNames'] == null ? null : (pulumi.Input.decodeList<DataPartitionNamesResponse>(map['dataPartitionNames'], (value) => DataPartitionNamesResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      dnsName: (map['dnsName'] as String).input(),
      provisioningState: (map['provisioningState'] as String).input(),
    );
  }
}

