// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents a relationship between two domains which makes it possible for users in one domain to be authenticated by a dc in another domain. Refer https://docs.microsoft.com/en-us/previous-versions/windows/it-pro/windows-server-2008-R2-and-2008/cc731335(v%3dws.10) If the trust is being changed, it will be placed into the UPDATING state, which indicates that the resource is being reconciled. At this point, Get will reflect an intermediate state.
class TrustResponseManagedidentitiesV1alpha1 {
  /// The time the instance was created.
  final pulumi.Input<String> createTime;
  /// The last heartbeat time when the trust was known to be connected.
  final pulumi.Input<String> lastKnownTrustConnectedHeartbeatTime;
  /// The trust authentication type which decides whether the trusted side has forest/domain wide access or selective access to approved set of resources.
  final pulumi.Input<bool> selectiveAuthentication;
  /// The current state of this trust.
  final pulumi.Input<String> state;
  /// Additional information about the current state of this trust, if available.
  final pulumi.Input<String> stateDescription;
  /// The target dns server ip addresses which can resolve the remote domain involved in trust.
  final pulumi.Input<List<String>> targetDnsIpAddresses;
  /// The fully qualified target domain name which will be in trust with current domain.
  final pulumi.Input<String> targetDomainName;
  /// The trust direction decides the current domain is trusted, trusting or both.
  final pulumi.Input<String> trustDirection;
  /// Input only, and will not be stored. The trust secret used for handshake with target domain.
  final pulumi.Input<String> trustHandshakeSecret;
  /// The type of trust represented by the trust resource.
  final pulumi.Input<String> trustType;
  /// Last update time.
  final pulumi.Input<String> updateTime;

  /// Creates a new [TrustResponseManagedidentitiesV1alpha1].
  /// [createTime] The time the instance was created.
  /// [lastKnownTrustConnectedHeartbeatTime] The last heartbeat time when the trust was known to be connected.
  /// [selectiveAuthentication] The trust authentication type which decides whether the trusted side has forest/domain wide access or selective access to approved set of resources.
  /// [state] The current state of this trust.
  /// [stateDescription] Additional information about the current state of this trust, if available.
  /// [targetDnsIpAddresses] The target dns server ip addresses which can resolve the remote domain involved in trust.
  /// [targetDomainName] The fully qualified target domain name which will be in trust with current domain.
  /// [trustDirection] The trust direction decides the current domain is trusted, trusting or both.
  /// [trustHandshakeSecret] Input only, and will not be stored. The trust secret used for handshake with target domain.
  /// [trustType] The type of trust represented by the trust resource.
  /// [updateTime] Last update time.
  TrustResponseManagedidentitiesV1alpha1({
    required this.createTime,
    required this.lastKnownTrustConnectedHeartbeatTime,
    required this.selectiveAuthentication,
    required this.state,
    required this.stateDescription,
    required this.targetDnsIpAddresses,
    required this.targetDomainName,
    required this.trustDirection,
    required this.trustHandshakeSecret,
    required this.trustType,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'lastKnownTrustConnectedHeartbeatTime': lastKnownTrustConnectedHeartbeatTime,
      'selectiveAuthentication': selectiveAuthentication,
      'state': state,
      'stateDescription': stateDescription,
      'targetDnsIpAddresses': targetDnsIpAddresses,
      'targetDomainName': targetDomainName,
      'trustDirection': trustDirection,
      'trustHandshakeSecret': trustHandshakeSecret,
      'trustType': trustType,
      'updateTime': updateTime,
    };
  }

  factory TrustResponseManagedidentitiesV1alpha1.fromMap(Map<String, dynamic> map) {
    return TrustResponseManagedidentitiesV1alpha1(
      createTime: (map['createTime'] as String).input(),
      lastKnownTrustConnectedHeartbeatTime: (map['lastKnownTrustConnectedHeartbeatTime'] as String).input(),
      selectiveAuthentication: (map['selectiveAuthentication'] as bool).input(),
      state: (map['state'] as String).input(),
      stateDescription: (map['stateDescription'] as String).input(),
      targetDnsIpAddresses: ((map['targetDnsIpAddresses'] as List).cast<String>()).input(),
      targetDomainName: (map['targetDomainName'] as String).input(),
      trustDirection: (map['trustDirection'] as String).input(),
      trustHandshakeSecret: (map['trustHandshakeSecret'] as String).input(),
      trustType: (map['trustType'] as String).input(),
      updateTime: (map['updateTime'] as String).input(),
    );
  }
}

