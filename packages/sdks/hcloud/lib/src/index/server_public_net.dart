// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServerPublicNet {
  final pulumi.Input<int>? ipv4;
  final pulumi.Input<bool>? ipv4Enabled;
  final pulumi.Input<int>? ipv6;
  final pulumi.Input<bool>? ipv6Enabled;

  /// Creates a new [ServerPublicNet].
  /// [ipv4] Optional.
  /// [ipv4Enabled] Optional.
  /// [ipv6] Optional.
  /// [ipv6Enabled] Optional.
  const ServerPublicNet({
    this.ipv4,
    this.ipv4Enabled,
    this.ipv6,
    this.ipv6Enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipv4': ?ipv4,
      'ipv4Enabled': ?ipv4Enabled,
      'ipv6': ?ipv6,
      'ipv6Enabled': ?ipv6Enabled,
    };
  }

  factory ServerPublicNet.fromMap(Map<String, dynamic> map) {
    return ServerPublicNet(
      ipv4: (() { final guardedValue = map['ipv4']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      ipv4Enabled: (() { final guardedValue = map['ipv4Enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ipv6: (() { final guardedValue = map['ipv6']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      ipv6Enabled: (() { final guardedValue = map['ipv6Enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

