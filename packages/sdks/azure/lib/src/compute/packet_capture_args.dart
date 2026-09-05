// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'packet_capture_filter.dart';
import 'packet_capture_storage_location.dart';

/// {@template pulumi_compute_packet_capture_packet_capture_args_doc}
/// The set of arguments for PacketCapture.
/// {@endtemplate}
/// {@macro pulumi_compute_packet_capture_packet_capture_args_doc}
class PacketCaptureArgs {
  /// One or more `filter` blocks as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<List<PacketCaptureFilter>?>? filters;
  /// The number of bytes captured per packet. The remaining bytes are truncated. Defaults to `0` (Entire Packet Captured). Changing this forces a new resource to be created.
  final pulumi.Input<int?>? maximumBytesPerPacket;
  /// Maximum size of the capture in Bytes. Defaults to `1073741824` (1GB). Changing this forces a new resource to be created.
  final pulumi.Input<int?>? maximumBytesPerSession;
  /// The maximum duration of the capture session in seconds. Defaults to `18000` (5 hours). Changing this forces a new resource to be created.
  final pulumi.Input<int?>? maximumCaptureDurationInSeconds;
  /// The name to use for this Network Packet Capture. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? name;
  /// The resource ID of the Network Watcher. Changing this forces a new resource to be created.
  final pulumi.Input<String> networkWatcherId;
  /// A `storageLocation` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<PacketCaptureStorageLocation> storageLocation;
  /// The resource ID of the target Virtual Machine to capture packets from. Changing this forces a new resource to be created.
  final pulumi.Input<String> virtualMachineId;

  /// Creates a new [PacketCaptureArgs].
  /// [filters] One or more `filter` blocks as defined below. Changing this forces a new resource to be created.
  /// [maximumBytesPerPacket] The number of bytes captured per packet. The remaining bytes are truncated. Defaults to `0` (Entire Packet Captured). Changing this forces a new resource to be created.
  /// [maximumBytesPerSession] Maximum size of the capture in Bytes. Defaults to `1073741824` (1GB). Changing this forces a new resource to be created.
  /// [maximumCaptureDurationInSeconds] The maximum duration of the capture session in seconds. Defaults to `18000` (5 hours). Changing this forces a new resource to be created.
  /// [name] The name to use for this Network Packet Capture. Changing this forces a new resource to be created.
  /// [networkWatcherId] The resource ID of the Network Watcher. Changing this forces a new resource to be created.
  /// [storageLocation] A `storageLocation` block as defined below. Changing this forces a new resource to be created.
  /// [virtualMachineId] The resource ID of the target Virtual Machine to capture packets from. Changing this forces a new resource to be created.
  const PacketCaptureArgs({
    this.filters,
    this.maximumBytesPerPacket,
    this.maximumBytesPerSession,
    this.maximumCaptureDurationInSeconds,
    this.name,
    required this.networkWatcherId,
    required this.storageLocation,
    required this.virtualMachineId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<PacketCaptureFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<PacketCaptureFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'maximumBytesPerPacket': ?maximumBytesPerPacket,
      'maximumBytesPerSession': ?maximumBytesPerSession,
      'maximumCaptureDurationInSeconds': ?maximumCaptureDurationInSeconds,
      'name': ?name,
      'networkWatcherId': networkWatcherId,
      'storageLocation': pulumi.Input.mapInputValue<PacketCaptureStorageLocation, Map<String, dynamic>>(storageLocation, (value) => value.toMap()),
      'virtualMachineId': virtualMachineId,
    };
  }

  factory PacketCaptureArgs.fromMap(Map<String, dynamic> map) {
    return PacketCaptureArgs(
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PacketCaptureFilter>(guardedValue, (value) => PacketCaptureFilter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      maximumBytesPerPacket: (() { final guardedValue = map['maximumBytesPerPacket']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      maximumBytesPerSession: (() { final guardedValue = map['maximumBytesPerSession']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      maximumCaptureDurationInSeconds: (() { final guardedValue = map['maximumCaptureDurationInSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkWatcherId: pulumi.Input.fromValue(map['networkWatcherId'] as String),
      storageLocation: pulumi.Input.fromValue(PacketCaptureStorageLocation.fromMap((map['storageLocation']! as Map).cast<String, dynamic>())),
      virtualMachineId: pulumi.Input.fromValue(map['virtualMachineId'] as String),
    );
  }
}
