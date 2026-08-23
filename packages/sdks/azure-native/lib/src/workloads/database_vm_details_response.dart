// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'storage_information_response.dart';

/// Database VM details.
class DatabaseVmDetailsResponse {
  /// Defines the SAP Instance status.
  final pulumi.Input<String> status;
  /// Storage details of all the Storage Accounts attached to the Database Virtual Machine. For e.g. NFS on AFS Shared Storage.
  final pulumi.Input<List<StorageInformationResponse>> storageDetails;
  /// The virtual machine id.
  final pulumi.Input<String> virtualMachineId;

  /// Creates a new [DatabaseVmDetailsResponse].
  /// [status] Defines the SAP Instance status.
  /// [storageDetails] Storage details of all the Storage Accounts attached to the Database Virtual Machine. For e.g. NFS on AFS Shared Storage.
  /// [virtualMachineId] The virtual machine id.
  const DatabaseVmDetailsResponse({
    required this.status,
    required this.storageDetails,
    required this.virtualMachineId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'status': status,
      'storageDetails': pulumi.Input.mapInputValue<List<StorageInformationResponse>, List<Map<String, dynamic>>>(storageDetails, (value) => pulumi.Input.encodeList<StorageInformationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'virtualMachineId': virtualMachineId,
    };
  }

  factory DatabaseVmDetailsResponse.fromMap(Map<String, dynamic> map) {
    return DatabaseVmDetailsResponse(
      status: pulumi.Input.fromValue(map['status'] as String),
      storageDetails: pulumi.Input.fromValue(pulumi.Input.decodeList<StorageInformationResponse>(map['storageDetails']!, (value) => StorageInformationResponse.fromMap((value as Map).cast<String, dynamic>()))),
      virtualMachineId: pulumi.Input.fromValue(map['virtualMachineId'] as String),
    );
  }
}
