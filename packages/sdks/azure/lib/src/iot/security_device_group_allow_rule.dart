// ignore_for_file: unused_element, unnecessary_cast


class SecurityDeviceGroupAllowRule {
  /// Specifies which IP is not allowed to be connected to in current device group for inbound connection.
  final List<String>? connectionFromIpsNotAlloweds;
  /// Specifies which IP is not allowed to be connected to in current device group for outbound connection.
  final List<String>? connectionToIpsNotAlloweds;
  /// Specifies which local user is not allowed to login in current device group.
  final List<String>? localUsersNotAlloweds;
  /// Specifies which process is not allowed to be executed in current device group.
  final List<String>? processesNotAlloweds;

  /// Creates a new [SecurityDeviceGroupAllowRule].
  /// [connectionFromIpsNotAlloweds] Specifies which IP is not allowed to be connected to in current device group for inbound connection.
  /// [connectionToIpsNotAlloweds] Specifies which IP is not allowed to be connected to in current device group for outbound connection.
  /// [localUsersNotAlloweds] Specifies which local user is not allowed to login in current device group.
  /// [processesNotAlloweds] Specifies which process is not allowed to be executed in current device group.
  SecurityDeviceGroupAllowRule({
    this.connectionFromIpsNotAlloweds,
    this.connectionToIpsNotAlloweds,
    this.localUsersNotAlloweds,
    this.processesNotAlloweds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionFromIpsNotAlloweds': ?connectionFromIpsNotAlloweds,
      'connectionToIpsNotAlloweds': ?connectionToIpsNotAlloweds,
      'localUsersNotAlloweds': ?localUsersNotAlloweds,
      'processesNotAlloweds': ?processesNotAlloweds,
    };
  }

  factory SecurityDeviceGroupAllowRule.fromMap(Map<String, dynamic> map) {
    return SecurityDeviceGroupAllowRule(
      connectionFromIpsNotAlloweds: map['connectionFromIpsNotAlloweds'] == null ? null : (map['connectionFromIpsNotAlloweds'] as List).cast<String>(),
      connectionToIpsNotAlloweds: map['connectionToIpsNotAlloweds'] == null ? null : (map['connectionToIpsNotAlloweds'] as List).cast<String>(),
      localUsersNotAlloweds: map['localUsersNotAlloweds'] == null ? null : (map['localUsersNotAlloweds'] as List).cast<String>(),
      processesNotAlloweds: map['processesNotAlloweds'] == null ? null : (map['processesNotAlloweds'] as List).cast<String>(),
    );
  }
}

