// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'frontdoor_origin_private_link.dart';

/// Input properties used for looking up and filtering FrontdoorOrigin resources.
class FrontdoorOriginState {
  /// The ID of the Front Door Origin Group within which this Front Door Origin should exist. Changing this forces a new Front Door Origin to be created.
  final pulumi.Input<String>? cdnFrontdoorOriginGroupId;

  /// Specifies whether certificate name checks are enabled for this origin.
  final pulumi.Input<bool>? certificateNameCheckEnabled;

  /// Should the origin be enabled? Possible values are `true` or `false`. Defaults to `true`.
  final pulumi.Input<bool>? enabled;

  /// The IPv4 address, IPv6 address or Domain name of the Origin.
  ///
  /// !&gt; **Note:** This must be unique across all Front Door Origins within a Front Door Endpoint.
  final pulumi.Input<String>? hostName;

  /// The value of the HTTP port. Must be between `1` and `65535`. Defaults to `80`.
  final pulumi.Input<int>? httpPort;

  /// The value of the HTTPS port. Must be between `1` and `65535`. Defaults to `443`.
  final pulumi.Input<int>? httpsPort;

  /// The name which should be used for this Front Door Origin. Changing this forces a new Front Door Origin to be created.
  final pulumi.Input<String>? name;

  /// The host header value (an IPv4 address, IPv6 address or Domain name) which is sent to the origin with each request. If unspecified the hostname from the request will be used.
  ///
  /// &gt; **Note:** Azure Front Door Origins, such as Web Apps, Blob Storage, and Cloud Services require this host header value to match the origin's hostname. This field's value overrides the host header defined in the Front Door Endpoint. For more information on how to properly set the origin host header value please see the [product documentation](https://docs.microsoft.com/azure/frontdoor/origin?pivots=front-door-standard-premium#origin-host-header).
  final pulumi.Input<String>? originHostHeader;

  /// Priority of origin in given origin group for load balancing. Higher priorities will not be used for load balancing if any lower priority origin is healthy. Must be between `1` and `5` (inclusive). Defaults to `1`.
  final pulumi.Input<int>? priority;

  /// A `private_link` block as defined below.
  ///
  /// &gt; **Note:** Private Link requires that the Front Door Profile this Origin is hosted within is using the SKU `Premium_AzureFrontDoor` and that the `certificate_name_check_enabled` field is set to `true`.
  final pulumi.Input<FrontdoorOriginPrivateLink>? privateLink;

  /// The weight of the origin in a given origin group for load balancing. Must be between `1` and `1000`. Defaults to `500`.
  final pulumi.Input<int>? weight;

  /// Creates a new [FrontdoorOriginState].
  /// [cdnFrontdoorOriginGroupId] The ID of the Front Door Origin Group within which this Front Door Origin should exist. Changing this forces a new Front Door Origin to be created.
  /// [certificateNameCheckEnabled] Specifies whether certificate name checks are enabled for this origin.
  /// [enabled] Should the origin be enabled? Possible values are `true` or `false`. Defaults to `true`.
  /// [hostName] The IPv4 address, IPv6 address or Domain name of the Origin.
  /// [httpPort] The value of the HTTP port. Must be between `1` and `65535`. Defaults to `80`.
  /// [httpsPort] The value of the HTTPS port. Must be between `1` and `65535`. Defaults to `443`.
  /// [name] The name which should be used for this Front Door Origin. Changing this forces a new Front Door Origin to be created.
  /// [originHostHeader] The host header value (an IPv4 address, IPv6 address or Domain name) which is sent to the origin with each request. If unspecified the hostname from the request will be used.
  /// [priority] Priority of origin in given origin group for load balancing. Higher priorities will not be used for load balancing if any lower priority origin is healthy. Must be between `1` and `5` (inclusive). Defaults to `1`.
  /// [privateLink] A `private_link` block as defined below.
  /// [weight] The weight of the origin in a given origin group for load balancing. Must be between `1` and `1000`. Defaults to `500`.
  FrontdoorOriginState({
    this.cdnFrontdoorOriginGroupId,
    this.certificateNameCheckEnabled,
    this.enabled,
    this.hostName,
    this.httpPort,
    this.httpsPort,
    this.name,
    this.originHostHeader,
    this.priority,
    this.privateLink,
    this.weight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cdnFrontdoorOriginGroupId': ?cdnFrontdoorOriginGroupId,
      'certificateNameCheckEnabled': ?certificateNameCheckEnabled,
      'enabled': ?enabled,
      'hostName': ?hostName,
      'httpPort': ?httpPort,
      'httpsPort': ?httpsPort,
      'name': ?name,
      'originHostHeader': ?originHostHeader,
      'priority': ?priority,
      'privateLink':
          ?pulumi.Input.mapOptionalInputValue<
            FrontdoorOriginPrivateLink,
            Map<String, dynamic>
          >(privateLink, (value) => value.toMap()),
      'weight': ?weight,
    };
  }

  factory FrontdoorOriginState.fromMap(Map<String, dynamic> map) {
    return FrontdoorOriginState(
      cdnFrontdoorOriginGroupId: (() {
        final guardedValue = map['cdnFrontdoorOriginGroupId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      certificateNameCheckEnabled: (() {
        final guardedValue = map['certificateNameCheckEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      enabled: (() {
        final guardedValue = map['enabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      hostName: (() {
        final guardedValue = map['hostName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      httpPort: (() {
        final guardedValue = map['httpPort'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      httpsPort: (() {
        final guardedValue = map['httpsPort'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      originHostHeader: (() {
        final guardedValue = map['originHostHeader'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      priority: (() {
        final guardedValue = map['priority'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      privateLink: (() {
        final guardedValue = map['privateLink'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          FrontdoorOriginPrivateLink.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      weight: (() {
        final guardedValue = map['weight'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
