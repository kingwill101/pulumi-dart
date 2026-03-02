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
  NetworkForward({
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
      addresses: map['addresses'] == null ? null : (pulumi.Input.decodeList<NetworkForwardAddress>(map['addresses']!, (value) => NetworkForwardAddress.fromMap((value as Map).cast<String, dynamic>()))).input(),
      dev: map['dev'] == null ? null : (map['dev']! as String).input(),
      driver: map['driver'] == null ? null : (NetworkForwardDriver.fromMap((map['driver']! as Map).cast<String, dynamic>())).input(),
      interfaces: map['interfaces'] == null ? null : (pulumi.Input.decodeList<NetworkForwardInterface>(map['interfaces']!, (value) => NetworkForwardInterface.fromMap((value as Map).cast<String, dynamic>()))).input(),
      managed: map['managed'] == null ? null : (map['managed']! as bool).input(),
      mode: map['mode'] == null ? null : (map['mode']! as String).input(),
      nat: map['nat'] == null ? null : (NetworkForwardNat.fromMap((map['nat']! as Map).cast<String, dynamic>())).input(),
      pfs: map['pfs'] == null ? null : (pulumi.Input.decodeList<NetworkForwardPf>(map['pfs']!, (value) => NetworkForwardPf.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

