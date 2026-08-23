// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'allowed_ip_range.dart';

/// Network-level access control policy for the Airflow web server.
class WebServerNetworkAccessControl {
  /// A collection of allowed IP ranges with descriptions.
  final pulumi.Input<List<AllowedIpRange>>? allowedIpRanges;

  /// Creates a new [WebServerNetworkAccessControl].
  /// [allowedIpRanges] A collection of allowed IP ranges with descriptions.
  const WebServerNetworkAccessControl({
    this.allowedIpRanges,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedIpRanges': ?pulumi.Input.mapOptionalInputValue<List<AllowedIpRange>, List<Map<String, dynamic>>>(allowedIpRanges, (value) => pulumi.Input.encodeList<AllowedIpRange, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory WebServerNetworkAccessControl.fromMap(Map<String, dynamic> map) {
    return WebServerNetworkAccessControl(
      allowedIpRanges: (() { final guardedValue = map['allowedIpRanges']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AllowedIpRange>(guardedValue, (value) => AllowedIpRange.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
