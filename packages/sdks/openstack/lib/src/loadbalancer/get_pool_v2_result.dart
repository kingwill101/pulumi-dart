// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_pool_v2_listener.dart';
import 'get_pool_v2_loadbalancer.dart';
import 'get_pool_v2_member.dart';
import 'get_pool_v2_session_persistence.dart';

/// Result data returned by getPoolV2.
class GetPoolV2Result {
  /// The administrative state of the Pool, which is up (true)
  /// or down (false).
  final bool adminStateUp;

  /// A list of ALPN protocols.
  final List<String> alpnProtocols;

  /// The reference of the key manager service secret
  /// containing a PEM format CA certificate bundle for tls_enabled pools.
  final String caTlsContainerRef;

  /// The reference of the key manager service secret
  /// containing a PEM format CA revocation list file for tls_enabled pools.
  final String crlContainerRef;

  /// The description of the pool.
  final String description;

  /// The ID of associated health monitor.
  final String healthmonitorId;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// The load-balancer algorithm, which is round-robin,
  /// least-connections, and so on.
  final String lbMethod;

  /// A list of listeners objects IDs.
  final List<GetPoolV2Listener> listeners;
  final String loadbalancerId;

  /// A list of load balancer objects IDs.
  final List<GetPoolV2Loadbalancer> loadbalancers;

  /// A list of member objects IDs.
  final List<GetPoolV2Member> members;

  /// The name of the pool.
  final String name;

  /// The operating status of the pool.
  final String operatingStatus;
  final String poolId;

  /// The owner (project/tenant) ID of the pool.
  final String projectId;

  /// The protocol to loadbalance.
  final String protocol;

  /// The provisioning status of the pool.
  final String provisioningStatus;
  final String region;

  /// Indicates whether connections in the same session
  /// will be processed by the same Pool member or not.
  final List<GetPoolV2SessionPersistence> sessionPersistences;

  /// Tags is a list of resource tags.
  final List<String> tags;

  /// List of ciphers in OpenSSL format (colon-separated).
  final String tlsCiphers;

  /// The reference to the key manager service secret
  /// containing a PKCS12 format certificate/key bundle for tls_enabled pools for
  /// TLS client authentication to the member servers.
  final String tlsContainerRef;

  /// When true connections to backend member servers will use
  /// TLS encryption.
  final bool tlsEnabled;

  /// A list of TLS protocol versions.
  final List<String> tlsVersions;

  /// Creates a new [GetPoolV2Result].
  /// [adminStateUp] The administrative state of the Pool, which is up (true)
  /// [alpnProtocols] A list of ALPN protocols.
  /// [caTlsContainerRef] The reference of the key manager service secret
  /// [crlContainerRef] The reference of the key manager service secret
  /// [description] The description of the pool.
  /// [healthmonitorId] The ID of associated health monitor.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [lbMethod] The load-balancer algorithm, which is round-robin,
  /// [listeners] A list of listeners objects IDs.
  /// [loadbalancerId] Required.
  /// [loadbalancers] A list of load balancer objects IDs.
  /// [members] A list of member objects IDs.
  /// [name] The name of the pool.
  /// [operatingStatus] The operating status of the pool.
  /// [poolId] Required.
  /// [projectId] The owner (project/tenant) ID of the pool.
  /// [protocol] The protocol to loadbalance.
  /// [provisioningStatus] The provisioning status of the pool.
  /// [region] Required.
  /// [sessionPersistences] Indicates whether connections in the same session
  /// [tags] Tags is a list of resource tags.
  /// [tlsCiphers] List of ciphers in OpenSSL format (colon-separated).
  /// [tlsContainerRef] The reference to the key manager service secret
  /// [tlsEnabled] When true connections to backend member servers will use
  /// [tlsVersions] A list of TLS protocol versions.
  GetPoolV2Result({
    required this.adminStateUp,
    required this.alpnProtocols,
    required this.caTlsContainerRef,
    required this.crlContainerRef,
    required this.description,
    required this.healthmonitorId,
    required this.id,
    required this.lbMethod,
    required this.listeners,
    required this.loadbalancerId,
    required this.loadbalancers,
    required this.members,
    required this.name,
    required this.operatingStatus,
    required this.poolId,
    required this.projectId,
    required this.protocol,
    required this.provisioningStatus,
    required this.region,
    required this.sessionPersistences,
    required this.tags,
    required this.tlsCiphers,
    required this.tlsContainerRef,
    required this.tlsEnabled,
    required this.tlsVersions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminStateUp': adminStateUp,
      'alpnProtocols': alpnProtocols,
      'caTlsContainerRef': caTlsContainerRef,
      'crlContainerRef': crlContainerRef,
      'description': description,
      'healthmonitorId': healthmonitorId,
      'id': id,
      'lbMethod': lbMethod,
      'listeners':
          pulumi.Input.encodeList<GetPoolV2Listener, Map<String, dynamic>>(
            listeners,
            (value) => value.toMap(),
          ),
      'loadbalancerId': loadbalancerId,
      'loadbalancers':
          pulumi.Input.encodeList<GetPoolV2Loadbalancer, Map<String, dynamic>>(
            loadbalancers,
            (value) => value.toMap(),
          ),
      'members': pulumi.Input.encodeList<GetPoolV2Member, Map<String, dynamic>>(
        members,
        (value) => value.toMap(),
      ),
      'name': name,
      'operatingStatus': operatingStatus,
      'poolId': poolId,
      'projectId': projectId,
      'protocol': protocol,
      'provisioningStatus': provisioningStatus,
      'region': region,
      'sessionPersistences':
          pulumi.Input.encodeList<
            GetPoolV2SessionPersistence,
            Map<String, dynamic>
          >(sessionPersistences, (value) => value.toMap()),
      'tags': tags,
      'tlsCiphers': tlsCiphers,
      'tlsContainerRef': tlsContainerRef,
      'tlsEnabled': tlsEnabled,
      'tlsVersions': tlsVersions,
    };
  }

  factory GetPoolV2Result.fromMap(Map<String, dynamic> map) {
    return GetPoolV2Result(
      adminStateUp: map['adminStateUp'] as bool,
      alpnProtocols: (map['alpnProtocols'] as List).cast<String>(),
      caTlsContainerRef: map['caTlsContainerRef'] as String,
      crlContainerRef: map['crlContainerRef'] as String,
      description: map['description'] as String,
      healthmonitorId: map['healthmonitorId'] as String,
      id: map['id'] as String,
      lbMethod: map['lbMethod'] as String,
      listeners: pulumi.Input.decodeList<GetPoolV2Listener>(
        map['listeners']!,
        (value) =>
            GetPoolV2Listener.fromMap((value as Map).cast<String, dynamic>()),
      ),
      loadbalancerId: map['loadbalancerId'] as String,
      loadbalancers: pulumi.Input.decodeList<GetPoolV2Loadbalancer>(
        map['loadbalancers']!,
        (value) => GetPoolV2Loadbalancer.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      members: pulumi.Input.decodeList<GetPoolV2Member>(
        map['members']!,
        (value) =>
            GetPoolV2Member.fromMap((value as Map).cast<String, dynamic>()),
      ),
      name: map['name'] as String,
      operatingStatus: map['operatingStatus'] as String,
      poolId: map['poolId'] as String,
      projectId: map['projectId'] as String,
      protocol: map['protocol'] as String,
      provisioningStatus: map['provisioningStatus'] as String,
      region: map['region'] as String,
      sessionPersistences: pulumi.Input.decodeList<GetPoolV2SessionPersistence>(
        map['sessionPersistences']!,
        (value) => GetPoolV2SessionPersistence.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      tags: (map['tags'] as List).cast<String>(),
      tlsCiphers: map['tlsCiphers'] as String,
      tlsContainerRef: map['tlsContainerRef'] as String,
      tlsEnabled: map['tlsEnabled'] as bool,
      tlsVersions: (map['tlsVersions'] as List).cast<String>(),
    );
  }
}
