// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDbServersDbServer {
  /// The list of [OCIDs](https://docs.oracle.com/en-us/iaas/Content/General/Concepts/identifiers.htm) of the Autonomous Virtual Machines associated with the DB Server.
  final pulumi.Input<List<String>> autonomousVirtualMachineDs;

  /// The list of [OCIDs](https://docs.oracle.com/en-us/iaas/Content/General/Concepts/identifiers.htm) of the Autonomous VM Clusters associated with the DB Server.
  final pulumi.Input<List<String>> autonomousVmClusterIds;

  /// The [OCID](https://docs.oracle.com/en-us/iaas/Content/General/Concepts/identifiers.htm) of the compartment.
  final pulumi.Input<String> compartmentId;

  /// The compute model of the Exadata Infrastructure.
  final pulumi.Input<String> computeModel;

  /// The number of CPU cores enabled on the DB Server.
  final pulumi.Input<int> cpuCoreCount;

  /// The [OCID](https://docs.oracle.com/en-us/iaas/Content/General/Concepts/identifiers.htm) of the Db nodes associated with the DB Server.
  final pulumi.Input<List<String>> dbNodeIds;

  /// The allocated local node storage in GBs on the DB Server.
  final pulumi.Input<int> dbNodeStorageSizeInGbs;

  /// The user-friendly name for the DB Server. The name does not need to be unique.
  final pulumi.Input<String> displayName;

  /// The [OCID](https://docs.oracle.com/en-us/iaas/Content/General/Concepts/identifiers.htm) of the Exadata infrastructure.
  final pulumi.Input<String> exadataInfrastructureId;

  /// Additional information about the current lifecycle state.
  final pulumi.Input<String> lifecycleDetails;

  /// The current state of the DB Server.
  final pulumi.Input<String> lifecycleState;

  /// The total number of CPU cores available.
  final pulumi.Input<int> maxCpuCount;

  /// The total local node storage available in GBs.
  final pulumi.Input<int> maxDbNodeStorageInGbs;

  /// The total memory available in GBs.
  final pulumi.Input<int> maxMemoryInGbs;

  /// The allocated memory in GBs on the DB Server.
  final pulumi.Input<int> memorySizeInGbs;

  /// The [OCID](https://docs.oracle.com/en-us/iaas/Content/General/Concepts/identifiers.htm) of the DB Server.
  final pulumi.Input<String> ocid;

  /// The shape of the DB Server. The shape determines the amount of CPU, storage, and memory resources available.
  final pulumi.Input<String> shape;

  /// The date and time that the DB Server was created.
  final pulumi.Input<String> timeCreated;

  /// The [OCID](https://docs.oracle.com/en-us/iaas/Content/General/Concepts/identifiers.htm) of the VM Clusters associated with the DB Server.
  final pulumi.Input<List<String>> vmClusterIds;

  /// Creates a new [GetDbServersDbServer].
  /// [autonomousVirtualMachineDs] The list of [OCIDs](https://docs.oracle.com/en-us/iaas/Content/General/Concepts/identifiers.htm) of the Autonomous Virtual Machines associated with the DB Server.
  /// [autonomousVmClusterIds] The list of [OCIDs](https://docs.oracle.com/en-us/iaas/Content/General/Concepts/identifiers.htm) of the Autonomous VM Clusters associated with the DB Server.
  /// [compartmentId] The [OCID](https://docs.oracle.com/en-us/iaas/Content/General/Concepts/identifiers.htm) of the compartment.
  /// [computeModel] The compute model of the Exadata Infrastructure.
  /// [cpuCoreCount] The number of CPU cores enabled on the DB Server.
  /// [dbNodeIds] The [OCID](https://docs.oracle.com/en-us/iaas/Content/General/Concepts/identifiers.htm) of the Db nodes associated with the DB Server.
  /// [dbNodeStorageSizeInGbs] The allocated local node storage in GBs on the DB Server.
  /// [displayName] The user-friendly name for the DB Server. The name does not need to be unique.
  /// [exadataInfrastructureId] The [OCID](https://docs.oracle.com/en-us/iaas/Content/General/Concepts/identifiers.htm) of the Exadata infrastructure.
  /// [lifecycleDetails] Additional information about the current lifecycle state.
  /// [lifecycleState] The current state of the DB Server.
  /// [maxCpuCount] The total number of CPU cores available.
  /// [maxDbNodeStorageInGbs] The total local node storage available in GBs.
  /// [maxMemoryInGbs] The total memory available in GBs.
  /// [memorySizeInGbs] The allocated memory in GBs on the DB Server.
  /// [ocid] The [OCID](https://docs.oracle.com/en-us/iaas/Content/General/Concepts/identifiers.htm) of the DB Server.
  /// [shape] The shape of the DB Server. The shape determines the amount of CPU, storage, and memory resources available.
  /// [timeCreated] The date and time that the DB Server was created.
  /// [vmClusterIds] The [OCID](https://docs.oracle.com/en-us/iaas/Content/General/Concepts/identifiers.htm) of the VM Clusters associated with the DB Server.
  GetDbServersDbServer({
    required this.autonomousVirtualMachineDs,
    required this.autonomousVmClusterIds,
    required this.compartmentId,
    required this.computeModel,
    required this.cpuCoreCount,
    required this.dbNodeIds,
    required this.dbNodeStorageSizeInGbs,
    required this.displayName,
    required this.exadataInfrastructureId,
    required this.lifecycleDetails,
    required this.lifecycleState,
    required this.maxCpuCount,
    required this.maxDbNodeStorageInGbs,
    required this.maxMemoryInGbs,
    required this.memorySizeInGbs,
    required this.ocid,
    required this.shape,
    required this.timeCreated,
    required this.vmClusterIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autonomousVirtualMachineDs': autonomousVirtualMachineDs,
      'autonomousVmClusterIds': autonomousVmClusterIds,
      'compartmentId': compartmentId,
      'computeModel': computeModel,
      'cpuCoreCount': cpuCoreCount,
      'dbNodeIds': dbNodeIds,
      'dbNodeStorageSizeInGbs': dbNodeStorageSizeInGbs,
      'displayName': displayName,
      'exadataInfrastructureId': exadataInfrastructureId,
      'lifecycleDetails': lifecycleDetails,
      'lifecycleState': lifecycleState,
      'maxCpuCount': maxCpuCount,
      'maxDbNodeStorageInGbs': maxDbNodeStorageInGbs,
      'maxMemoryInGbs': maxMemoryInGbs,
      'memorySizeInGbs': memorySizeInGbs,
      'ocid': ocid,
      'shape': shape,
      'timeCreated': timeCreated,
      'vmClusterIds': vmClusterIds,
    };
  }

  factory GetDbServersDbServer.fromMap(Map<String, dynamic> map) {
    return GetDbServersDbServer(
      autonomousVirtualMachineDs: pulumi.Input.fromValue(
        (map['autonomousVirtualMachineDs'] as List).cast<String>(),
      ),
      autonomousVmClusterIds: pulumi.Input.fromValue(
        (map['autonomousVmClusterIds'] as List).cast<String>(),
      ),
      compartmentId: pulumi.Input.fromValue(map['compartmentId'] as String),
      computeModel: pulumi.Input.fromValue(map['computeModel'] as String),
      cpuCoreCount: pulumi.Input.fromValue(map['cpuCoreCount'] as int),
      dbNodeIds: pulumi.Input.fromValue(
        (map['dbNodeIds'] as List).cast<String>(),
      ),
      dbNodeStorageSizeInGbs: pulumi.Input.fromValue(
        map['dbNodeStorageSizeInGbs'] as int,
      ),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      exadataInfrastructureId: pulumi.Input.fromValue(
        map['exadataInfrastructureId'] as String,
      ),
      lifecycleDetails: pulumi.Input.fromValue(
        map['lifecycleDetails'] as String,
      ),
      lifecycleState: pulumi.Input.fromValue(map['lifecycleState'] as String),
      maxCpuCount: pulumi.Input.fromValue(map['maxCpuCount'] as int),
      maxDbNodeStorageInGbs: pulumi.Input.fromValue(
        map['maxDbNodeStorageInGbs'] as int,
      ),
      maxMemoryInGbs: pulumi.Input.fromValue(map['maxMemoryInGbs'] as int),
      memorySizeInGbs: pulumi.Input.fromValue(map['memorySizeInGbs'] as int),
      ocid: pulumi.Input.fromValue(map['ocid'] as String),
      shape: pulumi.Input.fromValue(map['shape'] as String),
      timeCreated: pulumi.Input.fromValue(map['timeCreated'] as String),
      vmClusterIds: pulumi.Input.fromValue(
        (map['vmClusterIds'] as List).cast<String>(),
      ),
    );
  }
}
