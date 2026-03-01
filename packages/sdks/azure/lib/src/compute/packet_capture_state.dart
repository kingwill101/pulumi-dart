// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'packet_capture_filter.dart';
import 'packet_capture_storage_location.dart';

/// Input properties used for looking up and filtering PacketCapture resources.
class PacketCaptureState {
  /// One or more `filter` blocks as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<List<PacketCaptureFilter>>? filters;
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
  final pulumi.Input<PacketCaptureStorageLocation>? storageLocation;
  /// The resource ID of the target Virtual Machine to capture packets from. Changing this forces a new resource to be created.
  final pulumi.Input<String>? virtualMachineId;

  /// Creates a new [PacketCaptureState].
  /// [filters] One or more `filter` blocks as defined below. Changing this forces a new resource to be created.
  /// [maximumBytesPerPacket] The number of bytes captured per packet. The remaining bytes are truncated. Defaults to `0` (Entire Packet Captured). Changing this forces a new resource to be created.
  /// [maximumBytesPerSession] Maximum size of the capture in Bytes. Defaults to `1073741824` (1GB). Changing this forces a new resource to be created.
  /// [maximumCaptureDurationInSeconds] The maximum duration of the capture session in seconds. Defaults to `18000` (5 hours). Changing this forces a new resource to be created.
  /// [name] The name to use for this Network Packet Capture. Changing this forces a new resource to be created.
  /// [networkWatcherId] The resource ID of the Network Watcher. Changing this forces a new resource to be created.
  /// [storageLocation] A `storage_location` block as defined below. Changing this forces a new resource to be created.
  /// [virtualMachineId] The resource ID of the target Virtual Machine to capture packets from. Changing this forces a new resource to be created.
  PacketCaptureState({
    pulumi.Output<List<PacketCaptureFilter>>? filters,
    pulumi.Output<int>? maximumBytesPerPacket,
    pulumi.Output<int>? maximumBytesPerSession,
    pulumi.Output<int>? maximumCaptureDurationInSeconds,
    pulumi.Output<String>? name,
    pulumi.Output<String>? networkWatcherId,
    pulumi.Output<PacketCaptureStorageLocation>? storageLocation,
    pulumi.Output<String>? virtualMachineId,
  }) :
      filters = pulumi.Input.asOptionalInput<List<PacketCaptureFilter>>(filters),
      maximumBytesPerPacket = pulumi.Input.asOptionalInput<int>(maximumBytesPerPacket),
      maximumBytesPerSession = pulumi.Input.asOptionalInput<int>(maximumBytesPerSession),
      maximumCaptureDurationInSeconds = pulumi.Input.asOptionalInput<int>(maximumCaptureDurationInSeconds),
      name = pulumi.Input.asOptionalInput<String>(name),
      networkWatcherId = pulumi.Input.asOptionalInput<String>(networkWatcherId),
      storageLocation = pulumi.Input.asOptionalInput<PacketCaptureStorageLocation>(storageLocation),
      virtualMachineId = pulumi.Input.asOptionalInput<String>(virtualMachineId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<PacketCaptureFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<PacketCaptureFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'maximumBytesPerPacket': ?maximumBytesPerPacket,
      'maximumBytesPerSession': ?maximumBytesPerSession,
      'maximumCaptureDurationInSeconds': ?maximumCaptureDurationInSeconds,
      'name': ?name,
      'networkWatcherId': ?networkWatcherId,
      'storageLocation': ?pulumi.Input.mapOptionalInputValue<PacketCaptureStorageLocation, Map<String, dynamic>>(storageLocation, (value) => value.toMap()),
      'virtualMachineId': ?virtualMachineId,
    };
  }

  factory PacketCaptureState.fromMap(Map<String, dynamic> map) {
    return PacketCaptureState(
      filters: map['filters'] == null ? null : pulumi.Output.create<List<PacketCaptureFilter>>(pulumi.Input.decodeList<PacketCaptureFilter>(map['filters'], (value) => PacketCaptureFilter.fromMap((value as Map).cast<String, dynamic>()))),
      maximumBytesPerPacket: map['maximumBytesPerPacket'] == null ? null : pulumi.Output.create<int>(map['maximumBytesPerPacket'] as int),
      maximumBytesPerSession: map['maximumBytesPerSession'] == null ? null : pulumi.Output.create<int>(map['maximumBytesPerSession'] as int),
      maximumCaptureDurationInSeconds: map['maximumCaptureDurationInSeconds'] == null ? null : pulumi.Output.create<int>(map['maximumCaptureDurationInSeconds'] as int),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      networkWatcherId: map['networkWatcherId'] == null ? null : pulumi.Output.create<String>(map['networkWatcherId'] as String),
      storageLocation: map['storageLocation'] == null ? null : pulumi.Output.create<PacketCaptureStorageLocation>(PacketCaptureStorageLocation.fromMap((map['storageLocation'] as Map).cast<String, dynamic>())),
      virtualMachineId: map['virtualMachineId'] == null ? null : pulumi.Output.create<String>(map['virtualMachineId'] as String),
    );
  }
}

