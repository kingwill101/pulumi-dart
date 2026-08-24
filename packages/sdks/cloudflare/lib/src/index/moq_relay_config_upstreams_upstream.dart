// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MoqRelayConfigUpstreamsUpstream {
  /// Upstream MOQT server publisher URL.
  final pulumi.Input<String?>? url;

  /// Creates a new [MoqRelayConfigUpstreamsUpstream].
  /// [url] Upstream MOQT server publisher URL.
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
