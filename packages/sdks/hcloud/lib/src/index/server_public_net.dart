// ignore_for_file: unused_element, unnecessary_cast


class ServerPublicNet {
  final int? ipv4;
  final bool? ipv4Enabled;
  final int? ipv6;
  final bool? ipv6Enabled;

  /// Creates a new [ServerPublicNet].
  /// [ipv4] Optional.
  /// [ipv4Enabled] Optional.
  /// [ipv6] Optional.
  /// [ipv6Enabled] Optional.
  ServerPublicNet({
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
      ipv4: map['ipv4'] == null ? null : map['ipv4'] as int,
      ipv4Enabled: map['ipv4Enabled'] == null ? null : map['ipv4Enabled'] as bool,
      ipv6: map['ipv6'] == null ? null : map['ipv6'] as int,
      ipv6Enabled: map['ipv6Enabled'] == null ? null : map['ipv6Enabled'] as bool,
    );
  }
}

