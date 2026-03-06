// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'logical_network_interface_response.dart';

/// Each logical interface represents a logical abstraction of the underlying physical interface (for eg. bond, nic) of the instance. Each logical interface can effectively map to multiple network-IP pairs and still be mapped to one underlying physical interface.
class GoogleCloudBaremetalsolutionV2LogicalInterfaceResponse {
  /// The index of the logical interface mapping to the index of the hardware bond or nic on the chosen network template. This field is deprecated.
  final pulumi.Input<int> interfaceIndex;
  /// List of logical network interfaces within a logical interface.
  final pulumi.Input<List<LogicalNetworkInterfaceResponse>> logicalNetworkInterfaces;
  /// Interface name. This is of syntax or and forms part of the network template name.
  final pulumi.Input<String> name;

  /// Creates a new [GoogleCloudBaremetalsolutionV2LogicalInterfaceResponse].
  /// [interfaceIndex] The index of the logical interface mapping to the index of the hardware bond or nic on the chosen network template. This field is deprecated.
  /// [logicalNetworkInterfaces] List of logical network interfaces within a logical interface.
  /// [name] Interface name. This is of syntax or and forms part of the network template name.
  const GoogleCloudBaremetalsolutionV2LogicalInterfaceResponse({
    required this.interfaceIndex,
    required this.logicalNetworkInterfaces,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'interfaceIndex': interfaceIndex,
      'logicalNetworkInterfaces': pulumi.Input.mapInputValue<List<LogicalNetworkInterfaceResponse>, List<Map<String, dynamic>>>(logicalNetworkInterfaces, (value) => pulumi.Input.encodeList<LogicalNetworkInterfaceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': name,
    };
  }

  factory GoogleCloudBaremetalsolutionV2LogicalInterfaceResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudBaremetalsolutionV2LogicalInterfaceResponse(
      interfaceIndex: pulumi.Input.fromValue(map['interfaceIndex'] as int),
      logicalNetworkInterfaces: pulumi.Input.fromValue(pulumi.Input.decodeList<LogicalNetworkInterfaceResponse>(map['logicalNetworkInterfaces']!, (value) => LogicalNetworkInterfaceResponse.fromMap((value as Map).cast<String, dynamic>()))),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

