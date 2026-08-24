// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetMoqRelayConfigUpstreamsUpstream {
  /// Upstream MOQT server publisher URL.
  final pulumi.Input<String> url;

  /// Creates a new [GetMoqRelayConfigUpstreamsUpstream].
  /// [url] Upstream MOQT server publisher URL.
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
