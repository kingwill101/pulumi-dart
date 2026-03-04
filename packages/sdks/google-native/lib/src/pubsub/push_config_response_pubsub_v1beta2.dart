// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'oidc_token_response_pubsub_v1beta2.dart';

/// Configuration for a push delivery endpoint.
class PushConfigResponsePubsubV1beta2 {
  /// Endpoint configuration attributes. Every endpoint has a set of API supported attributes that can be used to control different aspects of the message delivery. The currently supported attribute is `x-goog-version`, which you can use to change the format of the push message. This attribute indicates the version of the data expected by the endpoint. This controls the shape of the envelope (i.e. its fields and metadata). The endpoint version is based on the version of the Pub/Sub API. If not present during the `CreateSubscription` call, it will default to the version of the API used to make such call. If not present during a `ModifyPushConfig` call, its value will not be changed. `GetSubscription` calls will always return a valid version, even if the subscription was created without this attribute. The possible values for this attribute are: * `v1beta1`: uses the push format defined in the v1beta1 Pub/Sub API. * `v1` or `v1beta2`: uses the push format defined in the v1 Pub/Sub API.
  final pulumi.Input<Map<String, String>> attributes;

  /// If specified, Pub/Sub will generate and attach an OIDC JWT token as an `Authorization` header in the HTTP request for every pushed message.
  final pulumi.Input<OidcTokenResponsePubsubV1beta2> oidcToken;

  /// A URL locating the endpoint to which messages should be pushed. For example, a Webhook endpoint might use "https://example.com/push".
  final pulumi.Input<String> pushEndpoint;

  /// Creates a new [PushConfigResponsePubsubV1beta2].
  /// [attributes] Endpoint configuration attributes. Every endpoint has a set of API supported attributes that can be used to control different aspects of the message delivery. The currently supported attribute is `x-goog-version`, which you can use to change the format of the push message. This attribute indicates the version of the data expected by the endpoint. This controls the shape of the envelope (i.e. its fields and metadata). The endpoint version is based on the version of the Pub/Sub API. If not present during the `CreateSubscription` call, it will default to the version of the API used to make such call. If not present during a `ModifyPushConfig` call, its value will not be changed. `GetSubscription` calls will always return a valid version, even if the subscription was created without this attribute. The possible values for this attribute are: * `v1beta1`: uses the push format defined in the v1beta1 Pub/Sub API. * `v1` or `v1beta2`: uses the push format defined in the v1 Pub/Sub API.
  /// [oidcToken] If specified, Pub/Sub will generate and attach an OIDC JWT token as an `Authorization` header in the HTTP request for every pushed message.
  /// [pushEndpoint] A URL locating the endpoint to which messages should be pushed. For example, a Webhook endpoint might use "https://example.com/push".
  PushConfigResponsePubsubV1beta2({
    required this.attributes,
    required this.oidcToken,
    required this.pushEndpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributes': attributes,
      'oidcToken':
          pulumi.Input.mapInputValue<
            OidcTokenResponsePubsubV1beta2,
            Map<String, dynamic>
          >(oidcToken, (value) => value.toMap()),
      'pushEndpoint': pushEndpoint,
    };
  }

  factory PushConfigResponsePubsubV1beta2.fromMap(Map<String, dynamic> map) {
    return PushConfigResponsePubsubV1beta2(
      attributes: pulumi.Input.fromValue(
        (map['attributes'] as Map).cast<String, String>(),
      ),
      oidcToken: pulumi.Input.fromValue(
        OidcTokenResponsePubsubV1beta2.fromMap(
          (map['oidcToken']! as Map).cast<String, dynamic>(),
        ),
      ),
      pushEndpoint: pulumi.Input.fromValue(map['pushEndpoint'] as String),
    );
  }
}
