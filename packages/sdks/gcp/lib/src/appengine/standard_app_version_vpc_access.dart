// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'standard_app_version_vpc_access_network_interface.dart';

class StandardAppVersionVpcAccess {
  /// (Optional, Beta, Deprecated)
  /// The egress setting for the VPC Access, controlling what traffic is diverted through it.
  ///
  /// &gt; **Warning:** `egressSetting` is deprecated and will be removed in a future major release. Use `vpcEgress` instead.
  final pulumi.Input<String?>? egressSetting;
  /// List of network interfaces for the VPC Access. Currently only a single network interface is supported.
  /// Structure is documented below.
  final pulumi.Input<List<StandardAppVersionVpcAccessNetworkInterface>?>? networkInterfaces;
  /// The traffic egress setting for the VPC network interface, controlling what traffic is diverted through it.
  /// Possible values are: `ALL_TRAFFIC`, `PRIVATE_IP_RANGES`.
  final pulumi.Input<String?>? vpcEgress;

  /// Creates a new [StandardAppVersionVpcAccess].
  /// [egressSetting] (Optional, Beta, Deprecated)
  /// [networkInterfaces] List of network interfaces for the VPC Access. Currently only a single network interface is supported.
  /// [vpcEgress] The traffic egress setting for the VPC network interface, controlling what traffic is diverted through it.
  const StandardAppVersionVpcAccess({
    this.egressSetting,
    this.networkInterfaces,
    this.vpcEgress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'egressSetting': ?egressSetting,
      'networkInterfaces': ?pulumi.Input.mapOptionalInputValue<List<StandardAppVersionVpcAccessNetworkInterface>, List<Map<String, dynamic>>>(networkInterfaces, (value) => pulumi.Input.encodeList<StandardAppVersionVpcAccessNetworkInterface, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vpcEgress': ?vpcEgress,
    };
  }

  factory StandardAppVersionVpcAccess.fromMap(Map<String, dynamic> map) {
    return StandardAppVersionVpcAccess(
      egressSetting: (() { final guardedValue = map['egressSetting']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkInterfaces: (() { final guardedValue = map['networkInterfaces']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<StandardAppVersionVpcAccessNetworkInterface>(guardedValue, (value) => StandardAppVersionVpcAccessNetworkInterface.fromMap((value as Map).cast<String, dynamic>()))); })(),
      vpcEgress: (() { final guardedValue = map['vpcEgress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
