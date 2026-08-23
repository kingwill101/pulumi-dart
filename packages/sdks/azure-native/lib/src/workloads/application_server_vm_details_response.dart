// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'storage_information_response.dart';

/// The Application Server VM Details.
class ApplicationServerVmDetailsResponse {
  /// Storage details of all the Storage Accounts attached to the App Virtual Machine. For e.g. NFS on AFS Shared Storage.
  final pulumi.Input<List<StorageInformationResponse>> storageDetails;
  /// Defines the type of application server VM.
  final pulumi.Input<String> type;
  /// The virtual machine id.
  final pulumi.Input<String> virtualMachineId;

  /// Creates a new [ApplicationServerVmDetailsResponse].
  /// [storageDetails] Storage details of all the Storage Accounts attached to the App Virtual Machine. For e.g. NFS on AFS Shared Storage.
  /// [type] Defines the type of application server VM.
  /// [virtualMachineId] The virtual machine id.
  const ApplicationServerVmDetailsResponse({
    required this.storageDetails,
    required this.type,
    required this.virtualMachineId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'storageDetails': pulumi.Input.mapInputValue<List<StorageInformationResponse>, List<Map<String, dynamic>>>(storageDetails, (value) => pulumi.Input.encodeList<StorageInformationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'type': type,
      'virtualMachineId': virtualMachineId,
    };
  }

  factory ApplicationServerVmDetailsResponse.fromMap(Map<String, dynamic> map) {
    return ApplicationServerVmDetailsResponse(
      storageDetails: pulumi.Input.fromValue(pulumi.Input.decodeList<StorageInformationResponse>(map['storageDetails']!, (value) => StorageInformationResponse.fromMap((value as Map).cast<String, dynamic>()))),
      type: pulumi.Input.fromValue(map['type'] as String),
      virtualMachineId: pulumi.Input.fromValue(map['virtualMachineId'] as String),
    );
  }
}
