// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceConfigHelpers {
  /// Populates the /dev directory early during boot without udev. Defaults to false.
  final pulumi.Input<bool>? devtmpfsAutomount;
  /// Controls the behavior of the Linode Config's Distribution Helper setting.
  final pulumi.Input<bool>? distro;
  /// Creates a modules dependency file for the Kernel you run.
  final pulumi.Input<bool>? modulesDep;
  /// Controls the behavior of the Linode Config's Network Helper setting, used to automatically configure additional IP addresses assigned to this instance.
  final pulumi.Input<bool>? network;
  /// Disables updatedb cron job to avoid disk thrashing.
  final pulumi.Input<bool>? updatedbDisabled;

  /// Creates a new [InstanceConfigHelpers].
  /// [devtmpfsAutomount] Populates the /dev directory early during boot without udev. Defaults to false.
  /// [distro] Controls the behavior of the Linode Config's Distribution Helper setting.
  /// [modulesDep] Creates a modules dependency file for the Kernel you run.
  /// [network] Controls the behavior of the Linode Config's Network Helper setting, used to automatically configure additional IP addresses assigned to this instance.
  /// [updatedbDisabled] Disables updatedb cron job to avoid disk thrashing.
  InstanceConfigHelpers({
    this.devtmpfsAutomount,
    this.distro,
    this.modulesDep,
    this.network,
    this.updatedbDisabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'devtmpfsAutomount': ?devtmpfsAutomount,
      'distro': ?distro,
      'modulesDep': ?modulesDep,
      'network': ?network,
      'updatedbDisabled': ?updatedbDisabled,
    };
  }

  factory InstanceConfigHelpers.fromMap(Map<String, dynamic> map) {
    return InstanceConfigHelpers(
      devtmpfsAutomount: map['devtmpfsAutomount'] == null ? null : (map['devtmpfsAutomount'] as bool).input(),
      distro: map['distro'] == null ? null : (map['distro'] as bool).input(),
      modulesDep: map['modulesDep'] == null ? null : (map['modulesDep'] as bool).input(),
      network: map['network'] == null ? null : (map['network'] as bool).input(),
      updatedbDisabled: map['updatedbDisabled'] == null ? null : (map['updatedbDisabled'] as bool).input(),
    );
  }
}

