// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_version_for_discovery.dart';
import 'server_address_by_client_cidr.dart';

/// APIGroup contains the name, the supported versions, and the preferred version of a group.
class APIGroup {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final pulumi.Input<String>? apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final pulumi.Input<String>? kind;
  /// name is the name of the group.
  final pulumi.Input<String> name;
  /// preferredVersion is the version preferred by the API server, which probably is the storage version.
  final pulumi.Input<GroupVersionForDiscovery>? preferredVersion;
  /// a map of client CIDR to server address that is serving this group. This is to help clients reach servers in the most network-efficient way possible. Clients can use the appropriate server address as per the CIDR that they match. In case of multiple matches, clients should use the longest matching CIDR. The server returns only those CIDRs that it thinks that the client can match. For example: the master will return an internal IP CIDR only, if the client reaches the server using an internal IP. Server looks at X-Forwarded-For header or X-Real-Ip header or request.RemoteAddr (in that order) to get the client IP.
  final pulumi.Input<List<ServerAddressByClientCIDR>>? serverAddressByClientCIDRs;
  /// versions are the versions supported in this group.
  final pulumi.Input<List<GroupVersionForDiscovery>> versions;

  /// Creates a new [APIGroup].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [name] name is the name of the group.
  /// [preferredVersion] preferredVersion is the version preferred by the API server, which probably is the storage version.
  /// [serverAddressByClientCIDRs] a map of client CIDR to server address that is serving this group. This is to help clients reach servers in the most network-efficient way possible. Clients can use the appropriate server address as per the CIDR that they match. In case of multiple matches, clients should use the longest matching CIDR. The server returns only those CIDRs that it thinks that the client can match. For example: the master will return an internal IP CIDR only, if the client reaches the server using an internal IP. Server looks at X-Forwarded-For header or X-Real-Ip header or request.RemoteAddr (in that order) to get the client IP.
  /// [versions] versions are the versions supported in this group.
  APIGroup({
    this.apiVersion,
    this.kind,
    required this.name,
    this.preferredVersion,
    this.serverAddressByClientCIDRs,
    required this.versions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'kind': ?kind,
      'name': name,
      'preferredVersion': ?pulumi.Input.mapOptionalInputValue<GroupVersionForDiscovery, Map<String, dynamic>>(preferredVersion, (value) => value.toMap()),
      'serverAddressByClientCIDRs': ?pulumi.Input.mapOptionalInputValue<List<ServerAddressByClientCIDR>, List<Map<String, dynamic>>>(serverAddressByClientCIDRs, (value) => pulumi.Input.encodeList<ServerAddressByClientCIDR, Map<String, dynamic>>(value, (value) => value.toMap())),
      'versions': pulumi.Input.mapInputValue<List<GroupVersionForDiscovery>, List<Map<String, dynamic>>>(versions, (value) => pulumi.Input.encodeList<GroupVersionForDiscovery, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory APIGroup.fromMap(Map<String, dynamic> map) {
    return APIGroup(
      apiVersion: map['apiVersion'] == null ? null : (map['apiVersion'] as String).input(),
      kind: map['kind'] == null ? null : (map['kind'] as String).input(),
      name: (map['name'] as String).input(),
      preferredVersion: map['preferredVersion'] == null ? null : (GroupVersionForDiscovery.fromMap((map['preferredVersion'] as Map).cast<String, dynamic>())).input(),
      serverAddressByClientCIDRs: map['serverAddressByClientCIDRs'] == null ? null : (pulumi.Input.decodeList<ServerAddressByClientCIDR>(map['serverAddressByClientCIDRs'], (value) => ServerAddressByClientCIDR.fromMap((value as Map).cast<String, dynamic>()))).input(),
      versions: (pulumi.Input.decodeList<GroupVersionForDiscovery>(map['versions'], (value) => GroupVersionForDiscovery.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

