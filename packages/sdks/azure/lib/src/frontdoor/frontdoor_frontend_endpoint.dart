// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FrontdoorFrontendEndpoint {
  /// Specifies the host name of the `frontend_endpoint`. Must be a domain name. In order to use a name.azurefd.net domain, the name value must match the Front Door name.
  final pulumi.Input<String> hostName;
  /// The ID of the FrontDoor.
  final pulumi.Input<String>? id;
  /// Specifies the name of the `frontend_endpoint`.
  final pulumi.Input<String> name;
  /// Whether to allow session affinity on this host. Valid options are `true` or `false` Defaults to `false`.
  final pulumi.Input<bool>? sessionAffinityEnabled;
  /// The TTL to use in seconds for session affinity, if applicable. Defaults to `0`.
  final pulumi.Input<int>? sessionAffinityTtlSeconds;
  /// Defines the Web Application Firewall policy `ID` for each host.
  final pulumi.Input<String>? webApplicationFirewallPolicyLinkId;

  /// Creates a new [FrontdoorFrontendEndpoint].
  /// [hostName] Specifies the host name of the `frontend_endpoint`. Must be a domain name. In order to use a name.azurefd.net domain, the name value must match the Front Door name.
  /// [id] The ID of the FrontDoor.
  /// [name] Specifies the name of the `frontend_endpoint`.
  /// [sessionAffinityEnabled] Whether to allow session affinity on this host. Valid options are `true` or `false` Defaults to `false`.
  /// [sessionAffinityTtlSeconds] The TTL to use in seconds for session affinity, if applicable. Defaults to `0`.
  /// [webApplicationFirewallPolicyLinkId] Defines the Web Application Firewall policy `ID` for each host.
  const FrontdoorFrontendEndpoint({
    required this.hostName,
    this.id,
    required this.name,
    this.sessionAffinityEnabled,
    this.sessionAffinityTtlSeconds,
    this.webApplicationFirewallPolicyLinkId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostName': hostName,
      'id': ?id,
      'name': name,
      'sessionAffinityEnabled': ?sessionAffinityEnabled,
      'sessionAffinityTtlSeconds': ?sessionAffinityTtlSeconds,
      'webApplicationFirewallPolicyLinkId': ?webApplicationFirewallPolicyLinkId,
    };
  }

  factory FrontdoorFrontendEndpoint.fromMap(Map<String, dynamic> map) {
    return FrontdoorFrontendEndpoint(
      hostName: pulumi.Input.fromValue(map['hostName'] as String),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      sessionAffinityEnabled: (() { final guardedValue = map['sessionAffinityEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      sessionAffinityTtlSeconds: (() { final guardedValue = map['sessionAffinityTtlSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      webApplicationFirewallPolicyLinkId: (() { final guardedValue = map['webApplicationFirewallPolicyLinkId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

