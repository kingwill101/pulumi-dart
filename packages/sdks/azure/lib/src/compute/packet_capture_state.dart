// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'packet_capture_filter.dart';
import 'packet_capture_storage_location.dart';

/// Input properties used for looking up and filtering PacketCapture resources.
class PacketCaptureState {
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
  final pulumi.Input<String?>? networkWatcherId;
  /// A `storageLocation` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<PacketCaptureStorageLocation?>? storageLocation;
  /// The resource ID of the target Virtual Machine to capture packets from. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? virtualMachineId;

  /// Creates a new [PacketCaptureState].
  /// [filters] One or more `filter` blocks as defined below. Changing this forces a new resource to be created.
  /// [maximumBytesPerPacket] The number of bytes captured per packet. The remaining bytes are truncated. Defaults to `0` (Entire Packet Captured). Changing this forces a new resource to be created.
  /// [maximumBytesPerSession] Maximum size of the capture in Bytes. Defaults to `1073741824` (1GB). Changing this forces a new resource to be created.
  /// [maximumCaptureDurationInSeconds] The maximum duration of the capture session in seconds. Defaults to `18000` (5 hours). Changing this forces a new resource to be created.
  /// [name] The name to use for this Network Packet Capture. Changing this forces a new resource to be created.
  /// [networkWatcherId] The resource ID of the Network Watcher. Changing this forces a new resource to be created.
  /// [storageLocation] A `storageLocation` block as defined below. Changing this forces a new resource to be created.
  /// [virtualMachineId] The resource ID of the target Virtual Machine to capture packets from. Changing this forces a new resource to be created.
  const PacketCaptureState({
    this.filters,
    this.maximumBytesPerPacket,
    this.maximumBytesPerSession,
    this.maximumCaptureDurationInSeconds,
    this.name,
    this.networkWatcherId,
    this.storageLocation,
    this.virtualMachineId,
  });

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
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PacketCaptureFilter>(guardedValue, (value) => PacketCaptureFilter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      maximumBytesPerPacket: (() { final guardedValue = map['maximumBytesPerPacket']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      maximumBytesPerSession: (() { final guardedValue = map['maximumBytesPerSession']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      maximumCaptureDurationInSeconds: (() { final guardedValue = map['maximumCaptureDurationInSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkWatcherId: (() { final guardedValue = map['networkWatcherId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageLocation: (() { final guardedValue = map['storageLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PacketCaptureStorageLocation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      virtualMachineId: (() { final guardedValue = map['virtualMachineId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
