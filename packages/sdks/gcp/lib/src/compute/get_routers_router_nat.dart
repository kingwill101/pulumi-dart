// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRoutersRouterNat {
  final pulumi.Input<bool> enableEndpointIndependentMapping;
  final pulumi.Input<int> icmpIdleTimeoutSec;
  final pulumi.Input<int> minPortsPerVm;
  final pulumi.Input<String> name;
  final pulumi.Input<String> natIpAllocateOption;
  final pulumi.Input<List<String>> natIps;
  final pulumi.Input<String> sourceSubnetworkIpRangesToNat;
  final pulumi.Input<int> tcpEstablishedIdleTimeoutSec;
  final pulumi.Input<int> tcpTransitoryIdleTimeoutSec;
  final pulumi.Input<int> udpIdleTimeoutSec;

  /// Creates a new [GetRoutersRouterNat].
  /// [enableEndpointIndependentMapping] Required.
  /// [icmpIdleTimeoutSec] Required.
  /// [minPortsPerVm] Required.
  /// [name] Required.
  /// [natIpAllocateOption] Required.
  /// [natIps] Required.
  /// [sourceSubnetworkIpRangesToNat] Required.
  /// [tcpEstablishedIdleTimeoutSec] Required.
  /// [tcpTransitoryIdleTimeoutSec] Required.
  /// [udpIdleTimeoutSec] Required.
  const GetRoutersRouterNat({
    required this.enableEndpointIndependentMapping,
    required this.icmpIdleTimeoutSec,
    required this.minPortsPerVm,
    required this.name,
    required this.natIpAllocateOption,
    required this.natIps,
    required this.sourceSubnetworkIpRangesToNat,
    required this.tcpEstablishedIdleTimeoutSec,
    required this.tcpTransitoryIdleTimeoutSec,
    required this.udpIdleTimeoutSec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableEndpointIndependentMapping': enableEndpointIndependentMapping,
      'icmpIdleTimeoutSec': icmpIdleTimeoutSec,
      'minPortsPerVm': minPortsPerVm,
      'name': name,
      'natIpAllocateOption': natIpAllocateOption,
      'natIps': natIps,
      'sourceSubnetworkIpRangesToNat': sourceSubnetworkIpRangesToNat,
      'tcpEstablishedIdleTimeoutSec': tcpEstablishedIdleTimeoutSec,
      'tcpTransitoryIdleTimeoutSec': tcpTransitoryIdleTimeoutSec,
      'udpIdleTimeoutSec': udpIdleTimeoutSec,
    };
  }

  factory GetRoutersRouterNat.fromMap(Map<String, dynamic> map) {
    return GetRoutersRouterNat(
      enableEndpointIndependentMapping: pulumi.Input.fromValue(map['enableEndpointIndependentMapping'] as bool),
      icmpIdleTimeoutSec: pulumi.Input.fromValue((map['icmpIdleTimeoutSec'] as num).toInt()),
      minPortsPerVm: pulumi.Input.fromValue((map['minPortsPerVm'] as num).toInt()),
      name: pulumi.Input.fromValue(map['name'] as String),
      natIpAllocateOption: pulumi.Input.fromValue(map['natIpAllocateOption'] as String),
      natIps: pulumi.Input.fromValue((map['natIps'] as List).cast<String>()),
      sourceSubnetworkIpRangesToNat: pulumi.Input.fromValue(map['sourceSubnetworkIpRangesToNat'] as String),
      tcpEstablishedIdleTimeoutSec: pulumi.Input.fromValue((map['tcpEstablishedIdleTimeoutSec'] as num).toInt()),
      tcpTransitoryIdleTimeoutSec: pulumi.Input.fromValue((map['tcpTransitoryIdleTimeoutSec'] as num).toInt()),
      udpIdleTimeoutSec: pulumi.Input.fromValue((map['udpIdleTimeoutSec'] as num).toInt()),
    );
  }
}
