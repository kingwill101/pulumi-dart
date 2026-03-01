// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'allowed_ip_range_response.dart';

/// Network-level access control policy for the Airflow web server.
class WebServerNetworkAccessControlResponse {
  /// A collection of allowed IP ranges with descriptions.
  final List<AllowedIpRangeResponse> allowedIpRanges;

  /// Creates a new [WebServerNetworkAccessControlResponse].
  /// [allowedIpRanges] A collection of allowed IP ranges with descriptions.
  WebServerNetworkAccessControlResponse({
    required this.allowedIpRanges,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedIpRanges': pulumi.Input.encodeList<AllowedIpRangeResponse, Map<String, dynamic>>(allowedIpRanges, (value) => value.toMap()),
    };
  }

  factory WebServerNetworkAccessControlResponse.fromMap(Map<String, dynamic> map) {
    return WebServerNetworkAccessControlResponse(
      allowedIpRanges: pulumi.Input.decodeList<AllowedIpRangeResponse>(map['allowedIpRanges'], (value) => AllowedIpRangeResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

