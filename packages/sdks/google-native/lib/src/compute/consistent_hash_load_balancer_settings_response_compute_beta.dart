// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'consistent_hash_load_balancer_settings_http_cookie_response_compute_beta.dart';

/// This message defines settings for a consistent hash style load balancer.
class ConsistentHashLoadBalancerSettingsResponseComputeBeta {
  /// Hash is based on HTTP Cookie. This field describes a HTTP cookie that will be used as the hash key for the consistent hash load balancer. If the cookie is not present, it will be generated. This field is applicable if the sessionAffinity is set to HTTP_COOKIE. Not supported when the backend service is referenced by a URL map that is bound to target gRPC proxy that has validateForProxyless field set to true.
  final pulumi.Input<
    ConsistentHashLoadBalancerSettingsHttpCookieResponseComputeBeta
  >
  httpCookie;

  /// The hash based on the value of the specified header field. This field is applicable if the sessionAffinity is set to HEADER_FIELD.
  final pulumi.Input<String> httpHeaderName;

  /// The minimum number of virtual nodes to use for the hash ring. Defaults to 1024. Larger ring sizes result in more granular load distributions. If the number of hosts in the load balancing pool is larger than the ring size, each host will be assigned a single virtual node.
  final pulumi.Input<String> minimumRingSize;

  /// Creates a new [ConsistentHashLoadBalancerSettingsResponseComputeBeta].
  /// [httpCookie] Hash is based on HTTP Cookie. This field describes a HTTP cookie that will be used as the hash key for the consistent hash load balancer. If the cookie is not present, it will be generated. This field is applicable if the sessionAffinity is set to HTTP_COOKIE. Not supported when the backend service is referenced by a URL map that is bound to target gRPC proxy that has validateForProxyless field set to true.
  /// [httpHeaderName] The hash based on the value of the specified header field. This field is applicable if the sessionAffinity is set to HEADER_FIELD.
  /// [minimumRingSize] The minimum number of virtual nodes to use for the hash ring. Defaults to 1024. Larger ring sizes result in more granular load distributions. If the number of hosts in the load balancing pool is larger than the ring size, each host will be assigned a single virtual node.
  ConsistentHashLoadBalancerSettingsResponseComputeBeta({
    required this.httpCookie,
    required this.httpHeaderName,
    required this.minimumRingSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'httpCookie':
          pulumi.Input.mapInputValue<
            ConsistentHashLoadBalancerSettingsHttpCookieResponseComputeBeta,
            Map<String, dynamic>
          >(httpCookie, (value) => value.toMap()),
      'httpHeaderName': httpHeaderName,
      'minimumRingSize': minimumRingSize,
    };
  }

  factory ConsistentHashLoadBalancerSettingsResponseComputeBeta.fromMap(
    Map<String, dynamic> map,
  ) {
    return ConsistentHashLoadBalancerSettingsResponseComputeBeta(
      httpCookie: pulumi.Input.fromValue(
        ConsistentHashLoadBalancerSettingsHttpCookieResponseComputeBeta.fromMap(
          (map['httpCookie']! as Map).cast<String, dynamic>(),
        ),
      ),
      httpHeaderName: pulumi.Input.fromValue(map['httpHeaderName'] as String),
      minimumRingSize: pulumi.Input.fromValue(map['minimumRingSize'] as String),
    );
  }
}
