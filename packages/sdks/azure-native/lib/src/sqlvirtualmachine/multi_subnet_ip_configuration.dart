// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_ipaddress.dart';

/// Multi subnet ip configuration for an availability group listener.
class MultiSubnetIpConfiguration {
  /// Private IP address.
  final pulumi.Input<PrivateIPAddress> privateIpAddress;
  /// SQL virtual machine instance resource id that are enrolled into the availability group listener.
  final pulumi.Input<String> sqlVirtualMachineInstance;

  /// Creates a new [MultiSubnetIpConfiguration].
  /// [privateIpAddress] Private IP address.
  /// [sqlVirtualMachineInstance] SQL virtual machine instance resource id that are enrolled into the availability group listener.
  const MultiSubnetIpConfiguration({
    required this.privateIpAddress,
    required this.sqlVirtualMachineInstance,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateIpAddress': pulumi.Input.mapInputValue<PrivateIPAddress, Map<String, dynamic>>(privateIpAddress, (value) => value.toMap()),
      'sqlVirtualMachineInstance': sqlVirtualMachineInstance,
    };
  }

  factory MultiSubnetIpConfiguration.fromMap(Map<String, dynamic> map) {
    return MultiSubnetIpConfiguration(
      privateIpAddress: pulumi.Input.fromValue(PrivateIPAddress.fromMap((map['privateIpAddress']! as Map).cast<String, dynamic>())),
      sqlVirtualMachineInstance: pulumi.Input.fromValue(map['sqlVirtualMachineInstance'] as String),
    );
  }
}
