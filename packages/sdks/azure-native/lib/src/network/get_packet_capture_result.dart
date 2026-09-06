// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'packet_capture_filter_response.dart';
import 'packet_capture_machine_scope_response.dart';
import 'packet_capture_settings_response.dart';
import 'packet_capture_storage_location_response.dart';

/// Result data returned by getPacketCapture.
class GetPacketCaptureResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Number of bytes captured per packet, the remaining bytes are truncated.
  final double? bytesToCapturePerPacket;
  /// The capture setting holds the 'FileCount', 'FileSizeInBytes', 'SessionTimeLimitInSeconds' values.
  final PacketCaptureSettingsResponse? captureSettings;
  /// This continuous capture is a nullable boolean, which can hold 'null', 'true' or 'false' value. If we do not pass this parameter, it would be consider as 'null', default value is 'null'.
  final bool? continuousCapture;
  /// A unique read-only string that changes whenever the resource is updated.
  final String? etag;
  /// A list of packet capture filters.
  final List<PacketCaptureFilterResponse>? filters;
  /// ID of the packet capture operation.
  final String? id;
  /// Name of the packet capture session.
  final String? name;
  /// The provisioning state of the packet capture session.
  final String? provisioningState;
  /// A list of AzureVMSS instances which can be included or excluded to run packet capture. If both included and excluded are empty, then the packet capture will run on all instances of AzureVMSS.
  final PacketCaptureMachineScopeResponse? scope;
  /// The storage location for a packet capture session.
  final PacketCaptureStorageLocationResponse? storageLocation;
  /// The ID of the targeted resource, only AzureVM and AzureVMSS as target type are currently supported.
  final String? target;
  /// Target type of the resource provided.
  final String? targetType;
  /// Maximum duration of the capture session in seconds.
  final int? timeLimitInSeconds;
  /// Maximum size of the capture output.
  final double? totalBytesPerSession;

  /// Creates a new [GetPacketCaptureResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [bytesToCapturePerPacket] Number of bytes captured per packet, the remaining bytes are truncated.
  /// [captureSettings] The capture setting holds the 'FileCount', 'FileSizeInBytes', 'SessionTimeLimitInSeconds' values.
  /// [continuousCapture] This continuous capture is a nullable boolean, which can hold 'null', 'true' or 'false' value. If we do not pass this parameter, it would be consider as 'null', default value is 'null'.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [filters] A list of packet capture filters.
  /// [id] ID of the packet capture operation.
  /// [name] Name of the packet capture session.
  /// [provisioningState] The provisioning state of the packet capture session.
  /// [scope] A list of AzureVMSS instances which can be included or excluded to run packet capture. If both included and excluded are empty, then the packet capture will run on all instances of AzureVMSS.
  /// [storageLocation] The storage location for a packet capture session.
  /// [target] The ID of the targeted resource, only AzureVM and AzureVMSS as target type are currently supported.
  /// [targetType] Target type of the resource provided.
  /// [timeLimitInSeconds] Maximum duration of the capture session in seconds.
  /// [totalBytesPerSession] Maximum size of the capture output.
  GetPacketCaptureResult({
    this.azureApiVersion,
    double? bytesToCapturePerPacket,
    this.captureSettings,
    this.continuousCapture,
    this.etag,
    this.filters,
    this.id,
    this.name,
    this.provisioningState,
    this.scope,
    this.storageLocation,
    this.target,
    this.targetType,
    int? timeLimitInSeconds,
    double? totalBytesPerSession,
  }) : bytesToCapturePerPacket = bytesToCapturePerPacket ?? 0, timeLimitInSeconds = timeLimitInSeconds ?? 18000, totalBytesPerSession = totalBytesPerSession ?? 1.073741824e+09;

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'bytesToCapturePerPacket': ?bytesToCapturePerPacket,
      'captureSettings': ?captureSettings?.toMap(),
      'continuousCapture': ?continuousCapture,
      'etag': ?etag,
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<PacketCaptureFilterResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'scope': ?scope?.toMap(),
      'storageLocation': ?storageLocation?.toMap(),
      'target': ?target,
      'targetType': ?targetType,
      'timeLimitInSeconds': ?timeLimitInSeconds,
      'totalBytesPerSession': ?totalBytesPerSession,
    };
  }

  factory GetPacketCaptureResult.fromMap(Map<String, dynamic> map) {
    return GetPacketCaptureResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      bytesToCapturePerPacket: (() { final guardedValue = map['bytesToCapturePerPacket']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      captureSettings: (() { final guardedValue = map['captureSettings']; if (guardedValue == null) return null; return PacketCaptureSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      continuousCapture: (() { final guardedValue = map['continuousCapture']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<PacketCaptureFilterResponse>(guardedValue, (value) => PacketCaptureFilterResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return PacketCaptureMachineScopeResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      storageLocation: (() { final guardedValue = map['storageLocation']; if (guardedValue == null) return null; return PacketCaptureStorageLocationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      target: (() { final guardedValue = map['target']; if (guardedValue == null) return null; return guardedValue as String; })(),
      targetType: (() { final guardedValue = map['targetType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      timeLimitInSeconds: (() { final guardedValue = map['timeLimitInSeconds']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      totalBytesPerSession: (() { final guardedValue = map['totalBytesPerSession']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
    );
  }
}
