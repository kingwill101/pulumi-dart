// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'allowed_ip_range.dart';

/// Network-level access control policy for the Airflow web server.
class WebServerNetworkAccessControl {
  /// A collection of allowed IP ranges with descriptions.
  final pulumi.Input<List<AllowedIpRange>>? allowedIpRanges;

  /// Creates a new [WebServerNetworkAccessControl].
  /// [allowedIpRanges] A collection of allowed IP ranges with descriptions.
  WebServerNetworkAccessControl({
    this.allowedIpRanges,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedIpRanges': ?pulumi.Input.mapOptionalInputValue<List<AllowedIpRange>, List<Map<String, dynamic>>>(allowedIpRanges, (value) => pulumi.Input.encodeList<AllowedIpRange, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory WebServerNetworkAccessControl.fromMap(Map<String, dynamic> map) {
    return WebServerNetworkAccessControl(
      allowedIpRanges: map['allowedIpRanges'] == null ? null : (pulumi.Input.decodeList<AllowedIpRange>(map['allowedIpRanges']!, (value) => AllowedIpRange.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

