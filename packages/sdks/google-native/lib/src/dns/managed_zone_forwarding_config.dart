// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_zone_forwarding_config_name_server_target.dart';

class ManagedZoneForwardingConfig {
  final pulumi.Input<String>? kind;

  /// List of target name servers to forward to. Cloud DNS selects the best available name server if more than one target is given.
  final pulumi.Input<List<ManagedZoneForwardingConfigNameServerTarget>>?
  targetNameServers;

  /// Creates a new [ManagedZoneForwardingConfig].
  /// [kind] Optional.
  /// [targetNameServers] List of target name servers to forward to. Cloud DNS selects the best available name server if more than one target is given.
  ManagedZoneForwardingConfig({this.kind, this.targetNameServers});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kind': ?kind,
      'targetNameServers':
          ?pulumi.Input.mapOptionalInputValue<
            List<ManagedZoneForwardingConfigNameServerTarget>,
            List<Map<String, dynamic>>
          >(
            targetNameServers,
            (value) =>
                pulumi.Input.encodeList<
                  ManagedZoneForwardingConfigNameServerTarget,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory ManagedZoneForwardingConfig.fromMap(Map<String, dynamic> map) {
    return ManagedZoneForwardingConfig(
      kind: (() {
        final guardedValue = map['kind'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      targetNameServers: (() {
        final guardedValue = map['targetNameServers'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ManagedZoneForwardingConfigNameServerTarget>(
            guardedValue,
            (value) => ManagedZoneForwardingConfigNameServerTarget.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
