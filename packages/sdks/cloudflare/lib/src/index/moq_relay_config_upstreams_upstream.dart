// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MoqRelayConfigUpstreamsUpstream {
  /// Upstream MOQT server publisher URL. Must be an absolute URL with a
  /// host and a scheme the relay can dial: moqt:// (raw QUIC) or https://
  /// (WebTransport). Validated on update (PUT); rejected with 21013.
  final pulumi.Input<String?>? url;

  /// Creates a new [MoqRelayConfigUpstreamsUpstream].
  /// [url] Upstream MOQT server publisher URL. Must be an absolute URL with a
  const MoqRelayConfigUpstreamsUpstream({
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'url': ?url,
    };
  }

  factory MoqRelayConfigUpstreamsUpstream.fromMap(Map<String, dynamic> map) {
    return MoqRelayConfigUpstreamsUpstream(
      url: (() { final guardedValue = map['url']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
