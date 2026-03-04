// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstancesInstanceConfigHelper {
  /// Populates the /dev directory early during boot without udev. Defaults to false.
  final pulumi.Input<bool> devtmpfsAutomount;

  /// Controls the behavior of the Linode Config's Distribution Helper setting.
  final pulumi.Input<bool> distro;

  /// Creates a modules dependency file for the Kernel you run.
  final pulumi.Input<bool> modulesDep;

  /// Controls the behavior of the Linode Config's Network Helper setting, used to automatically configure additional IP addresses assigned to this instance.
  final pulumi.Input<bool> network;

  /// Disables updatedb cron job to avoid disk thrashing.
  final pulumi.Input<bool> updatedbDisabled;

  /// Creates a new [GetInstancesInstanceConfigHelper].
  /// [devtmpfsAutomount] Populates the /dev directory early during boot without udev. Defaults to false.
  /// [distro] Controls the behavior of the Linode Config's Distribution Helper setting.
  /// [modulesDep] Creates a modules dependency file for the Kernel you run.
  /// [network] Controls the behavior of the Linode Config's Network Helper setting, used to automatically configure additional IP addresses assigned to this instance.
  /// [updatedbDisabled] Disables updatedb cron job to avoid disk thrashing.
  GetInstancesInstanceConfigHelper({
    required this.devtmpfsAutomount,
    required this.distro,
    required this.modulesDep,
    required this.network,
    required this.updatedbDisabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'devtmpfsAutomount': devtmpfsAutomount,
      'distro': distro,
      'modulesDep': modulesDep,
      'network': network,
      'updatedbDisabled': updatedbDisabled,
    };
  }

  factory GetInstancesInstanceConfigHelper.fromMap(Map<String, dynamic> map) {
    return GetInstancesInstanceConfigHelper(
      devtmpfsAutomount: pulumi.Input.fromValue(
        map['devtmpfsAutomount'] as bool,
      ),
      distro: pulumi.Input.fromValue(map['distro'] as bool),
      modulesDep: pulumi.Input.fromValue(map['modulesDep'] as bool),
      network: pulumi.Input.fromValue(map['network'] as bool),
      updatedbDisabled: pulumi.Input.fromValue(map['updatedbDisabled'] as bool),
    );
  }
}
