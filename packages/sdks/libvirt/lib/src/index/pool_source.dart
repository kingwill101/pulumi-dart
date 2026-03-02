// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pool_source_adapter.dart';
import 'pool_source_auth.dart';
import 'pool_source_device.dart';
import 'pool_source_dir.dart';
import 'pool_source_format.dart';
import 'pool_source_host.dart';
import 'pool_source_initiator.dart';
import 'pool_source_product.dart';
import 'pool_source_protocol.dart';
import 'pool_source_vendor.dart';

class PoolSource {
  /// Configures the details of the adapter used for connecting to the storage source.
  final pulumi.Input<PoolSourceAdapter>? adapter;
  /// Specifies the authentication method used when connecting to the storage source.
  final pulumi.Input<PoolSourceAuth>? auth;
  /// Specifies the device to be used as the source for the storage pool.
  final pulumi.Input<List<PoolSourceDevice>>? devices;
  /// Indicates the directory used as a source for the storage pool.
  final pulumi.Input<PoolSourceDir>? dir;
  /// Sets the format of the storage source being used, affecting how data is stored and accessed.
  final pulumi.Input<PoolSourceFormat>? format;
  /// Specifies the host details for connecting to the storage source.
  final pulumi.Input<List<PoolSourceHost>>? hosts;
  /// Defines the iSCSI initiator settings associated with the storage source.
  final pulumi.Input<PoolSourceInitiator>? initiator;
  /// Specifies the name of the source for the storage pool.
  final pulumi.Input<String>? name;
  /// Identifies the product details associated with the storage source.
  final pulumi.Input<PoolSourceProduct>? product;
  /// Sets the protocol used to connect to the storage source.
  final pulumi.Input<PoolSourceProtocol>? protocol;
  /// Specifies the vendor information for the storage source being used.
  final pulumi.Input<PoolSourceVendor>? vendor;

  /// Creates a new [PoolSource].
  /// [adapter] Configures the details of the adapter used for connecting to the storage source.
  /// [auth] Specifies the authentication method used when connecting to the storage source.
  /// [devices] Specifies the device to be used as the source for the storage pool.
  /// [dir] Indicates the directory used as a source for the storage pool.
  /// [format] Sets the format of the storage source being used, affecting how data is stored and accessed.
  /// [hosts] Specifies the host details for connecting to the storage source.
  /// [initiator] Defines the iSCSI initiator settings associated with the storage source.
  /// [name] Specifies the name of the source for the storage pool.
  /// [product] Identifies the product details associated with the storage source.
  /// [protocol] Sets the protocol used to connect to the storage source.
  /// [vendor] Specifies the vendor information for the storage source being used.
  PoolSource({
    this.adapter,
    this.auth,
    this.devices,
    this.dir,
    this.format,
    this.hosts,
    this.initiator,
    this.name,
    this.product,
    this.protocol,
    this.vendor,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adapter': ?pulumi.Input.mapOptionalInputValue<PoolSourceAdapter, Map<String, dynamic>>(adapter, (value) => value.toMap()),
      'auth': ?pulumi.Input.mapOptionalInputValue<PoolSourceAuth, Map<String, dynamic>>(auth, (value) => value.toMap()),
      'devices': ?pulumi.Input.mapOptionalInputValue<List<PoolSourceDevice>, List<Map<String, dynamic>>>(devices, (value) => pulumi.Input.encodeList<PoolSourceDevice, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dir': ?pulumi.Input.mapOptionalInputValue<PoolSourceDir, Map<String, dynamic>>(dir, (value) => value.toMap()),
      'format': ?pulumi.Input.mapOptionalInputValue<PoolSourceFormat, Map<String, dynamic>>(format, (value) => value.toMap()),
      'hosts': ?pulumi.Input.mapOptionalInputValue<List<PoolSourceHost>, List<Map<String, dynamic>>>(hosts, (value) => pulumi.Input.encodeList<PoolSourceHost, Map<String, dynamic>>(value, (value) => value.toMap())),
      'initiator': ?pulumi.Input.mapOptionalInputValue<PoolSourceInitiator, Map<String, dynamic>>(initiator, (value) => value.toMap()),
      'name': ?name,
      'product': ?pulumi.Input.mapOptionalInputValue<PoolSourceProduct, Map<String, dynamic>>(product, (value) => value.toMap()),
      'protocol': ?pulumi.Input.mapOptionalInputValue<PoolSourceProtocol, Map<String, dynamic>>(protocol, (value) => value.toMap()),
      'vendor': ?pulumi.Input.mapOptionalInputValue<PoolSourceVendor, Map<String, dynamic>>(vendor, (value) => value.toMap()),
    };
  }

  factory PoolSource.fromMap(Map<String, dynamic> map) {
    return PoolSource(
      adapter: map['adapter'] == null ? null : (PoolSourceAdapter.fromMap((map['adapter']! as Map).cast<String, dynamic>())).input(),
      auth: map['auth'] == null ? null : (PoolSourceAuth.fromMap((map['auth']! as Map).cast<String, dynamic>())).input(),
      devices: map['devices'] == null ? null : (pulumi.Input.decodeList<PoolSourceDevice>(map['devices']!, (value) => PoolSourceDevice.fromMap((value as Map).cast<String, dynamic>()))).input(),
      dir: map['dir'] == null ? null : (PoolSourceDir.fromMap((map['dir']! as Map).cast<String, dynamic>())).input(),
      format: map['format'] == null ? null : (PoolSourceFormat.fromMap((map['format']! as Map).cast<String, dynamic>())).input(),
      hosts: map['hosts'] == null ? null : (pulumi.Input.decodeList<PoolSourceHost>(map['hosts']!, (value) => PoolSourceHost.fromMap((value as Map).cast<String, dynamic>()))).input(),
      initiator: map['initiator'] == null ? null : (PoolSourceInitiator.fromMap((map['initiator']! as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      product: map['product'] == null ? null : (PoolSourceProduct.fromMap((map['product']! as Map).cast<String, dynamic>())).input(),
      protocol: map['protocol'] == null ? null : (PoolSourceProtocol.fromMap((map['protocol']! as Map).cast<String, dynamic>())).input(),
      vendor: map['vendor'] == null ? null : (PoolSourceVendor.fromMap((map['vendor']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

