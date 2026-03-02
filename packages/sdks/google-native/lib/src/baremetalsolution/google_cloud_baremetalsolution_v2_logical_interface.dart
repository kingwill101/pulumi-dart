// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'logical_network_interface.dart';

/// Each logical interface represents a logical abstraction of the underlying physical interface (for eg. bond, nic) of the instance. Each logical interface can effectively map to multiple network-IP pairs and still be mapped to one underlying physical interface.
class GoogleCloudBaremetalsolutionV2LogicalInterface {
  /// The index of the logical interface mapping to the index of the hardware bond or nic on the chosen network template. This field is deprecated.
  final pulumi.Input<int>? interfaceIndex;
  /// List of logical network interfaces within a logical interface.
  final pulumi.Input<List<LogicalNetworkInterface>>? logicalNetworkInterfaces;
  /// Interface name. This is of syntax or and forms part of the network template name.
  final pulumi.Input<String>? name;

  /// Creates a new [GoogleCloudBaremetalsolutionV2LogicalInterface].
  /// [interfaceIndex] The index of the logical interface mapping to the index of the hardware bond or nic on the chosen network template. This field is deprecated.
  /// [logicalNetworkInterfaces] List of logical network interfaces within a logical interface.
  /// [name] Interface name. This is of syntax or and forms part of the network template name.
  GoogleCloudBaremetalsolutionV2LogicalInterface({
    this.interfaceIndex,
    this.logicalNetworkInterfaces,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'interfaceIndex': ?interfaceIndex,
      'logicalNetworkInterfaces': ?pulumi.Input.mapOptionalInputValue<List<LogicalNetworkInterface>, List<Map<String, dynamic>>>(logicalNetworkInterfaces, (value) => pulumi.Input.encodeList<LogicalNetworkInterface, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
    };
  }

  factory GoogleCloudBaremetalsolutionV2LogicalInterface.fromMap(Map<String, dynamic> map) {
    return GoogleCloudBaremetalsolutionV2LogicalInterface(
      interfaceIndex: map['interfaceIndex'] == null ? null : (map['interfaceIndex'] as int).input(),
      logicalNetworkInterfaces: map['logicalNetworkInterfaces'] == null ? null : (pulumi.Input.decodeList<LogicalNetworkInterface>(map['logicalNetworkInterfaces'], (value) => LogicalNetworkInterface.fromMap((value as Map).cast<String, dynamic>()))).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
    );
  }
}

