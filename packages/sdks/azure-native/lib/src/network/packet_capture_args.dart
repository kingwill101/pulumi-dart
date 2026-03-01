// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'packet_capture_filter.dart';
import 'packet_capture_machine_scope.dart';
import 'packet_capture_settings.dart';
import 'packet_capture_storage_location.dart';
import 'packet_capture_target_type.dart';

/// {@template pulumi_network_packet_capture_args_doc}
/// The set of arguments for PacketCapture.
/// {@endtemplate}
/// {@macro pulumi_network_packet_capture_args_doc}
class PacketCaptureArgs {
  /// Number of bytes captured per packet, the remaining bytes are truncated.
  final pulumi.Input<double>? bytesToCapturePerPacket;
  /// The capture setting holds the 'FileCount', 'FileSizeInBytes', 'SessionTimeLimitInSeconds' values.
  final pulumi.Input<PacketCaptureSettings>? captureSettings;
  /// This continuous capture is a nullable boolean, which can hold 'null', 'true' or 'false' value. If we do not pass this parameter, it would be consider as 'null', default value is 'null'.
  final pulumi.Input<bool>? continuousCapture;
  /// A list of packet capture filters.
  final pulumi.Input<List<PacketCaptureFilter>>? filters;
  /// The name of the network watcher.
  final pulumi.Input<String> networkWatcherName;
  /// The name of the packet capture session.
  final pulumi.Input<String>? packetCaptureName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// A list of AzureVMSS instances which can be included or excluded to run packet capture. If both included and excluded are empty, then the packet capture will run on all instances of AzureVMSS.
  final pulumi.Input<PacketCaptureMachineScope>? scope;
  /// The storage location for a packet capture session.
  final pulumi.Input<PacketCaptureStorageLocation> storageLocation;
  /// The ID of the targeted resource, only AzureVM and AzureVMSS as target type are currently supported.
  final pulumi.Input<String> target;
  /// Target type of the resource provided.
  final pulumi.Input<PacketCaptureTargetType>? targetType;
  /// Maximum duration of the capture session in seconds.
  final pulumi.Input<int>? timeLimitInSeconds;
  /// Maximum size of the capture output.
  final pulumi.Input<double>? totalBytesPerSession;

  /// Creates a new [PacketCaptureArgs].
  /// [bytesToCapturePerPacket] Number of bytes captured per packet, the remaining bytes are truncated.
  /// [captureSettings] The capture setting holds the 'FileCount', 'FileSizeInBytes', 'SessionTimeLimitInSeconds' values.
  /// [continuousCapture] This continuous capture is a nullable boolean, which can hold 'null', 'true' or 'false' value. If we do not pass this parameter, it would be consider as 'null', default value is 'null'.
  /// [filters] A list of packet capture filters.
  /// [networkWatcherName] The name of the network watcher.
  /// [packetCaptureName] The name of the packet capture session.
  /// [resourceGroupName] The name of the resource group.
  /// [scope] A list of AzureVMSS instances which can be included or excluded to run packet capture. If both included and excluded are empty, then the packet capture will run on all instances of AzureVMSS.
  /// [storageLocation] The storage location for a packet capture session.
  /// [target] The ID of the targeted resource, only AzureVM and AzureVMSS as target type are currently supported.
  /// [targetType] Target type of the resource provided.
  /// [timeLimitInSeconds] Maximum duration of the capture session in seconds.
  /// [totalBytesPerSession] Maximum size of the capture output.
  PacketCaptureArgs({
    pulumi.Output<double>? bytesToCapturePerPacket,
    pulumi.Output<PacketCaptureSettings>? captureSettings,
    pulumi.Output<bool>? continuousCapture,
    pulumi.Output<List<PacketCaptureFilter>>? filters,
    required pulumi.Output<String> networkWatcherName,
    pulumi.Output<String>? packetCaptureName,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<PacketCaptureMachineScope>? scope,
    required pulumi.Output<PacketCaptureStorageLocation> storageLocation,
    required pulumi.Output<String> target,
    pulumi.Output<PacketCaptureTargetType>? targetType,
    pulumi.Output<int>? timeLimitInSeconds,
    pulumi.Output<double>? totalBytesPerSession,
  }) :
      bytesToCapturePerPacket = pulumi.Input.asOptionalInput<double>(bytesToCapturePerPacket),
      captureSettings = pulumi.Input.asOptionalInput<PacketCaptureSettings>(captureSettings),
      continuousCapture = pulumi.Input.asOptionalInput<bool>(continuousCapture),
      filters = pulumi.Input.asOptionalInput<List<PacketCaptureFilter>>(filters),
      networkWatcherName = pulumi.Input.asInput<String>(networkWatcherName),
      packetCaptureName = pulumi.Input.asOptionalInput<String>(packetCaptureName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      scope = pulumi.Input.asOptionalInput<PacketCaptureMachineScope>(scope),
      storageLocation = pulumi.Input.asInput<PacketCaptureStorageLocation>(storageLocation),
      target = pulumi.Input.asInput<String>(target),
      targetType = pulumi.Input.asOptionalInput<PacketCaptureTargetType>(targetType),
      timeLimitInSeconds = pulumi.Input.asOptionalInput<int>(timeLimitInSeconds),
      totalBytesPerSession = pulumi.Input.asOptionalInput<double>(totalBytesPerSession);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bytesToCapturePerPacket': ?bytesToCapturePerPacket,
      'captureSettings': ?pulumi.Input.mapOptionalInputValue<PacketCaptureSettings, Map<String, dynamic>>(captureSettings, (value) => value.toMap()),
      'continuousCapture': ?continuousCapture,
      'filters': ?pulumi.Input.mapOptionalInputValue<List<PacketCaptureFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<PacketCaptureFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'networkWatcherName': networkWatcherName,
      'packetCaptureName': ?packetCaptureName,
      'resourceGroupName': resourceGroupName,
      'scope': ?pulumi.Input.mapOptionalInputValue<PacketCaptureMachineScope, Map<String, dynamic>>(scope, (value) => value.toMap()),
      'storageLocation': pulumi.Input.mapInputValue<PacketCaptureStorageLocation, Map<String, dynamic>>(storageLocation, (value) => value.toMap()),
      'target': target,
      'targetType': ?pulumi.Input.mapOptionalInputValue<PacketCaptureTargetType, String>(targetType, (value) => value.value),
      'timeLimitInSeconds': ?timeLimitInSeconds,
      'totalBytesPerSession': ?totalBytesPerSession,
    };
  }

  factory PacketCaptureArgs.fromMap(Map<String, dynamic> map) {
    return PacketCaptureArgs(
      bytesToCapturePerPacket: map['bytesToCapturePerPacket'] == null ? null : pulumi.Output.create<double>(map['bytesToCapturePerPacket'] as double),
      captureSettings: map['captureSettings'] == null ? null : pulumi.Output.create<PacketCaptureSettings>(PacketCaptureSettings.fromMap((map['captureSettings'] as Map).cast<String, dynamic>())),
      continuousCapture: map['continuousCapture'] == null ? null : pulumi.Output.create<bool>(map['continuousCapture'] as bool),
      filters: map['filters'] == null ? null : pulumi.Output.create<List<PacketCaptureFilter>>(pulumi.Input.decodeList<PacketCaptureFilter>(map['filters'], (value) => PacketCaptureFilter.fromMap((value as Map).cast<String, dynamic>()))),
      networkWatcherName: pulumi.Output.create<String>(map['networkWatcherName'] as String),
      packetCaptureName: map['packetCaptureName'] == null ? null : pulumi.Output.create<String>(map['packetCaptureName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      scope: map['scope'] == null ? null : pulumi.Output.create<PacketCaptureMachineScope>(PacketCaptureMachineScope.fromMap((map['scope'] as Map).cast<String, dynamic>())),
      storageLocation: pulumi.Output.create<PacketCaptureStorageLocation>(PacketCaptureStorageLocation.fromMap((map['storageLocation'] as Map).cast<String, dynamic>())),
      target: pulumi.Output.create<String>(map['target'] as String),
      targetType: map['targetType'] == null ? null : pulumi.Output.create<PacketCaptureTargetType>(PacketCaptureTargetType.fromValue(map['targetType'] as String)),
      timeLimitInSeconds: map['timeLimitInSeconds'] == null ? null : pulumi.Output.create<int>(map['timeLimitInSeconds'] as int),
      totalBytesPerSession: map['totalBytesPerSession'] == null ? null : pulumi.Output.create<double>(map['totalBytesPerSession'] as double),
    );
  }
}

