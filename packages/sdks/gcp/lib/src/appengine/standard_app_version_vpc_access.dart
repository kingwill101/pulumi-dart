// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'standard_app_version_vpc_access_network_interface.dart';

class StandardAppVersionVpcAccess {
  /// The egress setting for the VPC Access, controlling what traffic is diverted through it.
  final pulumi.Input<String?>? egressSetting;
  /// List of network interfaces for the VPC Access. Currently only a single network interface is supported.
  /// Structure is documented below.
  final pulumi.Input<List<StandardAppVersionVpcAccessNetworkInterface>?>? networkInterfaces;

  /// Creates a new [StandardAppVersionVpcAccess].
  /// [egressSetting] The egress setting for the VPC Access, controlling what traffic is diverted through it.
  /// [networkInterfaces] List of network interfaces for the VPC Access. Currently only a single network interface is supported.
  const StandardAppVersionVpcAccess({
    this.egressSetting,
    this.networkInterfaces,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'egressSetting': ?egressSetting,
      'networkInterfaces': ?pulumi.Input.mapOptionalInputValue<List<StandardAppVersionVpcAccessNetworkInterface>, List<Map<String, dynamic>>>(networkInterfaces, (value) => pulumi.Input.encodeList<StandardAppVersionVpcAccessNetworkInterface, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory StandardAppVersionVpcAccess.fromMap(Map<String, dynamic> map) {
    return StandardAppVersionVpcAccess(
      egressSetting: (() { final guardedValue = map['egressSetting']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkInterfaces: (() { final guardedValue = map['networkInterfaces']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<StandardAppVersionVpcAccessNetworkInterface>(guardedValue, (value) => StandardAppVersionVpcAccessNetworkInterface.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
