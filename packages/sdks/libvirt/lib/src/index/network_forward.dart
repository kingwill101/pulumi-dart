// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_forward_address.dart';
import 'network_forward_driver.dart';
import 'network_forward_interface.dart';
import 'network_forward_nat.dart';
import 'network_forward_pf.dart';

class NetworkForward {
  /// Defines the addresses to which traffic should be forwarded.
  final pulumi.Input<List<NetworkForwardAddress>>? addresses;
  /// Sets the specific device for the forwarding configuration.
  final pulumi.Input<String>? dev;
  /// Configures the driver used for the network forwarding.
  final pulumi.Input<NetworkForwardDriver>? driver;
  /// Defines the interfaces to be used for forwarding.
  final pulumi.Input<List<NetworkForwardInterface>>? interfaces;
  /// Indicates whether the forwarding configuration is managed by libvirt.
  final pulumi.Input<bool>? managed;
  /// Configures the mode of operation for the network forwarding.
  final pulumi.Input<String>? mode;
  /// Enables or disables NAT (Network Address Translation) for the forwarding configuration.
  final pulumi.Input<NetworkForwardNat>? nat;
  /// Configures per-packet forwarding service, enabling a fine-tuned forwarding operation.
  final pulumi.Input<List<NetworkForwardPf>>? pfs;

  /// Creates a new [NetworkForward].
  /// [addresses] Defines the addresses to which traffic should be forwarded.
  /// [dev] Sets the specific device for the forwarding configuration.
  /// [driver] Configures the driver used for the network forwarding.
  /// [interfaces] Defines the interfaces to be used for forwarding.
  /// [managed] Indicates whether the forwarding configuration is managed by libvirt.
  /// [mode] Configures the mode of operation for the network forwarding.
  /// [nat] Enables or disables NAT (Network Address Translation) for the forwarding configuration.
  /// [pfs] Configures per-packet forwarding service, enabling a fine-tuned forwarding operation.
  const NetworkForward({
    this.addresses,
    this.dev,
    this.driver,
    this.interfaces,
    this.managed,
    this.mode,
    this.nat,
    this.pfs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addresses': ?pulumi.Input.mapOptionalInputValue<List<NetworkForwardAddress>, List<Map<String, dynamic>>>(addresses, (value) => pulumi.Input.encodeList<NetworkForwardAddress, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dev': ?dev,
      'driver': ?pulumi.Input.mapOptionalInputValue<NetworkForwardDriver, Map<String, dynamic>>(driver, (value) => value.toMap()),
      'interfaces': ?pulumi.Input.mapOptionalInputValue<List<NetworkForwardInterface>, List<Map<String, dynamic>>>(interfaces, (value) => pulumi.Input.encodeList<NetworkForwardInterface, Map<String, dynamic>>(value, (value) => value.toMap())),
      'managed': ?managed,
      'mode': ?mode,
      'nat': ?pulumi.Input.mapOptionalInputValue<NetworkForwardNat, Map<String, dynamic>>(nat, (value) => value.toMap()),
      'pfs': ?pulumi.Input.mapOptionalInputValue<List<NetworkForwardPf>, List<Map<String, dynamic>>>(pfs, (value) => pulumi.Input.encodeList<NetworkForwardPf, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory NetworkForward.fromMap(Map<String, dynamic> map) {
    return NetworkForward(
      addresses: (() { final guardedValue = map['addresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NetworkForwardAddress>(guardedValue, (value) => NetworkForwardAddress.fromMap((value as Map).cast<String, dynamic>()))); })(),
      dev: (() { final guardedValue = map['dev']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      driver: (() { final guardedValue = map['driver']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NetworkForwardDriver.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      interfaces: (() { final guardedValue = map['interfaces']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NetworkForwardInterface>(guardedValue, (value) => NetworkForwardInterface.fromMap((value as Map).cast<String, dynamic>()))); })(),
      managed: (() { final guardedValue = map['managed']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nat: (() { final guardedValue = map['nat']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NetworkForwardNat.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      pfs: (() { final guardedValue = map['pfs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NetworkForwardPf>(guardedValue, (value) => NetworkForwardPf.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

