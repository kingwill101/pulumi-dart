// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'server_address_by_client_cidr.dart';

/// APIVersions lists the versions that are available, to allow clients to discover the API at /api, which is the root path of the legacy v1 API.
class APIVersions {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final pulumi.Input<String?>? apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final pulumi.Input<String?>? kind;
  /// a map of client CIDR to server address that is serving this group. This is to help clients reach servers in the most network-efficient way possible. Clients can use the appropriate server address as per the CIDR that they match. In case of multiple matches, clients should use the longest matching CIDR. The server returns only those CIDRs that it thinks that the client can match. For example: the master will return an internal IP CIDR only, if the client reaches the server using an internal IP. Server looks at X-Forwarded-For header or X-Real-Ip header or request.RemoteAddr (in that order) to get the client IP.
  final pulumi.Input<List<ServerAddressByClientCIDR>> serverAddressByClientCIDRs;
  /// versions are the api versions that are available.
  final pulumi.Input<List<String>> versions;

  /// Creates a new [APIVersions].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [serverAddressByClientCIDRs] a map of client CIDR to server address that is serving this group. This is to help clients reach servers in the most network-efficient way possible. Clients can use the appropriate server address as per the CIDR that they match. In case of multiple matches, clients should use the longest matching CIDR. The server returns only those CIDRs that it thinks that the client can match. For example: the master will return an internal IP CIDR only, if the client reaches the server using an internal IP. Server looks at X-Forwarded-For header or X-Real-Ip header or request.RemoteAddr (in that order) to get the client IP.
  /// [versions] versions are the api versions that are available.
  const APIVersions({
    this.apiVersion,
    this.kind,
    required this.serverAddressByClientCIDRs,
    required this.versions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'kind': ?kind,
      'serverAddressByClientCIDRs': pulumi.Input.mapInputValue<List<ServerAddressByClientCIDR>, List<Map<String, dynamic>>>(serverAddressByClientCIDRs, (value) => pulumi.Input.encodeList<ServerAddressByClientCIDR, Map<String, dynamic>>(value, (value) => value.toMap())),
      'versions': versions,
    };
  }

  factory APIVersions.fromMap(Map<String, dynamic> map) {
    return APIVersions(
      apiVersion: (() { final guardedValue = map['apiVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serverAddressByClientCIDRs: pulumi.Input.fromValue(pulumi.Input.decodeList<ServerAddressByClientCIDR>(map['serverAddressByClientCIDRs']!, (value) => ServerAddressByClientCIDR.fromMap((value as Map).cast<String, dynamic>()))),
      versions: pulumi.Input.fromValue((map['versions'] as List).cast<String>()),
    );
  }
}
