// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceConfigHelper {
  /// Populates the /dev directory early during boot without udev. (default `true`)
  final pulumi.Input<bool>? devtmpfsAutomount;
  /// Helps maintain correct inittab/upstart console device. (default `true`)
  final pulumi.Input<bool>? distro;
  /// Creates a modules dependency file for the Kernel you run. (default `true`)
  final pulumi.Input<bool>? modulesDep;
  /// Automatically configures static networking. (default `true`)
  final pulumi.Input<bool>? network;
  /// Disables updatedb cron job to avoid disk thrashing. (default `true`)
  final pulumi.Input<bool>? updatedbDisabled;

  /// Creates a new [InstanceConfigHelper].
  /// [devtmpfsAutomount] Populates the /dev directory early during boot without udev. (default `true`)
  /// [distro] Helps maintain correct inittab/upstart console device. (default `true`)
  /// [modulesDep] Creates a modules dependency file for the Kernel you run. (default `true`)
  /// [network] Automatically configures static networking. (default `true`)
  /// [updatedbDisabled] Disables updatedb cron job to avoid disk thrashing. (default `true`)
  InstanceConfigHelper({
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

  factory InstanceConfigHelper.fromMap(Map<String, dynamic> map) {
    return InstanceConfigHelper(
      devtmpfsAutomount: map['devtmpfsAutomount'] == null ? null : (map['devtmpfsAutomount'] as bool).input(),
      distro: map['distro'] == null ? null : (map['distro'] as bool).input(),
      modulesDep: map['modulesDep'] == null ? null : (map['modulesDep'] as bool).input(),
      network: map['network'] == null ? null : (map['network'] as bool).input(),
      updatedbDisabled: map['updatedbDisabled'] == null ? null : (map['updatedbDisabled'] as bool).input(),
    );
  }
}

