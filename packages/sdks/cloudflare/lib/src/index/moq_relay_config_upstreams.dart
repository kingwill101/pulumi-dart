// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'moq_relay_config_upstreams_upstream.dart';

class MoqRelayConfigUpstreams {
  final pulumi.Input<bool?>? enabled;
  /// Ordered list of upstream MOQT server publishers. Each entry is an
  /// object (not a bare string) so per-upstream configuration can be
  /// added in the future without another breaking change.
  final pulumi.Input<List<MoqRelayConfigUpstreamsUpstream>?>? upstreams;

  /// Creates a new [MoqRelayConfigUpstreams].
  /// [enabled] Optional.
  /// [upstreams] Ordered list of upstream MOQT server publishers. Each entry is an
  const MoqRelayConfigUpstreams({
    this.enabled,
    this.upstreams,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'upstreams': ?pulumi.Input.mapOptionalInputValue<List<MoqRelayConfigUpstreamsUpstream>, List<Map<String, dynamic>>>(upstreams, (value) => pulumi.Input.encodeList<MoqRelayConfigUpstreamsUpstream, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory MoqRelayConfigUpstreams.fromMap(Map<String, dynamic> map) {
    return MoqRelayConfigUpstreams(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      upstreams: (() { final guardedValue = map['upstreams']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<MoqRelayConfigUpstreamsUpstream>(guardedValue, (value) => MoqRelayConfigUpstreamsUpstream.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
