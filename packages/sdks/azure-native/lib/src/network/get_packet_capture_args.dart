// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_packet_capture_args_doc}
/// Arguments for getPacketCapture.
/// {@endtemplate}
/// {@macro pulumi_network_get_packet_capture_args_doc}
class GetPacketCaptureArgs {
  /// The name of the network watcher.
  final pulumi.Input<String> networkWatcherName;
  /// The name of the packet capture session.
  final pulumi.Input<String> packetCaptureName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetPacketCaptureArgs].
  /// [networkWatcherName] The name of the network watcher.
  /// [packetCaptureName] The name of the packet capture session.
  /// [resourceGroupName] The name of the resource group.
  GetPacketCaptureArgs({
    required this.networkWatcherName,
    required this.packetCaptureName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkWatcherName': networkWatcherName,
      'packetCaptureName': packetCaptureName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetPacketCaptureArgs.fromMap(Map<String, dynamic> map) {
    return GetPacketCaptureArgs(
      networkWatcherName: pulumi.Input.fromValue(map['networkWatcherName'] as String),
      packetCaptureName: pulumi.Input.fromValue(map['packetCaptureName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

