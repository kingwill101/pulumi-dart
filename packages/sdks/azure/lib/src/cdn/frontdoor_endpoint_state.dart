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
    pulumi.Output<String>? cdnFrontdoorProfileId,
    pulumi.Output<bool>? enabled,
    pulumi.Output<String>? hostName,
    pulumi.Output<String>? name,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      cdnFrontdoorProfileId = pulumi.Input.asOptionalInput<String>(cdnFrontdoorProfileId),
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      hostName = pulumi.Input.asOptionalInput<String>(hostName),
      name = pulumi.Input.asOptionalInput<String>(name),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      cdnFrontdoorProfileId: map['cdnFrontdoorProfileId'] == null ? null : pulumi.Output.create<String>(map['cdnFrontdoorProfileId'] as String),
      enabled: map['enabled'] == null ? null : pulumi.Output.create<bool>(map['enabled'] as bool),
      hostName: map['hostName'] == null ? null : pulumi.Output.create<String>(map['hostName'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

