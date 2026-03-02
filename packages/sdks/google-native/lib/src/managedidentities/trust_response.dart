// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents a relationship between two domains. This allows a controller in one domain to authenticate a user in another domain. If the trust is being changed, it will be placed into the UPDATING state, which indicates that the resource is being reconciled. At this point, Get will reflect an intermediate state.
class TrustResponse {
  /// The time the instance was created.
  final pulumi.Input<String> createTime;
  /// The last heartbeat time when the trust was known to be connected.
  final pulumi.Input<String> lastTrustHeartbeatTime;
  /// Optional. The trust authentication type, which decides whether the trusted side has forest/domain wide access or selective access to an approved set of resources.
  final pulumi.Input<bool> selectiveAuthentication;
  /// The current state of the trust.
  final pulumi.Input<String> state;
  /// Additional information about the current state of the trust, if available.
  final pulumi.Input<String> stateDescription;
  /// The target DNS server IP addresses which can resolve the remote domain involved in the trust.
  final pulumi.Input<List<String>> targetDnsIpAddresses;
  /// The fully qualified target domain name which will be in trust with the current domain.
  final pulumi.Input<String> targetDomainName;
  /// The trust direction, which decides if the current domain is trusted, trusting, or both.
  final pulumi.Input<String> trustDirection;
  /// The trust secret used for the handshake with the target domain. This will not be stored.
  final pulumi.Input<String> trustHandshakeSecret;
  /// The type of trust represented by the trust resource.
  final pulumi.Input<String> trustType;
  /// The last update time.
  final pulumi.Input<String> updateTime;

  /// Creates a new [TrustResponse].
  /// [createTime] The time the instance was created.
  /// [lastTrustHeartbeatTime] The last heartbeat time when the trust was known to be connected.
  /// [selectiveAuthentication] Optional. The trust authentication type, which decides whether the trusted side has forest/domain wide access or selective access to an approved set of resources.
  /// [state] The current state of the trust.
  /// [stateDescription] Additional information about the current state of the trust, if available.
  /// [targetDnsIpAddresses] The target DNS server IP addresses which can resolve the remote domain involved in the trust.
  /// [targetDomainName] The fully qualified target domain name which will be in trust with the current domain.
  /// [trustDirection] The trust direction, which decides if the current domain is trusted, trusting, or both.
  /// [trustHandshakeSecret] The trust secret used for the handshake with the target domain. This will not be stored.
  /// [trustType] The type of trust represented by the trust resource.
  /// [updateTime] The last update time.
  TrustResponse({
    required this.createTime,
    required this.lastTrustHeartbeatTime,
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
      'lastTrustHeartbeatTime': lastTrustHeartbeatTime,
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

  factory TrustResponse.fromMap(Map<String, dynamic> map) {
    return TrustResponse(
      createTime: (map['createTime'] as String).input(),
      lastTrustHeartbeatTime: (map['lastTrustHeartbeatTime'] as String).input(),
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

