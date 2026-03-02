// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Message contains the routing information to direct traffic to the proxy server.
class GoogleCloudBeyondcorpPartnerservicesV1alphaRoutingInfo {
  /// Proxy Auto-Configuration (PAC) URI.
  final pulumi.Input<String> pacUri;

  /// Creates a new [GoogleCloudBeyondcorpPartnerservicesV1alphaRoutingInfo].
  /// [pacUri] Proxy Auto-Configuration (PAC) URI.
  GoogleCloudBeyondcorpPartnerservicesV1alphaRoutingInfo({
    required this.pacUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pacUri': pacUri,
    };
  }

  factory GoogleCloudBeyondcorpPartnerservicesV1alphaRoutingInfo.fromMap(Map<String, dynamic> map) {
    return GoogleCloudBeyondcorpPartnerservicesV1alphaRoutingInfo(
      pacUri: (map['pacUri'] as String).input(),
    );
  }
}

