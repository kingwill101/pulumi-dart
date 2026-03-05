// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_port_allowed_address_pair.dart';
import 'get_port_binding.dart';
import 'get_port_extra_dhcp_option.dart';

/// Result data returned by getPort.
class GetPortResult {
  /// See Argument Reference above.
  final bool? adminStateUp;
  /// The collection of Fixed IP addresses on the port in the
  /// order returned by the Network v2 API.
  final List<String> allFixedIps;
  /// The set of security group IDs applied on the port.
  final List<String> allSecurityGroupIds;
  /// The set of string tags applied on the port.
  final List<String> allTags;
  /// An IP/MAC Address pair of additional IP
  /// addresses that can be active on this port. The structure is described
  /// below.
  final List<GetPortAllowedAddressPair> allowedAddressPairs;
  /// The port binding information. The structure is described below.
  final List<GetPortBinding> bindings;
  /// See Argument Reference above.
  final String? description;
  /// See Argument Reference above.
  final String? deviceId;
  /// See Argument Reference above.
  final String? deviceOwner;
  /// The list of maps representing port DNS assignments.
  final List<Map<String, String>> dnsAssignments;
  /// See Argument Reference above.
  final String? dnsName;
  /// An extra DHCP option configured on the port.
  /// The structure is described below.
  final List<GetPortExtraDhcpOption> extraDhcpOptions;
  final String? fixedIp;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The additional MAC address.
  final String? macAddress;
  /// Name of the DHCP option.
  final String? name;
  /// See Argument Reference above.
  final String? networkId;
  /// See Argument Reference above.
  final String? portId;
  /// See Argument Reference above.
  final String? projectId;
  /// See Argument Reference above.
  final String? region;
  final List<String>? securityGroupIds;
  final String? status;
  final List<String>? tags;
  final String? tenantId;

  /// Creates a new [GetPortResult].
  /// [adminStateUp] See Argument Reference above.
  /// [allFixedIps] The collection of Fixed IP addresses on the port in the
  /// [allSecurityGroupIds] The set of security group IDs applied on the port.
  /// [allTags] The set of string tags applied on the port.
  /// [allowedAddressPairs] An IP/MAC Address pair of additional IP
  /// [bindings] The port binding information. The structure is described below.
  /// [description] See Argument Reference above.
  /// [deviceId] See Argument Reference above.
  /// [deviceOwner] See Argument Reference above.
  /// [dnsAssignments] The list of maps representing port DNS assignments.
  /// [dnsName] See Argument Reference above.
  /// [extraDhcpOptions] An extra DHCP option configured on the port.
  /// [fixedIp] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [macAddress] The additional MAC address.
  /// [name] Name of the DHCP option.
  /// [networkId] See Argument Reference above.
  /// [portId] See Argument Reference above.
  /// [projectId] See Argument Reference above.
  /// [region] See Argument Reference above.
  /// [securityGroupIds] Optional.
  /// [status] Optional.
  /// [tags] Optional.
  /// [tenantId] Optional.
  GetPortResult({
    this.adminStateUp,
    required this.allFixedIps,
    required this.allSecurityGroupIds,
    required this.allTags,
    required this.allowedAddressPairs,
    required this.bindings,
    this.description,
    this.deviceId,
    this.deviceOwner,
    required this.dnsAssignments,
    this.dnsName,
    required this.extraDhcpOptions,
    this.fixedIp,
    required this.id,
    this.macAddress,
    this.name,
    this.networkId,
    this.portId,
    this.projectId,
    this.region,
    this.securityGroupIds,
    this.status,
    this.tags,
    this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminStateUp': ?adminStateUp,
      'allFixedIps': allFixedIps,
      'allSecurityGroupIds': allSecurityGroupIds,
      'allTags': allTags,
      'allowedAddressPairs': pulumi.Input.encodeList<GetPortAllowedAddressPair, Map<String, dynamic>>(allowedAddressPairs, (value) => value.toMap()),
      'bindings': pulumi.Input.encodeList<GetPortBinding, Map<String, dynamic>>(bindings, (value) => value.toMap()),
      'description': ?description,
      'deviceId': ?deviceId,
      'deviceOwner': ?deviceOwner,
      'dnsAssignments': dnsAssignments,
      'dnsName': ?dnsName,
      'extraDhcpOptions': pulumi.Input.encodeList<GetPortExtraDhcpOption, Map<String, dynamic>>(extraDhcpOptions, (value) => value.toMap()),
      'fixedIp': ?fixedIp,
      'id': id,
      'macAddress': ?macAddress,
      'name': ?name,
      'networkId': ?networkId,
      'portId': ?portId,
      'projectId': ?projectId,
      'region': ?region,
      'securityGroupIds': ?securityGroupIds,
      'status': ?status,
      'tags': ?tags,
      'tenantId': ?tenantId,
    };
  }

  factory GetPortResult.fromMap(Map<String, dynamic> map) {
    return GetPortResult(
      adminStateUp: (() { final guardedValue = map['adminStateUp']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      allFixedIps: (map['allFixedIps'] as List).cast<String>(),
      allSecurityGroupIds: (map['allSecurityGroupIds'] as List).cast<String>(),
      allTags: (map['allTags'] as List).cast<String>(),
      allowedAddressPairs: pulumi.Input.decodeList<GetPortAllowedAddressPair>(map['allowedAddressPairs']!, (value) => GetPortAllowedAddressPair.fromMap((value as Map).cast<String, dynamic>())),
      bindings: pulumi.Input.decodeList<GetPortBinding>(map['bindings']!, (value) => GetPortBinding.fromMap((value as Map).cast<String, dynamic>())),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deviceId: (() { final guardedValue = map['deviceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deviceOwner: (() { final guardedValue = map['deviceOwner']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dnsAssignments: (map['dnsAssignments'] as List).cast<Map<String, String>>(),
      dnsName: (() { final guardedValue = map['dnsName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      extraDhcpOptions: pulumi.Input.decodeList<GetPortExtraDhcpOption>(map['extraDhcpOptions']!, (value) => GetPortExtraDhcpOption.fromMap((value as Map).cast<String, dynamic>())),
      fixedIp: (() { final guardedValue = map['fixedIp']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      macAddress: (() { final guardedValue = map['macAddress']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      networkId: (() { final guardedValue = map['networkId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      portId: (() { final guardedValue = map['portId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      projectId: (() { final guardedValue = map['projectId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      securityGroupIds: (() { final guardedValue = map['securityGroupIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

