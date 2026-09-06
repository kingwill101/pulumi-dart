// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hub_public_ipaddresses.dart';

/// IP addresses associated with azure firewall.
class HubIPAddresses {
  /// Private IP Address associated with azure firewall.
  final pulumi.Input<String?>? privateIPAddress;
  /// Public IP addresses associated with azure firewall.
  final pulumi.Input<HubPublicIPAddresses?>? publicIPs;

  /// Creates a new [HubIPAddresses].
  /// [privateIPAddress] Private IP Address associated with azure firewall.
  /// [publicIPs] Public IP addresses associated with azure firewall.
  const HubIPAddresses({
    this.privateIPAddress,
    this.publicIPs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateIPAddress': ?privateIPAddress,
      'publicIPs': ?pulumi.Input.mapOptionalInputValue<HubPublicIPAddresses, Map<String, dynamic>>(publicIPs, (value) => value.toMap()),
    };
  }

  factory HubIPAddresses.fromMap(Map<String, dynamic> map) {
    return HubIPAddresses(
      privateIPAddress: (() { final guardedValue = map['privateIPAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicIPs: (() { final guardedValue = map['publicIPs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HubPublicIPAddresses.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
