// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'appliance_resource_details_response.dart';
import 'data_store_utilization_details_response.dart';

/// Appliance details of the migration item.
class ApplianceMonitoringDetailsResponse {
  /// The appliance CPU details.
  final ApplianceResourceDetailsResponse cpuDetails;
  /// The appliance datastore snapshot details.
  final List<DataStoreUtilizationDetailsResponse> datastoreSnapshot;
  /// The disk replication details.
  final ApplianceResourceDetailsResponse disksReplicationDetails;
  /// The ESXi NFC buffer details.
  final ApplianceResourceDetailsResponse esxiNfcBuffer;
  /// The appliance network bandwidth details.
  final ApplianceResourceDetailsResponse networkBandwidth;
  /// The appliance RAM details.
  final ApplianceResourceDetailsResponse ramDetails;

  /// Creates a new [ApplianceMonitoringDetailsResponse].
  /// [cpuDetails] The appliance CPU details.
  /// [datastoreSnapshot] The appliance datastore snapshot details.
  /// [disksReplicationDetails] The disk replication details.
  /// [esxiNfcBuffer] The ESXi NFC buffer details.
  /// [networkBandwidth] The appliance network bandwidth details.
  /// [ramDetails] The appliance RAM details.
  ApplianceMonitoringDetailsResponse({
    required this.cpuDetails,
    required this.datastoreSnapshot,
    required this.disksReplicationDetails,
    required this.esxiNfcBuffer,
    required this.networkBandwidth,
    required this.ramDetails,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpuDetails': cpuDetails.toMap(),
      'datastoreSnapshot': pulumi.Input.encodeList<DataStoreUtilizationDetailsResponse, Map<String, dynamic>>(datastoreSnapshot, (value) => value.toMap()),
      'disksReplicationDetails': disksReplicationDetails.toMap(),
      'esxiNfcBuffer': esxiNfcBuffer.toMap(),
      'networkBandwidth': networkBandwidth.toMap(),
      'ramDetails': ramDetails.toMap(),
    };
  }

  factory ApplianceMonitoringDetailsResponse.fromMap(Map<String, dynamic> map) {
    return ApplianceMonitoringDetailsResponse(
      cpuDetails: ApplianceResourceDetailsResponse.fromMap((map['cpuDetails'] as Map).cast<String, dynamic>()),
      datastoreSnapshot: pulumi.Input.decodeList<DataStoreUtilizationDetailsResponse>(map['datastoreSnapshot'], (value) => DataStoreUtilizationDetailsResponse.fromMap((value as Map).cast<String, dynamic>())),
      disksReplicationDetails: ApplianceResourceDetailsResponse.fromMap((map['disksReplicationDetails'] as Map).cast<String, dynamic>()),
      esxiNfcBuffer: ApplianceResourceDetailsResponse.fromMap((map['esxiNfcBuffer'] as Map).cast<String, dynamic>()),
      networkBandwidth: ApplianceResourceDetailsResponse.fromMap((map['networkBandwidth'] as Map).cast<String, dynamic>()),
      ramDetails: ApplianceResourceDetailsResponse.fromMap((map['ramDetails'] as Map).cast<String, dynamic>()),
    );
  }
}

