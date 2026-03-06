// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'appliance_resource_details_response.dart';
import 'data_store_utilization_details_response.dart';

/// Appliance details of the migration item.
class ApplianceMonitoringDetailsResponse {
  /// The appliance CPU details.
  final pulumi.Input<ApplianceResourceDetailsResponse> cpuDetails;
  /// The appliance datastore snapshot details.
  final pulumi.Input<List<DataStoreUtilizationDetailsResponse>> datastoreSnapshot;
  /// The disk replication details.
  final pulumi.Input<ApplianceResourceDetailsResponse> disksReplicationDetails;
  /// The ESXi NFC buffer details.
  final pulumi.Input<ApplianceResourceDetailsResponse> esxiNfcBuffer;
  /// The appliance network bandwidth details.
  final pulumi.Input<ApplianceResourceDetailsResponse> networkBandwidth;
  /// The appliance RAM details.
  final pulumi.Input<ApplianceResourceDetailsResponse> ramDetails;

  /// Creates a new [ApplianceMonitoringDetailsResponse].
  /// [cpuDetails] The appliance CPU details.
  /// [datastoreSnapshot] The appliance datastore snapshot details.
  /// [disksReplicationDetails] The disk replication details.
  /// [esxiNfcBuffer] The ESXi NFC buffer details.
  /// [networkBandwidth] The appliance network bandwidth details.
  /// [ramDetails] The appliance RAM details.
  const ApplianceMonitoringDetailsResponse({
    required this.cpuDetails,
    required this.datastoreSnapshot,
    required this.disksReplicationDetails,
    required this.esxiNfcBuffer,
    required this.networkBandwidth,
    required this.ramDetails,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpuDetails': pulumi.Input.mapInputValue<ApplianceResourceDetailsResponse, Map<String, dynamic>>(cpuDetails, (value) => value.toMap()),
      'datastoreSnapshot': pulumi.Input.mapInputValue<List<DataStoreUtilizationDetailsResponse>, List<Map<String, dynamic>>>(datastoreSnapshot, (value) => pulumi.Input.encodeList<DataStoreUtilizationDetailsResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'disksReplicationDetails': pulumi.Input.mapInputValue<ApplianceResourceDetailsResponse, Map<String, dynamic>>(disksReplicationDetails, (value) => value.toMap()),
      'esxiNfcBuffer': pulumi.Input.mapInputValue<ApplianceResourceDetailsResponse, Map<String, dynamic>>(esxiNfcBuffer, (value) => value.toMap()),
      'networkBandwidth': pulumi.Input.mapInputValue<ApplianceResourceDetailsResponse, Map<String, dynamic>>(networkBandwidth, (value) => value.toMap()),
      'ramDetails': pulumi.Input.mapInputValue<ApplianceResourceDetailsResponse, Map<String, dynamic>>(ramDetails, (value) => value.toMap()),
    };
  }

  factory ApplianceMonitoringDetailsResponse.fromMap(Map<String, dynamic> map) {
    return ApplianceMonitoringDetailsResponse(
      cpuDetails: pulumi.Input.fromValue(ApplianceResourceDetailsResponse.fromMap((map['cpuDetails']! as Map).cast<String, dynamic>())),
      datastoreSnapshot: pulumi.Input.fromValue(pulumi.Input.decodeList<DataStoreUtilizationDetailsResponse>(map['datastoreSnapshot']!, (value) => DataStoreUtilizationDetailsResponse.fromMap((value as Map).cast<String, dynamic>()))),
      disksReplicationDetails: pulumi.Input.fromValue(ApplianceResourceDetailsResponse.fromMap((map['disksReplicationDetails']! as Map).cast<String, dynamic>())),
      esxiNfcBuffer: pulumi.Input.fromValue(ApplianceResourceDetailsResponse.fromMap((map['esxiNfcBuffer']! as Map).cast<String, dynamic>())),
      networkBandwidth: pulumi.Input.fromValue(ApplianceResourceDetailsResponse.fromMap((map['networkBandwidth']! as Map).cast<String, dynamic>())),
      ramDetails: pulumi.Input.fromValue(ApplianceResourceDetailsResponse.fromMap((map['ramDetails']! as Map).cast<String, dynamic>())),
    );
  }
}

