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
  const InstanceConfigHelpers({
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
      devtmpfsAutomount: (() { final guardedValue = map['devtmpfsAutomount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      distro: (() { final guardedValue = map['distro']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      modulesDep: (() { final guardedValue = map['modulesDep']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      network: (() { final guardedValue = map['network']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      updatedbDisabled: (() { final guardedValue = map['updatedbDisabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

