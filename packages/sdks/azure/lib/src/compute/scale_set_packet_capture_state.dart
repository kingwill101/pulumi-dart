// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scale_set_packet_capture_filter.dart';
import 'scale_set_packet_capture_machine_scope.dart';
import 'scale_set_packet_capture_storage_location.dart';

/// Input properties used for looking up and filtering ScaleSetPacketCapture resources.
class ScaleSetPacketCaptureState {
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
  final pulumi.Input<String>? networkWatcherId;
  /// A `storage_location` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<ScaleSetPacketCaptureStorageLocation>? storageLocation;
  /// The resource ID of the Virtual Machine Scale Set to capture packets from. Changing this forces a new resource to be created.
  final pulumi.Input<String>? virtualMachineScaleSetId;

  /// Creates a new [ScaleSetPacketCaptureState].
  /// [filters] One or more `filter` blocks as defined below. Changing this forces a new resource to be created.
  /// [machineScope] A `machine_scope` block as defined below. Changing this forces a new resource to be created.
  /// [maximumBytesPerPacket] The number of bytes captured per packet. The remaining bytes are truncated. Defaults to `0` (Entire Packet Captured). Changing this forces a new resource to be created.
  /// [maximumBytesPerSession] Maximum size of the capture in Bytes. Defaults to `1073741824` (1GB). Changing this forces a new resource to be created.
  /// [maximumCaptureDurationInSeconds] The maximum duration of the capture session in seconds. Defaults to `18000` (5 hours). Changing this forces a new resource to be created.
  /// [name] The name to use for this Network Packet Capture. Changing this forces a new resource to be created.
  /// [networkWatcherId] The resource ID of the Network Watcher. Changing this forces a new resource to be created.
  /// [storageLocation] A `storage_location` block as defined below. Changing this forces a new resource to be created.
  /// [virtualMachineScaleSetId] The resource ID of the Virtual Machine Scale Set to capture packets from. Changing this forces a new resource to be created.
  ScaleSetPacketCaptureState({
    pulumi.Output<List<ScaleSetPacketCaptureFilter>>? filters,
    pulumi.Output<ScaleSetPacketCaptureMachineScope>? machineScope,
    pulumi.Output<int>? maximumBytesPerPacket,
    pulumi.Output<int>? maximumBytesPerSession,
    pulumi.Output<int>? maximumCaptureDurationInSeconds,
    pulumi.Output<String>? name,
    pulumi.Output<String>? networkWatcherId,
    pulumi.Output<ScaleSetPacketCaptureStorageLocation>? storageLocation,
    pulumi.Output<String>? virtualMachineScaleSetId,
  }) :
      filters = pulumi.Input.asOptionalInput<List<ScaleSetPacketCaptureFilter>>(filters),
      machineScope = pulumi.Input.asOptionalInput<ScaleSetPacketCaptureMachineScope>(machineScope),
      maximumBytesPerPacket = pulumi.Input.asOptionalInput<int>(maximumBytesPerPacket),
      maximumBytesPerSession = pulumi.Input.asOptionalInput<int>(maximumBytesPerSession),
      maximumCaptureDurationInSeconds = pulumi.Input.asOptionalInput<int>(maximumCaptureDurationInSeconds),
      name = pulumi.Input.asOptionalInput<String>(name),
      networkWatcherId = pulumi.Input.asOptionalInput<String>(networkWatcherId),
      storageLocation = pulumi.Input.asOptionalInput<ScaleSetPacketCaptureStorageLocation>(storageLocation),
      virtualMachineScaleSetId = pulumi.Input.asOptionalInput<String>(virtualMachineScaleSetId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<ScaleSetPacketCaptureFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<ScaleSetPacketCaptureFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'machineScope': ?pulumi.Input.mapOptionalInputValue<ScaleSetPacketCaptureMachineScope, Map<String, dynamic>>(machineScope, (value) => value.toMap()),
      'maximumBytesPerPacket': ?maximumBytesPerPacket,
      'maximumBytesPerSession': ?maximumBytesPerSession,
      'maximumCaptureDurationInSeconds': ?maximumCaptureDurationInSeconds,
      'name': ?name,
      'networkWatcherId': ?networkWatcherId,
      'storageLocation': ?pulumi.Input.mapOptionalInputValue<ScaleSetPacketCaptureStorageLocation, Map<String, dynamic>>(storageLocation, (value) => value.toMap()),
      'virtualMachineScaleSetId': ?virtualMachineScaleSetId,
    };
  }

  factory ScaleSetPacketCaptureState.fromMap(Map<String, dynamic> map) {
    return ScaleSetPacketCaptureState(
      filters: map['filters'] == null ? null : pulumi.Output.create<List<ScaleSetPacketCaptureFilter>>(pulumi.Input.decodeList<ScaleSetPacketCaptureFilter>(map['filters'], (value) => ScaleSetPacketCaptureFilter.fromMap((value as Map).cast<String, dynamic>()))),
      machineScope: map['machineScope'] == null ? null : pulumi.Output.create<ScaleSetPacketCaptureMachineScope>(ScaleSetPacketCaptureMachineScope.fromMap((map['machineScope'] as Map).cast<String, dynamic>())),
      maximumBytesPerPacket: map['maximumBytesPerPacket'] == null ? null : pulumi.Output.create<int>(map['maximumBytesPerPacket'] as int),
      maximumBytesPerSession: map['maximumBytesPerSession'] == null ? null : pulumi.Output.create<int>(map['maximumBytesPerSession'] as int),
      maximumCaptureDurationInSeconds: map['maximumCaptureDurationInSeconds'] == null ? null : pulumi.Output.create<int>(map['maximumCaptureDurationInSeconds'] as int),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      networkWatcherId: map['networkWatcherId'] == null ? null : pulumi.Output.create<String>(map['networkWatcherId'] as String),
      storageLocation: map['storageLocation'] == null ? null : pulumi.Output.create<ScaleSetPacketCaptureStorageLocation>(ScaleSetPacketCaptureStorageLocation.fromMap((map['storageLocation'] as Map).cast<String, dynamic>())),
      virtualMachineScaleSetId: map['virtualMachineScaleSetId'] == null ? null : pulumi.Output.create<String>(map['virtualMachineScaleSetId'] as String),
    );
  }
}

