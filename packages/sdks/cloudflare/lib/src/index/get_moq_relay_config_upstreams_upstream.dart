// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetMoqRelayConfigUpstreamsUpstream {
  /// Upstream MOQT server publisher URL. Must be an absolute URL with a
  /// host and a scheme the relay can dial: moqt:// (raw QUIC) or https://
  /// (WebTransport). Validated on update (PUT); rejected with 21013.
  final pulumi.Input<String> url;

  /// Creates a new [GetMoqRelayConfigUpstreamsUpstream].
  /// [url] Upstream MOQT server publisher URL. Must be an absolute URL with a
  const GetMoqRelayConfigUpstreamsUpstream({
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'url': url,
    };
  }

  factory GetMoqRelayConfigUpstreamsUpstream.fromMap(Map<String, dynamic> map) {
    return GetMoqRelayConfigUpstreamsUpstream(
      url: pulumi.Input.fromValue(map['url'] as String),
    );
  }
}
