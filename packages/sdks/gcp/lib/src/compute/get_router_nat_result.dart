// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_router_nat_log_config.dart';
import 'get_router_nat_nat64_subnetwork.dart';
import 'get_router_nat_rule.dart';
import 'get_router_nat_subnetwork.dart';

/// Result data returned by getRouterNat.
class GetRouterNatResult {
  final String? autoNetworkTier;
  final String? deletionPolicy;
  final List<String>? drainNatIps;
  final bool? enableDynamicPortAllocation;
  final bool? enableEndpointIndependentMapping;
  final List<String>? endpointTypes;
  final int? icmpIdleTimeoutSec;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final List<String>? initialNatIps;
  final List<GetRouterNatLogConfig>? logConfigs;
  final int? maxPortsPerVm;
  final int? minPortsPerVm;
  final String? name;
  final List<GetRouterNatNat64Subnetwork>? nat64Subnetworks;
  final String? natIpAllocateOption;
  final List<String>? natIps;
  final String? project;
  final String? region;
  final String? router;
  final List<GetRouterNatRule>? rules;
  final String? sourceSubnetworkIpRangesToNat;
  final String? sourceSubnetworkIpRangesToNat64;
  final List<GetRouterNatSubnetwork>? subnetworks;
  final int? tcpEstablishedIdleTimeoutSec;
  final int? tcpTimeWaitTimeoutSec;
  final int? tcpTransitoryIdleTimeoutSec;
  final String? type;
  final int? udpIdleTimeoutSec;

  /// Creates a new [GetRouterNatResult].
  /// [autoNetworkTier] Optional.
  /// [deletionPolicy] Optional.
  /// [drainNatIps] Optional.
  /// [enableDynamicPortAllocation] Optional.
  /// [enableEndpointIndependentMapping] Optional.
  /// [endpointTypes] Optional.
  /// [icmpIdleTimeoutSec] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [initialNatIps] Optional.
  /// [logConfigs] Optional.
  /// [maxPortsPerVm] Optional.
  /// [minPortsPerVm] Optional.
  /// [name] Optional.
  /// [nat64Subnetworks] Optional.
  /// [natIpAllocateOption] Optional.
  /// [natIps] Optional.
  /// [project] Optional.
  /// [region] Optional.
  /// [router] Optional.
  /// [rules] Optional.
  /// [sourceSubnetworkIpRangesToNat] Optional.
  /// [sourceSubnetworkIpRangesToNat64] Optional.
  /// [subnetworks] Optional.
  /// [tcpEstablishedIdleTimeoutSec] Optional.
  /// [tcpTimeWaitTimeoutSec] Optional.
  /// [tcpTransitoryIdleTimeoutSec] Optional.
  /// [type] Optional.
  /// [udpIdleTimeoutSec] Optional.
  const GetRouterNatResult({
    this.autoNetworkTier,
    this.deletionPolicy,
    this.drainNatIps,
    this.enableDynamicPortAllocation,
    this.enableEndpointIndependentMapping,
    this.endpointTypes,
    this.icmpIdleTimeoutSec,
    this.id,
    this.initialNatIps,
    this.logConfigs,
    this.maxPortsPerVm,
    this.minPortsPerVm,
    this.name,
    this.nat64Subnetworks,
    this.natIpAllocateOption,
    this.natIps,
    this.project,
    this.region,
    this.router,
    this.rules,
    this.sourceSubnetworkIpRangesToNat,
    this.sourceSubnetworkIpRangesToNat64,
    this.subnetworks,
    this.tcpEstablishedIdleTimeoutSec,
    this.tcpTimeWaitTimeoutSec,
    this.tcpTransitoryIdleTimeoutSec,
    this.type,
    this.udpIdleTimeoutSec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoNetworkTier': ?autoNetworkTier,
      'deletionPolicy': ?deletionPolicy,
      'drainNatIps': ?drainNatIps,
      'enableDynamicPortAllocation': ?enableDynamicPortAllocation,
      'enableEndpointIndependentMapping': ?enableEndpointIndependentMapping,
      'endpointTypes': ?endpointTypes,
      'icmpIdleTimeoutSec': ?icmpIdleTimeoutSec,
      'id': ?id,
      'initialNatIps': ?initialNatIps,
      'logConfigs': ?(() { final guardedValue = logConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetRouterNatLogConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'maxPortsPerVm': ?maxPortsPerVm,
      'minPortsPerVm': ?minPortsPerVm,
      'name': ?name,
      'nat64Subnetworks': ?(() { final guardedValue = nat64Subnetworks; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetRouterNatNat64Subnetwork, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'natIpAllocateOption': ?natIpAllocateOption,
      'natIps': ?natIps,
      'project': ?project,
      'region': ?region,
      'router': ?router,
      'rules': ?(() { final guardedValue = rules; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetRouterNatRule, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'sourceSubnetworkIpRangesToNat': ?sourceSubnetworkIpRangesToNat,
      'sourceSubnetworkIpRangesToNat64': ?sourceSubnetworkIpRangesToNat64,
      'subnetworks': ?(() { final guardedValue = subnetworks; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetRouterNatSubnetwork, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'tcpEstablishedIdleTimeoutSec': ?tcpEstablishedIdleTimeoutSec,
      'tcpTimeWaitTimeoutSec': ?tcpTimeWaitTimeoutSec,
      'tcpTransitoryIdleTimeoutSec': ?tcpTransitoryIdleTimeoutSec,
      'type': ?type,
      'udpIdleTimeoutSec': ?udpIdleTimeoutSec,
    };
  }

  factory GetRouterNatResult.fromMap(Map<String, dynamic> map) {
    return GetRouterNatResult(
      autoNetworkTier: (() { final guardedValue = map['autoNetworkTier']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      drainNatIps: (() { final guardedValue = map['drainNatIps']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      enableDynamicPortAllocation: (() { final guardedValue = map['enableDynamicPortAllocation']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      enableEndpointIndependentMapping: (() { final guardedValue = map['enableEndpointIndependentMapping']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      endpointTypes: (() { final guardedValue = map['endpointTypes']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      icmpIdleTimeoutSec: (() { final guardedValue = map['icmpIdleTimeoutSec']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      initialNatIps: (() { final guardedValue = map['initialNatIps']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      logConfigs: (() { final guardedValue = map['logConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetRouterNatLogConfig>(guardedValue, (value) => GetRouterNatLogConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      maxPortsPerVm: (() { final guardedValue = map['maxPortsPerVm']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      minPortsPerVm: (() { final guardedValue = map['minPortsPerVm']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      nat64Subnetworks: (() { final guardedValue = map['nat64Subnetworks']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetRouterNatNat64Subnetwork>(guardedValue, (value) => GetRouterNatNat64Subnetwork.fromMap((value as Map).cast<String, dynamic>())); })(),
      natIpAllocateOption: (() { final guardedValue = map['natIpAllocateOption']; if (guardedValue == null) return null; return guardedValue as String; })(),
      natIps: (() { final guardedValue = map['natIps']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      router: (() { final guardedValue = map['router']; if (guardedValue == null) return null; return guardedValue as String; })(),
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetRouterNatRule>(guardedValue, (value) => GetRouterNatRule.fromMap((value as Map).cast<String, dynamic>())); })(),
      sourceSubnetworkIpRangesToNat: (() { final guardedValue = map['sourceSubnetworkIpRangesToNat']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sourceSubnetworkIpRangesToNat64: (() { final guardedValue = map['sourceSubnetworkIpRangesToNat64']; if (guardedValue == null) return null; return guardedValue as String; })(),
      subnetworks: (() { final guardedValue = map['subnetworks']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetRouterNatSubnetwork>(guardedValue, (value) => GetRouterNatSubnetwork.fromMap((value as Map).cast<String, dynamic>())); })(),
      tcpEstablishedIdleTimeoutSec: (() { final guardedValue = map['tcpEstablishedIdleTimeoutSec']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      tcpTimeWaitTimeoutSec: (() { final guardedValue = map['tcpTimeWaitTimeoutSec']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      tcpTransitoryIdleTimeoutSec: (() { final guardedValue = map['tcpTransitoryIdleTimeoutSec']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      udpIdleTimeoutSec: (() { final guardedValue = map['udpIdleTimeoutSec']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
    );
  }
}
