// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_listener_v2_l7policy.dart';
import 'get_listener_v2_loadbalancer.dart';
import 'get_listener_v2_pool.dart';

/// Result data returned by getListenerV2.
class GetListenerV2Result {
  /// The administrative state of the Listener.
  final bool adminStateUp;

  /// A list of IPv4, IPv6 or mix of both CIDRs.
  final List<String> allowedCidrs;

  /// A list of ALPN protocols.
  final List<String> alpnProtocols;

  /// The TLS client authentication mode.
  final String clientAuthentication;

  /// The ref of the key manager service secret
  /// containing a PEM format client CA certificate bundle for TERMINATED_HTTPS listeners.
  final String clientCaTlsContainerRef;

  /// The URI of the key manager service secret
  /// containing a PEM format CA revocation list file for TERMINATED_HTTPS listeners.
  final String clientCrlContainerRef;

  /// The maximum number of connections allowed for the Loadbalancer.
  final int connectionLimit;

  /// The default pool with which the Listener is associated.
  final String defaultPool;

  /// The UUID of default pool.
  final String defaultPoolId;

  /// A reference to a Barbican container of TLS secrets.
  final String defaultTlsContainerRef;

  /// The description of the listener.
  final String description;

  /// Defines whether the includeSubDomains directive
  /// should be added to the Strict-Transport-Security HTTP response header.
  final bool hstsIncludeSubdomains;

  /// The value of the max_age directive for the
  /// Strict-Transport-Security HTTP response header.
  final int hstsMaxAge;

  /// Defines whether the preload directive should be added to the
  /// Strict-Transport-Security HTTP response header.
  final bool hstsPreload;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// A dictionary of optional headers to insert into the request
  /// before it is sent to the backend member.
  final Map<String, String> insertHeaders;

  /// L7policies are the L7 policies which are part of this listener.
  final List<GetListenerV2L7policy> l7policies;
  final String listenerId;
  final String loadbalancerId;

  /// A list of load balancer IDs.
  final List<GetListenerV2Loadbalancer> loadbalancers;

  /// The name of the listener.
  final String name;

  /// The operating status of the resource.
  final String operatingStatus;

  /// Pools are the pools which are part of this listener.
  final List<GetListenerV2Pool> pools;

  /// The owner (project/tenant) ID of the listener.
  final String projectId;

  /// The protocol to loadbalance.
  final String protocol;

  /// The port on which to listen to client traffic that is
  /// associated with the Loadbalancer.
  final int protocolPort;

  /// The provisioning status of the Listener.
  final String provisioningStatus;
  final String region;

  /// The list of references to TLS secrets.
  final List<String> sniContainerRefs;

  /// Tags is a list of resource tags.
  final List<String> tags;

  /// Frontend client inactivity timeout in milliseconds.
  final int timeoutClientData;

  /// Backend member connection timeout in milliseconds.
  final int timeoutMemberConnect;

  /// Backend member inactivity timeout in milliseconds.
  final int timeoutMemberData;

  /// Time, in milliseconds, to wait for additional TCP
  /// packets for content inspection.
  final int timeoutTcpInspect;

  /// List of ciphers in OpenSSL format (colon-separated).
  final String tlsCiphers;

  /// A list of TLS protocol versions.
  final List<String> tlsVersions;

  /// Creates a new [GetListenerV2Result].
  /// [adminStateUp] The administrative state of the Listener.
  /// [allowedCidrs] A list of IPv4, IPv6 or mix of both CIDRs.
  /// [alpnProtocols] A list of ALPN protocols.
  /// [clientAuthentication] The TLS client authentication mode.
  /// [clientCaTlsContainerRef] The ref of the key manager service secret
  /// [clientCrlContainerRef] The URI of the key manager service secret
  /// [connectionLimit] The maximum number of connections allowed for the Loadbalancer.
  /// [defaultPool] The default pool with which the Listener is associated.
  /// [defaultPoolId] The UUID of default pool.
  /// [defaultTlsContainerRef] A reference to a Barbican container of TLS secrets.
  /// [description] The description of the listener.
  /// [hstsIncludeSubdomains] Defines whether the includeSubDomains directive
  /// [hstsMaxAge] The value of the max_age directive for the
  /// [hstsPreload] Defines whether the preload directive should be added to the
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [insertHeaders] A dictionary of optional headers to insert into the request
  /// [l7policies] L7policies are the L7 policies which are part of this listener.
  /// [listenerId] Required.
  /// [loadbalancerId] Required.
  /// [loadbalancers] A list of load balancer IDs.
  /// [name] The name of the listener.
  /// [operatingStatus] The operating status of the resource.
  /// [pools] Pools are the pools which are part of this listener.
  /// [projectId] The owner (project/tenant) ID of the listener.
  /// [protocol] The protocol to loadbalance.
  /// [protocolPort] The port on which to listen to client traffic that is
  /// [provisioningStatus] The provisioning status of the Listener.
  /// [region] Required.
  /// [sniContainerRefs] The list of references to TLS secrets.
  /// [tags] Tags is a list of resource tags.
  /// [timeoutClientData] Frontend client inactivity timeout in milliseconds.
  /// [timeoutMemberConnect] Backend member connection timeout in milliseconds.
  /// [timeoutMemberData] Backend member inactivity timeout in milliseconds.
  /// [timeoutTcpInspect] Time, in milliseconds, to wait for additional TCP
  /// [tlsCiphers] List of ciphers in OpenSSL format (colon-separated).
  /// [tlsVersions] A list of TLS protocol versions.
  GetListenerV2Result({
    required this.adminStateUp,
    required this.allowedCidrs,
    required this.alpnProtocols,
    required this.clientAuthentication,
    required this.clientCaTlsContainerRef,
    required this.clientCrlContainerRef,
    required this.connectionLimit,
    required this.defaultPool,
    required this.defaultPoolId,
    required this.defaultTlsContainerRef,
    required this.description,
    required this.hstsIncludeSubdomains,
    required this.hstsMaxAge,
    required this.hstsPreload,
    required this.id,
    required this.insertHeaders,
    required this.l7policies,
    required this.listenerId,
    required this.loadbalancerId,
    required this.loadbalancers,
    required this.name,
    required this.operatingStatus,
    required this.pools,
    required this.projectId,
    required this.protocol,
    required this.protocolPort,
    required this.provisioningStatus,
    required this.region,
    required this.sniContainerRefs,
    required this.tags,
    required this.timeoutClientData,
    required this.timeoutMemberConnect,
    required this.timeoutMemberData,
    required this.timeoutTcpInspect,
    required this.tlsCiphers,
    required this.tlsVersions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminStateUp': adminStateUp,
      'allowedCidrs': allowedCidrs,
      'alpnProtocols': alpnProtocols,
      'clientAuthentication': clientAuthentication,
      'clientCaTlsContainerRef': clientCaTlsContainerRef,
      'clientCrlContainerRef': clientCrlContainerRef,
      'connectionLimit': connectionLimit,
      'defaultPool': defaultPool,
      'defaultPoolId': defaultPoolId,
      'defaultTlsContainerRef': defaultTlsContainerRef,
      'description': description,
      'hstsIncludeSubdomains': hstsIncludeSubdomains,
      'hstsMaxAge': hstsMaxAge,
      'hstsPreload': hstsPreload,
      'id': id,
      'insertHeaders': insertHeaders,
      'l7policies':
          pulumi.Input.encodeList<GetListenerV2L7policy, Map<String, dynamic>>(
            l7policies,
            (value) => value.toMap(),
          ),
      'listenerId': listenerId,
      'loadbalancerId': loadbalancerId,
      'loadbalancers':
          pulumi.Input.encodeList<
            GetListenerV2Loadbalancer,
            Map<String, dynamic>
          >(loadbalancers, (value) => value.toMap()),
      'name': name,
      'operatingStatus': operatingStatus,
      'pools': pulumi.Input.encodeList<GetListenerV2Pool, Map<String, dynamic>>(
        pools,
        (value) => value.toMap(),
      ),
      'projectId': projectId,
      'protocol': protocol,
      'protocolPort': protocolPort,
      'provisioningStatus': provisioningStatus,
      'region': region,
      'sniContainerRefs': sniContainerRefs,
      'tags': tags,
      'timeoutClientData': timeoutClientData,
      'timeoutMemberConnect': timeoutMemberConnect,
      'timeoutMemberData': timeoutMemberData,
      'timeoutTcpInspect': timeoutTcpInspect,
      'tlsCiphers': tlsCiphers,
      'tlsVersions': tlsVersions,
    };
  }

  factory GetListenerV2Result.fromMap(Map<String, dynamic> map) {
    return GetListenerV2Result(
      adminStateUp: map['adminStateUp'] as bool,
      allowedCidrs: (map['allowedCidrs'] as List).cast<String>(),
      alpnProtocols: (map['alpnProtocols'] as List).cast<String>(),
      clientAuthentication: map['clientAuthentication'] as String,
      clientCaTlsContainerRef: map['clientCaTlsContainerRef'] as String,
      clientCrlContainerRef: map['clientCrlContainerRef'] as String,
      connectionLimit: map['connectionLimit'] as int,
      defaultPool: map['defaultPool'] as String,
      defaultPoolId: map['defaultPoolId'] as String,
      defaultTlsContainerRef: map['defaultTlsContainerRef'] as String,
      description: map['description'] as String,
      hstsIncludeSubdomains: map['hstsIncludeSubdomains'] as bool,
      hstsMaxAge: map['hstsMaxAge'] as int,
      hstsPreload: map['hstsPreload'] as bool,
      id: map['id'] as String,
      insertHeaders: (map['insertHeaders'] as Map).cast<String, String>(),
      l7policies: pulumi.Input.decodeList<GetListenerV2L7policy>(
        map['l7policies']!,
        (value) => GetListenerV2L7policy.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      listenerId: map['listenerId'] as String,
      loadbalancerId: map['loadbalancerId'] as String,
      loadbalancers: pulumi.Input.decodeList<GetListenerV2Loadbalancer>(
        map['loadbalancers']!,
        (value) => GetListenerV2Loadbalancer.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      name: map['name'] as String,
      operatingStatus: map['operatingStatus'] as String,
      pools: pulumi.Input.decodeList<GetListenerV2Pool>(
        map['pools']!,
        (value) =>
            GetListenerV2Pool.fromMap((value as Map).cast<String, dynamic>()),
      ),
      projectId: map['projectId'] as String,
      protocol: map['protocol'] as String,
      protocolPort: map['protocolPort'] as int,
      provisioningStatus: map['provisioningStatus'] as String,
      region: map['region'] as String,
      sniContainerRefs: (map['sniContainerRefs'] as List).cast<String>(),
      tags: (map['tags'] as List).cast<String>(),
      timeoutClientData: map['timeoutClientData'] as int,
      timeoutMemberConnect: map['timeoutMemberConnect'] as int,
      timeoutMemberData: map['timeoutMemberData'] as int,
      timeoutTcpInspect: map['timeoutTcpInspect'] as int,
      tlsCiphers: map['tlsCiphers'] as String,
      tlsVersions: (map['tlsVersions'] as List).cast<String>(),
    );
  }
}
