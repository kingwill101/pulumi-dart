// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'no_wrapper.dart';
import 'oidc_token.dart';

/// Configuration for a push delivery endpoint.
class PushConfig {
  /// Optional. Endpoint configuration attributes that can be used to control different aspects of the message delivery. The only currently supported attribute is `x-goog-version`, which you can use to change the format of the pushed message. This attribute indicates the version of the data expected by the endpoint. This controls the shape of the pushed message (i.e., its fields and metadata). If not present during the `CreateSubscription` call, it will default to the version of the Pub/Sub API used to make such call. If not present in a `ModifyPushConfig` call, its value will not be changed. `GetSubscription` calls will always return a valid version, even if the subscription was created without this attribute. The only supported values for the `x-goog-version` attribute are: * `v1beta1`: uses the push format defined in the v1beta1 Pub/Sub API. * `v1` or `v1beta2`: uses the push format defined in the v1 Pub/Sub API. For example: `attributes { "x-goog-version": "v1" }`
  final pulumi.Input<Map<String, String>>? attributes;
  /// Optional. When set, the payload to the push endpoint is not wrapped.
  final pulumi.Input<NoWrapper>? noWrapper;
  /// Optional. If specified, Pub/Sub will generate and attach an OIDC JWT token as an `Authorization` header in the HTTP request for every pushed message.
  final pulumi.Input<OidcToken>? oidcToken;
  /// Optional. When set, the payload to the push endpoint is in the form of the JSON representation of a PubsubMessage (https://cloud.google.com/pubsub/docs/reference/rpc/google.pubsub.v1#pubsubmessage).
  final pulumi.Input<Map<String, dynamic>>? pubsubWrapper;
  /// Optional. A URL locating the endpoint to which messages should be pushed. For example, a Webhook endpoint might use `https://example.com/push`.
  final pulumi.Input<String>? pushEndpoint;

  /// Creates a new [PushConfig].
  /// [attributes] Optional. Endpoint configuration attributes that can be used to control different aspects of the message delivery. The only currently supported attribute is `x-goog-version`, which you can use to change the format of the pushed message. This attribute indicates the version of the data expected by the endpoint. This controls the shape of the pushed message (i.e., its fields and metadata). If not present during the `CreateSubscription` call, it will default to the version of the Pub/Sub API used to make such call. If not present in a `ModifyPushConfig` call, its value will not be changed. `GetSubscription` calls will always return a valid version, even if the subscription was created without this attribute. The only supported values for the `x-goog-version` attribute are: * `v1beta1`: uses the push format defined in the v1beta1 Pub/Sub API. * `v1` or `v1beta2`: uses the push format defined in the v1 Pub/Sub API. For example: `attributes { "x-goog-version": "v1" }`
  /// [noWrapper] Optional. When set, the payload to the push endpoint is not wrapped.
  /// [oidcToken] Optional. If specified, Pub/Sub will generate and attach an OIDC JWT token as an `Authorization` header in the HTTP request for every pushed message.
  /// [pubsubWrapper] Optional. When set, the payload to the push endpoint is in the form of the JSON representation of a PubsubMessage (https://cloud.google.com/pubsub/docs/reference/rpc/google.pubsub.v1#pubsubmessage).
  /// [pushEndpoint] Optional. A URL locating the endpoint to which messages should be pushed. For example, a Webhook endpoint might use `https://example.com/push`.
  const PushConfig({
    this.attributes,
    this.noWrapper,
    this.oidcToken,
    this.pubsubWrapper,
    this.pushEndpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributes': ?attributes,
      'noWrapper': ?pulumi.Input.mapOptionalInputValue<NoWrapper, Map<String, dynamic>>(noWrapper, (value) => value.toMap()),
      'oidcToken': ?pulumi.Input.mapOptionalInputValue<OidcToken, Map<String, dynamic>>(oidcToken, (value) => value.toMap()),
      'pubsubWrapper': ?pubsubWrapper,
      'pushEndpoint': ?pushEndpoint,
    };
  }

  factory PushConfig.fromMap(Map<String, dynamic> map) {
    return PushConfig(
      attributes: (() { final guardedValue = map['attributes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      noWrapper: (() { final guardedValue = map['noWrapper']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NoWrapper.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      oidcToken: (() { final guardedValue = map['oidcToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OidcToken.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      pubsubWrapper: (() { final guardedValue = map['pubsubWrapper']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      pushEndpoint: (() { final guardedValue = map['pushEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

