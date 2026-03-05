// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering FrontdoorEndpoint resources.
class FrontdoorEndpointState {
  /// The ID of the Front Door Profile within which this Front Door Endpoint should exist. Changing this forces a new Front Door Endpoint to be created.
  final pulumi.Input<String>? cdnFrontdoorProfileId;
  /// Specifies if this Front Door Endpoint is enabled? Defaults to `true`.
  final pulumi.Input<bool>? enabled;
  /// The host name of the Front Door Endpoint, in the format `{endpointName}.{dnsZone}` (for example, `contoso.azureedge.net`).
  final pulumi.Input<String>? hostName;
  /// The name which should be used for this Front Door Endpoint. Changing this forces a new Front Door Endpoint to be created.
  final pulumi.Input<String>? name;
  /// Specifies a mapping of tags which should be assigned to the Front Door Endpoint.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [FrontdoorEndpointState].
  /// [cdnFrontdoorProfileId] The ID of the Front Door Profile within which this Front Door Endpoint should exist. Changing this forces a new Front Door Endpoint to be created.
  /// [enabled] Specifies if this Front Door Endpoint is enabled? Defaults to `true`.
  /// [hostName] The host name of the Front Door Endpoint, in the format `{endpointName}.{dnsZone}` (for example, `contoso.azureedge.net`).
  /// [name] The name which should be used for this Front Door Endpoint. Changing this forces a new Front Door Endpoint to be created.
  /// [tags] Specifies a mapping of tags which should be assigned to the Front Door Endpoint.
  FrontdoorEndpointState({
    this.cdnFrontdoorProfileId,
    this.enabled,
    this.hostName,
    this.name,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cdnFrontdoorProfileId': ?cdnFrontdoorProfileId,
      'enabled': ?enabled,
      'hostName': ?hostName,
      'name': ?name,
      'tags': ?tags,
    };
  }

  factory FrontdoorEndpointState.fromMap(Map<String, dynamic> map) {
    return FrontdoorEndpointState(
      cdnFrontdoorProfileId: (() { final guardedValue = map['cdnFrontdoorProfileId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      hostName: (() { final guardedValue = map['hostName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

