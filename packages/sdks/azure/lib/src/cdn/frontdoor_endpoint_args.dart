// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cdn_frontdoor_endpoint_frontdoor_endpoint_args_doc}
/// The set of arguments for FrontdoorEndpoint.
/// {@endtemplate}
/// {@macro pulumi_cdn_frontdoor_endpoint_frontdoor_endpoint_args_doc}
class FrontdoorEndpointArgs {
  /// The ID of the Front Door Profile within which this Front Door Endpoint should exist. Changing this forces a new Front Door Endpoint to be created.
  final pulumi.Input<String> cdnFrontdoorProfileId;
  /// Specifies if this Front Door Endpoint is enabled? Defaults to `true`.
  final pulumi.Input<bool?>? enabled;
  /// The name which should be used for this Front Door Endpoint. Changing this forces a new Front Door Endpoint to be created.
  final pulumi.Input<String?>? name;
  /// Specifies a mapping of tags which should be assigned to the Front Door Endpoint.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [FrontdoorEndpointArgs].
  /// [cdnFrontdoorProfileId] The ID of the Front Door Profile within which this Front Door Endpoint should exist. Changing this forces a new Front Door Endpoint to be created.
  /// [enabled] Specifies if this Front Door Endpoint is enabled? Defaults to `true`.
  /// [name] The name which should be used for this Front Door Endpoint. Changing this forces a new Front Door Endpoint to be created.
  /// [tags] Specifies a mapping of tags which should be assigned to the Front Door Endpoint.
  const FrontdoorEndpointArgs({
    required this.cdnFrontdoorProfileId,
    this.enabled,
    this.name,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cdnFrontdoorProfileId': cdnFrontdoorProfileId,
      'enabled': ?enabled,
      'name': ?name,
      'tags': ?tags,
    };
  }

  factory FrontdoorEndpointArgs.fromMap(Map<String, dynamic> map) {
    return FrontdoorEndpointArgs(
      cdnFrontdoorProfileId: pulumi.Input.fromValue(map['cdnFrontdoorProfileId'] as String),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
