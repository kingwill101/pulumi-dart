// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_zone_forwarding_config_name_server_target_forwarding_path.dart';

class ManagedZoneForwardingConfigNameServerTarget {
  /// Forwarding path for this NameServerTarget. If unset or set to DEFAULT, Cloud DNS makes forwarding decisions based on IP address ranges; that is, RFC1918 addresses go to the VPC network, non-RFC1918 addresses go to the internet. When set to PRIVATE, Cloud DNS always sends queries through the VPC network for this target.
  final pulumi.Input<ManagedZoneForwardingConfigNameServerTargetForwardingPath>?
  forwardingPath;

  /// IPv4 address of a target name server.
  final pulumi.Input<String>? ipv4Address;

  /// IPv6 address of a target name server. Does not accept both fields (ipv4 & ipv6) being populated. Public preview as of November 2022.
  final pulumi.Input<String>? ipv6Address;
  final pulumi.Input<String>? kind;

  /// Creates a new [ManagedZoneForwardingConfigNameServerTarget].
  /// [forwardingPath] Forwarding path for this NameServerTarget. If unset or set to DEFAULT, Cloud DNS makes forwarding decisions based on IP address ranges; that is, RFC1918 addresses go to the VPC network, non-RFC1918 addresses go to the internet. When set to PRIVATE, Cloud DNS always sends queries through the VPC network for this target.
  /// [ipv4Address] IPv4 address of a target name server.
  /// [ipv6Address] IPv6 address of a target name server. Does not accept both fields (ipv4 & ipv6) being populated. Public preview as of November 2022.
  /// [kind] Optional.
  ManagedZoneForwardingConfigNameServerTarget({
    this.forwardingPath,
    this.ipv4Address,
    this.ipv6Address,
    this.kind,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'forwardingPath':
          ?pulumi.Input.mapOptionalInputValue<
            ManagedZoneForwardingConfigNameServerTargetForwardingPath,
            String
          >(forwardingPath, (value) => value.wireValue),
      'ipv4Address': ?ipv4Address,
      'ipv6Address': ?ipv6Address,
      'kind': ?kind,
    };
  }

  factory ManagedZoneForwardingConfigNameServerTarget.fromMap(
    Map<String, dynamic> map,
  ) {
    return ManagedZoneForwardingConfigNameServerTarget(
      forwardingPath: (() {
        final guardedValue = map['forwardingPath'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ManagedZoneForwardingConfigNameServerTargetForwardingPath.fromValue(
            guardedValue as String,
          ),
        );
      })(),
      ipv4Address: (() {
        final guardedValue = map['ipv4Address'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ipv6Address: (() {
        final guardedValue = map['ipv6Address'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      kind: (() {
        final guardedValue = map['kind'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
