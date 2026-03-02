// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scale_set_packet_capture_filter.dart';
import 'scale_set_packet_capture_machine_scope.dart';
import 'scale_set_packet_capture_storage_location.dart';

/// {@template pulumi_compute_scale_set_packet_capture_scale_set_packet_capture_args_doc}
/// The set of arguments for ScaleSetPacketCapture.
/// {@endtemplate}
/// {@macro pulumi_compute_scale_set_packet_capture_scale_set_packet_capture_args_doc}
class ScaleSetPacketCaptureArgs {
  /// One or more `filter` blocks as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<List<ScaleSetPacketCaptureFilter>>? filters;
  /// A `machine_scope` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<ScaleSetPacketCaptureMachineScope>? machineScope;
  /// The number of bytes captured per packet. The remaining bytes are truncated. Defaults to `0` (Entire Packet Captured). Changing this forces a new resource to be created.
  final pulumi.Input<int>? maximumBytesPerPacket;
  /// Maximum size of the capture in Bytes. Defaults to `1073741824` (1GB). Changing this forces a new resource to be created.
  final pulumi.Input<int>? maximumBytesPerSession;
  /// The maximum duration of the capture session in seconds. Defaults to `18000` (5 hours). Changing this forces a new resource to be created.
  final pulumi.Input<int>? maximumCaptureDurationInSeconds;
  /// The name to use for this Network Packet Capture. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The resource ID of the Network Watcher. Changing this forces a new resource to be created.
  final pulumi.Input<String> networkWatcherId;
  /// A `storage_location` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<ScaleSetPacketCaptureStorageLocation> storageLocation;
  /// The resource ID of the Virtual Machine Scale Set to capture packets from. Changing this forces a new resource to be created.
  final pulumi.Input<String> virtualMachineScaleSetId;

  /// Creates a new [ScaleSetPacketCaptureArgs].
  /// [filters] One or more `filter` blocks as defined below. Changing this forces a new resource to be created.
  /// [machineScope] A `machine_scope` block as defined below. Changing this forces a new resource to be created.
  /// [maximumBytesPerPacket] The number of bytes captured per packet. The remaining bytes are truncated. Defaults to `0` (Entire Packet Captured). Changing this forces a new resource to be created.
  /// [maximumBytesPerSession] Maximum size of the capture in Bytes. Defaults to `1073741824` (1GB). Changing this forces a new resource to be created.
  /// [maximumCaptureDurationInSeconds] The maximum duration of the capture session in seconds. Defaults to `18000` (5 hours). Changing this forces a new resource to be created.
  /// [name] The name to use for this Network Packet Capture. Changing this forces a new resource to be created.
  /// [networkWatcherId] The resource ID of the Network Watcher. Changing this forces a new resource to be created.
  /// [storageLocation] A `storage_location` block as defined below. Changing this forces a new resource to be created.
  /// [virtualMachineScaleSetId] The resource ID of the Virtual Machine Scale Set to capture packets from. Changing this forces a new resource to be created.
  ScaleSetPacketCaptureArgs({
    this.filters,
    this.machineScope,
    this.maximumBytesPerPacket,
    this.maximumBytesPerSession,
    this.maximumCaptureDurationInSeconds,
    this.name,
    required this.networkWatcherId,
    required this.storageLocation,
    required this.virtualMachineScaleSetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<ScaleSetPacketCaptureFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<ScaleSetPacketCaptureFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'machineScope': ?pulumi.Input.mapOptionalInputValue<ScaleSetPacketCaptureMachineScope, Map<String, dynamic>>(machineScope, (value) => value.toMap()),
      'maximumBytesPerPacket': ?maximumBytesPerPacket,
      'maximumBytesPerSession': ?maximumBytesPerSession,
      'maximumCaptureDurationInSeconds': ?maximumCaptureDurationInSeconds,
      'name': ?name,
      'networkWatcherId': networkWatcherId,
      'storageLocation': pulumi.Input.mapInputValue<ScaleSetPacketCaptureStorageLocation, Map<String, dynamic>>(storageLocation, (value) => value.toMap()),
      'virtualMachineScaleSetId': virtualMachineScaleSetId,
    };
  }

  factory ScaleSetPacketCaptureArgs.fromMap(Map<String, dynamic> map) {
    return ScaleSetPacketCaptureArgs(
      filters: map['filters'] == null ? null : (pulumi.Input.decodeList<ScaleSetPacketCaptureFilter>(map['filters'], (value) => ScaleSetPacketCaptureFilter.fromMap((value as Map).cast<String, dynamic>()))).input(),
      machineScope: map['machineScope'] == null ? null : (ScaleSetPacketCaptureMachineScope.fromMap((map['machineScope'] as Map).cast<String, dynamic>())).input(),
      maximumBytesPerPacket: map['maximumBytesPerPacket'] == null ? null : (map['maximumBytesPerPacket'] as int).input(),
      maximumBytesPerSession: map['maximumBytesPerSession'] == null ? null : (map['maximumBytesPerSession'] as int).input(),
      maximumCaptureDurationInSeconds: map['maximumCaptureDurationInSeconds'] == null ? null : (map['maximumCaptureDurationInSeconds'] as int).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      networkWatcherId: (map['networkWatcherId'] as String).input(),
      storageLocation: (ScaleSetPacketCaptureStorageLocation.fromMap((map['storageLocation'] as Map).cast<String, dynamic>())).input(),
      virtualMachineScaleSetId: (map['virtualMachineScaleSetId'] as String).input(),
    );
  }
}

