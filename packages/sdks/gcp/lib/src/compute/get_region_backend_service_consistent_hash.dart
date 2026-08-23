// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_region_backend_service_consistent_hash_http_cooky.dart';

class GetRegionBackendServiceConsistentHash {
  /// Hash is based on HTTP Cookie. This field describes a HTTP cookie
  /// that will be used as the hash key for the consistent hash load
  /// balancer. If the cookie is not present, it will be generated.
  /// This field is applicable if the sessionAffinity is set to HTTP_COOKIE.
  final pulumi.Input<List<GetRegionBackendServiceConsistentHashHttpCooky>> httpCookies;
  /// The hash based on the value of the specified header field.
  /// This field is applicable if the sessionAffinity is set to HEADER_FIELD.
  final pulumi.Input<String> httpHeaderName;
  /// The minimum number of virtual nodes to use for the hash ring.
  /// Larger ring sizes result in more granular load
  /// distributions. If the number of hosts in the load balancing pool
  /// is larger than the ring size, each host will be assigned a single
  /// virtual node.
  /// Defaults to 1024.
  final pulumi.Input<int> minimumRingSize;

  /// Creates a new [GetRegionBackendServiceConsistentHash].
  /// [httpCookies] Hash is based on HTTP Cookie. This field describes a HTTP cookie
  /// [httpHeaderName] The hash based on the value of the specified header field.
  /// [minimumRingSize] The minimum number of virtual nodes to use for the hash ring.
  const GetRegionBackendServiceConsistentHash({
    required this.httpCookies,
    required this.httpHeaderName,
    required this.minimumRingSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'httpCookies': pulumi.Input.mapInputValue<List<GetRegionBackendServiceConsistentHashHttpCooky>, List<Map<String, dynamic>>>(httpCookies, (value) => pulumi.Input.encodeList<GetRegionBackendServiceConsistentHashHttpCooky, Map<String, dynamic>>(value, (value) => value.toMap())),
      'httpHeaderName': httpHeaderName,
      'minimumRingSize': minimumRingSize,
    };
  }

  factory GetRegionBackendServiceConsistentHash.fromMap(Map<String, dynamic> map) {
    return GetRegionBackendServiceConsistentHash(
      httpCookies: pulumi.Input.fromValue(pulumi.Input.decodeList<GetRegionBackendServiceConsistentHashHttpCooky>(map['httpCookies']!, (value) => GetRegionBackendServiceConsistentHashHttpCooky.fromMap((value as Map).cast<String, dynamic>()))),
      httpHeaderName: pulumi.Input.fromValue(map['httpHeaderName'] as String),
      minimumRingSize: pulumi.Input.fromValue(map['minimumRingSize'] as int),
    );
  }
}
