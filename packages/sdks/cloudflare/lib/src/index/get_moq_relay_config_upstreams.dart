// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_moq_relay_config_upstreams_upstream.dart';

class GetMoqRelayConfigUpstreams {
  final pulumi.Input<bool> enabled;
  /// Ordered list of upstream MOQT server publishers. Each entry is an
  /// object (not a bare string) so per-upstream configuration can be
  /// added in the future without another breaking change.
  final pulumi.Input<List<GetMoqRelayConfigUpstreamsUpstream>> upstreams;

  /// Creates a new [GetMoqRelayConfigUpstreams].
  /// [enabled] Required.
  /// [upstreams] Ordered list of upstream MOQT server publishers. Each entry is an
  const GetMoqRelayConfigUpstreams({
    required this.enabled,
    required this.upstreams,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'upstreams': pulumi.Input.mapInputValue<List<GetMoqRelayConfigUpstreamsUpstream>, List<Map<String, dynamic>>>(upstreams, (value) => pulumi.Input.encodeList<GetMoqRelayConfigUpstreamsUpstream, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetMoqRelayConfigUpstreams.fromMap(Map<String, dynamic> map) {
    return GetMoqRelayConfigUpstreams(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      upstreams: pulumi.Input.fromValue(pulumi.Input.decodeList<GetMoqRelayConfigUpstreamsUpstream>(map['upstreams']!, (value) => GetMoqRelayConfigUpstreamsUpstream.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
