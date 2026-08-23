// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'router_nat_log_config_response.dart';
import 'router_nat_rule_response.dart';
import 'router_nat_subnetwork_to_nat_response.dart';

/// Represents a Nat resource. It enables the VMs within the specified subnetworks to access Internet without external IP addresses. It specifies a list of subnetworks (and the ranges within) that want to use NAT. Customers can also provide the external IPs that would be used for NAT. GCP would auto-allocate ephemeral IPs if no external IPs are provided.
class RouterNatResponse {
  /// The network tier to use when automatically reserving NAT IP addresses. Must be one of: PREMIUM, STANDARD. If not specified, then the current project-level default tier is used.
  final pulumi.Input<String> autoNetworkTier;
  /// A list of URLs of the IP resources to be drained. These IPs must be valid static external IPs that have been assigned to the NAT. These IPs should be used for updating/patching a NAT only.
  final pulumi.Input<List<String>> drainNatIps;
  /// Enable Dynamic Port Allocation. If not specified, it is disabled by default. If set to true, - Dynamic Port Allocation will be enabled on this NAT config. - enableEndpointIndependentMapping cannot be set to true. - If minPorts is set, minPortsPerVm must be set to a power of two greater than or equal to 32. If minPortsPerVm is not set, a minimum of 32 ports will be allocated to a VM from this NAT config.
  final pulumi.Input<bool> enableDynamicPortAllocation;
  final pulumi.Input<bool> enableEndpointIndependentMapping;
  /// List of NAT-ted endpoint types supported by the Nat Gateway. If the list is empty, then it will be equivalent to include ENDPOINT_TYPE_VM
  final pulumi.Input<List<String>> endpointTypes;
  /// Timeout (in seconds) for ICMP connections. Defaults to 30s if not set.
  final pulumi.Input<int> icmpIdleTimeoutSec;
  /// Configure logging on this NAT.
  final pulumi.Input<RouterNatLogConfigResponse> logConfig;
  /// Maximum number of ports allocated to a VM from this NAT config when Dynamic Port Allocation is enabled. If Dynamic Port Allocation is not enabled, this field has no effect. If Dynamic Port Allocation is enabled, and this field is set, it must be set to a power of two greater than minPortsPerVm, or 64 if minPortsPerVm is not set. If Dynamic Port Allocation is enabled and this field is not set, a maximum of 65536 ports will be allocated to a VM from this NAT config.
  final pulumi.Input<int> maxPortsPerVm;
  /// Minimum number of ports allocated to a VM from this NAT config. If not set, a default number of ports is allocated to a VM. This is rounded up to the nearest power of 2. For example, if the value of this field is 50, at least 64 ports are allocated to a VM.
  final pulumi.Input<int> minPortsPerVm;
  /// Unique name of this Nat service. The name must be 1-63 characters long and comply with RFC1035.
  final pulumi.Input<String> name;
  /// Specify the NatIpAllocateOption, which can take one of the following values: - MANUAL_ONLY: Uses only Nat IP addresses provided by customers. When there are not enough specified Nat IPs, the Nat service fails for new VMs. - AUTO_ONLY: Nat IPs are allocated by Google Cloud Platform; customers can't specify any Nat IPs. When choosing AUTO_ONLY, then nat_ip should be empty.
  final pulumi.Input<String> natIpAllocateOption;
  /// A list of URLs of the IP resources used for this Nat service. These IP addresses must be valid static external IP addresses assigned to the project.
  final pulumi.Input<List<String>> natIps;
  /// A list of rules associated with this NAT.
  final pulumi.Input<List<RouterNatRuleResponse>> rules;
  /// Specify the Nat option, which can take one of the following values: - ALL_SUBNETWORKS_ALL_IP_RANGES: All of the IP ranges in every Subnetwork are allowed to Nat. - ALL_SUBNETWORKS_ALL_PRIMARY_IP_RANGES: All of the primary IP ranges in every Subnetwork are allowed to Nat. - LIST_OF_SUBNETWORKS: A list of Subnetworks are allowed to Nat (specified in the field subnetwork below) The default is SUBNETWORK_IP_RANGE_TO_NAT_OPTION_UNSPECIFIED. Note that if this field contains ALL_SUBNETWORKS_ALL_IP_RANGES then there should not be any other Router.Nat section in any Router for this network in this region.
  final pulumi.Input<String> sourceSubnetworkIpRangesToNat;
  /// A list of Subnetwork resources whose traffic should be translated by NAT Gateway. It is used only when LIST_OF_SUBNETWORKS is selected for the SubnetworkIpRangeToNatOption above.
  final pulumi.Input<List<RouterNatSubnetworkToNatResponse>> subnetworks;
  /// Timeout (in seconds) for TCP established connections. Defaults to 1200s if not set.
  final pulumi.Input<int> tcpEstablishedIdleTimeoutSec;
  /// Timeout (in seconds) for TCP connections that are in TIME_WAIT state. Defaults to 120s if not set.
  final pulumi.Input<int> tcpTimeWaitTimeoutSec;
  /// Timeout (in seconds) for TCP transitory connections. Defaults to 30s if not set.
  final pulumi.Input<int> tcpTransitoryIdleTimeoutSec;
  /// Indicates whether this NAT is used for public or private IP translation. If unspecified, it defaults to PUBLIC.
  final pulumi.Input<String> type;
  /// Timeout (in seconds) for UDP connections. Defaults to 30s if not set.
  final pulumi.Input<int> udpIdleTimeoutSec;

  /// Creates a new [RouterNatResponse].
  /// [autoNetworkTier] The network tier to use when automatically reserving NAT IP addresses. Must be one of: PREMIUM, STANDARD. If not specified, then the current project-level default tier is used.
  /// [drainNatIps] A list of URLs of the IP resources to be drained. These IPs must be valid static external IPs that have been assigned to the NAT. These IPs should be used for updating/patching a NAT only.
  /// [enableDynamicPortAllocation] Enable Dynamic Port Allocation. If not specified, it is disabled by default. If set to true, - Dynamic Port Allocation will be enabled on this NAT config. - enableEndpointIndependentMapping cannot be set to true. - If minPorts is set, minPortsPerVm must be set to a power of two greater than or equal to 32. If minPortsPerVm is not set, a minimum of 32 ports will be allocated to a VM from this NAT config.
  /// [enableEndpointIndependentMapping] Required.
  /// [endpointTypes] List of NAT-ted endpoint types supported by the Nat Gateway. If the list is empty, then it will be equivalent to include ENDPOINT_TYPE_VM
  /// [icmpIdleTimeoutSec] Timeout (in seconds) for ICMP connections. Defaults to 30s if not set.
  /// [logConfig] Configure logging on this NAT.
  /// [maxPortsPerVm] Maximum number of ports allocated to a VM from this NAT config when Dynamic Port Allocation is enabled. If Dynamic Port Allocation is not enabled, this field has no effect. If Dynamic Port Allocation is enabled, and this field is set, it must be set to a power of two greater than minPortsPerVm, or 64 if minPortsPerVm is not set. If Dynamic Port Allocation is enabled and this field is not set, a maximum of 65536 ports will be allocated to a VM from this NAT config.
  /// [minPortsPerVm] Minimum number of ports allocated to a VM from this NAT config. If not set, a default number of ports is allocated to a VM. This is rounded up to the nearest power of 2. For example, if the value of this field is 50, at least 64 ports are allocated to a VM.
  /// [name] Unique name of this Nat service. The name must be 1-63 characters long and comply with RFC1035.
  /// [natIpAllocateOption] Specify the NatIpAllocateOption, which can take one of the following values: - MANUAL_ONLY: Uses only Nat IP addresses provided by customers. When there are not enough specified Nat IPs, the Nat service fails for new VMs. - AUTO_ONLY: Nat IPs are allocated by Google Cloud Platform; customers can't specify any Nat IPs. When choosing AUTO_ONLY, then nat_ip should be empty.
  /// [natIps] A list of URLs of the IP resources used for this Nat service. These IP addresses must be valid static external IP addresses assigned to the project.
  /// [rules] A list of rules associated with this NAT.
  /// [sourceSubnetworkIpRangesToNat] Specify the Nat option, which can take one of the following values: - ALL_SUBNETWORKS_ALL_IP_RANGES: All of the IP ranges in every Subnetwork are allowed to Nat. - ALL_SUBNETWORKS_ALL_PRIMARY_IP_RANGES: All of the primary IP ranges in every Subnetwork are allowed to Nat. - LIST_OF_SUBNETWORKS: A list of Subnetworks are allowed to Nat (specified in the field subnetwork below) The default is SUBNETWORK_IP_RANGE_TO_NAT_OPTION_UNSPECIFIED. Note that if this field contains ALL_SUBNETWORKS_ALL_IP_RANGES then there should not be any other Router.Nat section in any Router for this network in this region.
  /// [subnetworks] A list of Subnetwork resources whose traffic should be translated by NAT Gateway. It is used only when LIST_OF_SUBNETWORKS is selected for the SubnetworkIpRangeToNatOption above.
  /// [tcpEstablishedIdleTimeoutSec] Timeout (in seconds) for TCP established connections. Defaults to 1200s if not set.
  /// [tcpTimeWaitTimeoutSec] Timeout (in seconds) for TCP connections that are in TIME_WAIT state. Defaults to 120s if not set.
  /// [tcpTransitoryIdleTimeoutSec] Timeout (in seconds) for TCP transitory connections. Defaults to 30s if not set.
  /// [type] Indicates whether this NAT is used for public or private IP translation. If unspecified, it defaults to PUBLIC.
  /// [udpIdleTimeoutSec] Timeout (in seconds) for UDP connections. Defaults to 30s if not set.
  const RouterNatResponse({
    required this.autoNetworkTier,
    required this.drainNatIps,
    required this.enableDynamicPortAllocation,
    required this.enableEndpointIndependentMapping,
    required this.endpointTypes,
    required this.icmpIdleTimeoutSec,
    required this.logConfig,
    required this.maxPortsPerVm,
    required this.minPortsPerVm,
    required this.name,
    required this.natIpAllocateOption,
    required this.natIps,
    required this.rules,
    required this.sourceSubnetworkIpRangesToNat,
    required this.subnetworks,
    required this.tcpEstablishedIdleTimeoutSec,
    required this.tcpTimeWaitTimeoutSec,
    required this.tcpTransitoryIdleTimeoutSec,
    required this.type,
    required this.udpIdleTimeoutSec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoNetworkTier': autoNetworkTier,
      'drainNatIps': drainNatIps,
      'enableDynamicPortAllocation': enableDynamicPortAllocation,
      'enableEndpointIndependentMapping': enableEndpointIndependentMapping,
      'endpointTypes': endpointTypes,
      'icmpIdleTimeoutSec': icmpIdleTimeoutSec,
      'logConfig': pulumi.Input.mapInputValue<RouterNatLogConfigResponse, Map<String, dynamic>>(logConfig, (value) => value.toMap()),
      'maxPortsPerVm': maxPortsPerVm,
      'minPortsPerVm': minPortsPerVm,
      'name': name,
      'natIpAllocateOption': natIpAllocateOption,
      'natIps': natIps,
      'rules': pulumi.Input.mapInputValue<List<RouterNatRuleResponse>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<RouterNatRuleResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sourceSubnetworkIpRangesToNat': sourceSubnetworkIpRangesToNat,
      'subnetworks': pulumi.Input.mapInputValue<List<RouterNatSubnetworkToNatResponse>, List<Map<String, dynamic>>>(subnetworks, (value) => pulumi.Input.encodeList<RouterNatSubnetworkToNatResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tcpEstablishedIdleTimeoutSec': tcpEstablishedIdleTimeoutSec,
      'tcpTimeWaitTimeoutSec': tcpTimeWaitTimeoutSec,
      'tcpTransitoryIdleTimeoutSec': tcpTransitoryIdleTimeoutSec,
      'type': type,
      'udpIdleTimeoutSec': udpIdleTimeoutSec,
    };
  }

  factory RouterNatResponse.fromMap(Map<String, dynamic> map) {
    return RouterNatResponse(
      autoNetworkTier: pulumi.Input.fromValue(map['autoNetworkTier'] as String),
      drainNatIps: pulumi.Input.fromValue((map['drainNatIps'] as List).cast<String>()),
      enableDynamicPortAllocation: pulumi.Input.fromValue(map['enableDynamicPortAllocation'] as bool),
      enableEndpointIndependentMapping: pulumi.Input.fromValue(map['enableEndpointIndependentMapping'] as bool),
      endpointTypes: pulumi.Input.fromValue((map['endpointTypes'] as List).cast<String>()),
      icmpIdleTimeoutSec: pulumi.Input.fromValue(map['icmpIdleTimeoutSec'] as int),
      logConfig: pulumi.Input.fromValue(RouterNatLogConfigResponse.fromMap((map['logConfig']! as Map).cast<String, dynamic>())),
      maxPortsPerVm: pulumi.Input.fromValue(map['maxPortsPerVm'] as int),
      minPortsPerVm: pulumi.Input.fromValue(map['minPortsPerVm'] as int),
      name: pulumi.Input.fromValue(map['name'] as String),
      natIpAllocateOption: pulumi.Input.fromValue(map['natIpAllocateOption'] as String),
      natIps: pulumi.Input.fromValue((map['natIps'] as List).cast<String>()),
      rules: pulumi.Input.fromValue(pulumi.Input.decodeList<RouterNatRuleResponse>(map['rules']!, (value) => RouterNatRuleResponse.fromMap((value as Map).cast<String, dynamic>()))),
      sourceSubnetworkIpRangesToNat: pulumi.Input.fromValue(map['sourceSubnetworkIpRangesToNat'] as String),
      subnetworks: pulumi.Input.fromValue(pulumi.Input.decodeList<RouterNatSubnetworkToNatResponse>(map['subnetworks']!, (value) => RouterNatSubnetworkToNatResponse.fromMap((value as Map).cast<String, dynamic>()))),
      tcpEstablishedIdleTimeoutSec: pulumi.Input.fromValue(map['tcpEstablishedIdleTimeoutSec'] as int),
      tcpTimeWaitTimeoutSec: pulumi.Input.fromValue(map['tcpTimeWaitTimeoutSec'] as int),
      tcpTransitoryIdleTimeoutSec: pulumi.Input.fromValue(map['tcpTransitoryIdleTimeoutSec'] as int),
      type: pulumi.Input.fromValue(map['type'] as String),
      udpIdleTimeoutSec: pulumi.Input.fromValue(map['udpIdleTimeoutSec'] as int),
    );
  }
}
