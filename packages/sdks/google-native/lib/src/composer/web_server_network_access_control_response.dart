// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'allowed_ip_range_response.dart';

/// Network-level access control policy for the Airflow web server.
class WebServerNetworkAccessControlResponse {
  /// A collection of allowed IP ranges with descriptions.
  final pulumi.Input<List<AllowedIpRangeResponse>> allowedIpRanges;

  /// Creates a new [WebServerNetworkAccessControlResponse].
  /// [allowedIpRanges] A collection of allowed IP ranges with descriptions.
  WebServerNetworkAccessControlResponse({
    required this.allowedIpRanges,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedIpRanges': pulumi.Input.mapInputValue<List<AllowedIpRangeResponse>, List<Map<String, dynamic>>>(allowedIpRanges, (value) => pulumi.Input.encodeList<AllowedIpRangeResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory WebServerNetworkAccessControlResponse.fromMap(Map<String, dynamic> map) {
    return WebServerNetworkAccessControlResponse(
      allowedIpRanges: pulumi.Input.fromValue(pulumi.Input.decodeList<AllowedIpRangeResponse>(map['allowedIpRanges']!, (value) => AllowedIpRangeResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

