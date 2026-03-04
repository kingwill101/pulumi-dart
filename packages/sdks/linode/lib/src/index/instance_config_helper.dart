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
      devtmpfsAutomount: (() {
        final guardedValue = map['devtmpfsAutomount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      distro: (() {
        final guardedValue = map['distro'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      modulesDep: (() {
        final guardedValue = map['modulesDep'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      network: (() {
        final guardedValue = map['network'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      updatedbDisabled: (() {
        final guardedValue = map['updatedbDisabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
