// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'allowed_ip_range_composer_v1beta1.dart';

/// Network-level access control policy for the Airflow web server.
class WebServerNetworkAccessControlComposerV1beta1 {
  /// A collection of allowed IP ranges with descriptions.
  final pulumi.Input<List<AllowedIpRangeComposerV1beta1>>? allowedIpRanges;

  /// Creates a new [WebServerNetworkAccessControlComposerV1beta1].
  /// [allowedIpRanges] A collection of allowed IP ranges with descriptions.
  WebServerNetworkAccessControlComposerV1beta1({
    this.allowedIpRanges,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedIpRanges': ?pulumi.Input.mapOptionalInputValue<List<AllowedIpRangeComposerV1beta1>, List<Map<String, dynamic>>>(allowedIpRanges, (value) => pulumi.Input.encodeList<AllowedIpRangeComposerV1beta1, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory WebServerNetworkAccessControlComposerV1beta1.fromMap(Map<String, dynamic> map) {
    return WebServerNetworkAccessControlComposerV1beta1(
      allowedIpRanges: map['allowedIpRanges'] == null ? null : (pulumi.Input.decodeList<AllowedIpRangeComposerV1beta1>(map['allowedIpRanges']!, (value) => AllowedIpRangeComposerV1beta1.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

