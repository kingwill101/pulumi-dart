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
  GetRoutersRouterNat({
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
      enableEndpointIndependentMapping: (map['enableEndpointIndependentMapping'] as bool).input(),
      icmpIdleTimeoutSec: (map['icmpIdleTimeoutSec'] as int).input(),
      minPortsPerVm: (map['minPortsPerVm'] as int).input(),
      name: (map['name'] as String).input(),
      natIpAllocateOption: (map['natIpAllocateOption'] as String).input(),
      natIps: ((map['natIps'] as List).cast<String>()).input(),
      sourceSubnetworkIpRangesToNat: (map['sourceSubnetworkIpRangesToNat'] as String).input(),
      tcpEstablishedIdleTimeoutSec: (map['tcpEstablishedIdleTimeoutSec'] as int).input(),
      tcpTransitoryIdleTimeoutSec: (map['tcpTransitoryIdleTimeoutSec'] as int).input(),
      udpIdleTimeoutSec: (map['udpIdleTimeoutSec'] as int).input(),
    );
  }
}

