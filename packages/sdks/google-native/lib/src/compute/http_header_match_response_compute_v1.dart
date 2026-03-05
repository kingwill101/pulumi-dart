// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'int64_range_match_response_compute_v1.dart';

/// matchRule criteria for request header matches.
class HttpHeaderMatchResponseComputeV1 {
  /// The value should exactly match contents of exactMatch. Only one of exactMatch, prefixMatch, suffixMatch, regexMatch, presentMatch or rangeMatch must be set.
  final pulumi.Input<String> exactMatch;
  /// The name of the HTTP header to match. For matching against the HTTP request's authority, use a headerMatch with the header name ":authority". For matching a request's method, use the headerName ":method". When the URL map is bound to a target gRPC proxy that has the validateForProxyless field set to true, only non-binary user-specified custom metadata and the `content-type` header are supported. The following transport-level headers cannot be used in header matching rules: `:authority`, `:method`, `:path`, `:scheme`, `user-agent`, `accept-encoding`, `content-encoding`, `grpc-accept-encoding`, `grpc-encoding`, `grpc-previous-rpc-attempts`, `grpc-tags-bin`, `grpc-timeout` and `grpc-trace-bin`.
  final pulumi.Input<String> headerName;
  /// If set to false, the headerMatch is considered a match if the preceding match criteria are met. If set to true, the headerMatch is considered a match if the preceding match criteria are NOT met. The default setting is false.
  final pulumi.Input<bool> invertMatch;
  /// The value of the header must start with the contents of prefixMatch. Only one of exactMatch, prefixMatch, suffixMatch, regexMatch, presentMatch or rangeMatch must be set.
  final pulumi.Input<String> prefixMatch;
  /// A header with the contents of headerName must exist. The match takes place whether or not the request's header has a value. Only one of exactMatch, prefixMatch, suffixMatch, regexMatch, presentMatch or rangeMatch must be set.
  final pulumi.Input<bool> presentMatch;
  /// The header value must be an integer and its value must be in the range specified in rangeMatch. If the header does not contain an integer, number or is empty, the match fails. For example for a range [-5, 0] - -3 will match. - 0 will not match. - 0.25 will not match. - -3someString will not match. Only one of exactMatch, prefixMatch, suffixMatch, regexMatch, presentMatch or rangeMatch must be set. rangeMatch is not supported for load balancers that have loadBalancingScheme set to EXTERNAL.
  final pulumi.Input<Int64RangeMatchResponseComputeV1> rangeMatch;
  /// The value of the header must match the regular expression specified in regexMatch. For more information about regular expression syntax, see Syntax. For matching against a port specified in the HTTP request, use a headerMatch with headerName set to PORT and a regular expression that satisfies the RFC2616 Host header's port specifier. Only one of exactMatch, prefixMatch, suffixMatch, regexMatch, presentMatch or rangeMatch must be set. Regular expressions can only be used when the loadBalancingScheme is set to INTERNAL_SELF_MANAGED.
  final pulumi.Input<String> regexMatch;
  /// The value of the header must end with the contents of suffixMatch. Only one of exactMatch, prefixMatch, suffixMatch, regexMatch, presentMatch or rangeMatch must be set.
  final pulumi.Input<String> suffixMatch;

  /// Creates a new [HttpHeaderMatchResponseComputeV1].
  /// [exactMatch] The value should exactly match contents of exactMatch. Only one of exactMatch, prefixMatch, suffixMatch, regexMatch, presentMatch or rangeMatch must be set.
  /// [headerName] The name of the HTTP header to match. For matching against the HTTP request's authority, use a headerMatch with the header name ":authority". For matching a request's method, use the headerName ":method". When the URL map is bound to a target gRPC proxy that has the validateForProxyless field set to true, only non-binary user-specified custom metadata and the `content-type` header are supported. The following transport-level headers cannot be used in header matching rules: `:authority`, `:method`, `:path`, `:scheme`, `user-agent`, `accept-encoding`, `content-encoding`, `grpc-accept-encoding`, `grpc-encoding`, `grpc-previous-rpc-attempts`, `grpc-tags-bin`, `grpc-timeout` and `grpc-trace-bin`.
  /// [invertMatch] If set to false, the headerMatch is considered a match if the preceding match criteria are met. If set to true, the headerMatch is considered a match if the preceding match criteria are NOT met. The default setting is false.
  /// [prefixMatch] The value of the header must start with the contents of prefixMatch. Only one of exactMatch, prefixMatch, suffixMatch, regexMatch, presentMatch or rangeMatch must be set.
  /// [presentMatch] A header with the contents of headerName must exist. The match takes place whether or not the request's header has a value. Only one of exactMatch, prefixMatch, suffixMatch, regexMatch, presentMatch or rangeMatch must be set.
  /// [rangeMatch] The header value must be an integer and its value must be in the range specified in rangeMatch. If the header does not contain an integer, number or is empty, the match fails. For example for a range [-5, 0] - -3 will match. - 0 will not match. - 0.25 will not match. - -3someString will not match. Only one of exactMatch, prefixMatch, suffixMatch, regexMatch, presentMatch or rangeMatch must be set. rangeMatch is not supported for load balancers that have loadBalancingScheme set to EXTERNAL.
  /// [regexMatch] The value of the header must match the regular expression specified in regexMatch. For more information about regular expression syntax, see Syntax. For matching against a port specified in the HTTP request, use a headerMatch with headerName set to PORT and a regular expression that satisfies the RFC2616 Host header's port specifier. Only one of exactMatch, prefixMatch, suffixMatch, regexMatch, presentMatch or rangeMatch must be set. Regular expressions can only be used when the loadBalancingScheme is set to INTERNAL_SELF_MANAGED.
  /// [suffixMatch] The value of the header must end with the contents of suffixMatch. Only one of exactMatch, prefixMatch, suffixMatch, regexMatch, presentMatch or rangeMatch must be set.
  HttpHeaderMatchResponseComputeV1({
    required this.exactMatch,
    required this.headerName,
    required this.invertMatch,
    required this.prefixMatch,
    required this.presentMatch,
    required this.rangeMatch,
    required this.regexMatch,
    required this.suffixMatch,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exactMatch': exactMatch,
      'headerName': headerName,
      'invertMatch': invertMatch,
      'prefixMatch': prefixMatch,
      'presentMatch': presentMatch,
      'rangeMatch': pulumi.Input.mapInputValue<Int64RangeMatchResponseComputeV1, Map<String, dynamic>>(rangeMatch, (value) => value.toMap()),
      'regexMatch': regexMatch,
      'suffixMatch': suffixMatch,
    };
  }

  factory HttpHeaderMatchResponseComputeV1.fromMap(Map<String, dynamic> map) {
    return HttpHeaderMatchResponseComputeV1(
      exactMatch: pulumi.Input.fromValue(map['exactMatch'] as String),
      headerName: pulumi.Input.fromValue(map['headerName'] as String),
      invertMatch: pulumi.Input.fromValue(map['invertMatch'] as bool),
      prefixMatch: pulumi.Input.fromValue(map['prefixMatch'] as String),
      presentMatch: pulumi.Input.fromValue(map['presentMatch'] as bool),
      rangeMatch: pulumi.Input.fromValue(Int64RangeMatchResponseComputeV1.fromMap((map['rangeMatch']! as Map).cast<String, dynamic>())),
      regexMatch: pulumi.Input.fromValue(map['regexMatch'] as String),
      suffixMatch: pulumi.Input.fromValue(map['suffixMatch'] as String),
    );
  }
}

