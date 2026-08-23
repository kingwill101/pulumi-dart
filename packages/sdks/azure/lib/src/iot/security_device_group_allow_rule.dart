// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SecurityDeviceGroupAllowRule {
  /// Specifies which IP is not allowed to be connected to in current device group for inbound connection.
  final pulumi.Input<List<String>>? connectionFromIpsNotAlloweds;
  /// Specifies which IP is not allowed to be connected to in current device group for outbound connection.
  final pulumi.Input<List<String>>? connectionToIpsNotAlloweds;
  /// Specifies which local user is not allowed to login in current device group.
  final pulumi.Input<List<String>>? localUsersNotAlloweds;
  /// Specifies which process is not allowed to be executed in current device group.
  final pulumi.Input<List<String>>? processesNotAlloweds;

  /// Creates a new [SecurityDeviceGroupAllowRule].
  /// [connectionFromIpsNotAlloweds] Specifies which IP is not allowed to be connected to in current device group for inbound connection.
  /// [connectionToIpsNotAlloweds] Specifies which IP is not allowed to be connected to in current device group for outbound connection.
  /// [localUsersNotAlloweds] Specifies which local user is not allowed to login in current device group.
  /// [processesNotAlloweds] Specifies which process is not allowed to be executed in current device group.
  const SecurityDeviceGroupAllowRule({
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
      connectionFromIpsNotAlloweds: (() { final guardedValue = map['connectionFromIpsNotAlloweds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      connectionToIpsNotAlloweds: (() { final guardedValue = map['connectionToIpsNotAlloweds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      localUsersNotAlloweds: (() { final guardedValue = map['localUsersNotAlloweds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      processesNotAlloweds: (() { final guardedValue = map['processesNotAlloweds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
