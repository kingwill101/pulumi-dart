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
  final PoolSourceAdapter? adapter;
  /// Specifies the authentication method used when connecting to the storage source.
  final PoolSourceAuth? auth;
  /// Specifies the device to be used as the source for the storage pool.
  final List<PoolSourceDevice>? devices;
  /// Indicates the directory used as a source for the storage pool.
  final PoolSourceDir? dir;
  /// Sets the format of the storage source being used, affecting how data is stored and accessed.
  final PoolSourceFormat? format;
  /// Specifies the host details for connecting to the storage source.
  final List<PoolSourceHost>? hosts;
  /// Defines the iSCSI initiator settings associated with the storage source.
  final PoolSourceInitiator? initiator;
  /// Specifies the name of the source for the storage pool.
  final String? name;
  /// Identifies the product details associated with the storage source.
  final PoolSourceProduct? product;
  /// Sets the protocol used to connect to the storage source.
  final PoolSourceProtocol? protocol;
  /// Specifies the vendor information for the storage source being used.
  final PoolSourceVendor? vendor;

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
      'adapter': ?adapter == null ? null : adapter!.toMap(),
      'auth': ?auth == null ? null : auth!.toMap(),
      'devices': ?devices == null ? null : pulumi.Input.encodeList<PoolSourceDevice, Map<String, dynamic>>(devices!, (value) => value.toMap()),
      'dir': ?dir == null ? null : dir!.toMap(),
      'format': ?format == null ? null : format!.toMap(),
      'hosts': ?hosts == null ? null : pulumi.Input.encodeList<PoolSourceHost, Map<String, dynamic>>(hosts!, (value) => value.toMap()),
      'initiator': ?initiator == null ? null : initiator!.toMap(),
      'name': ?name,
      'product': ?product == null ? null : product!.toMap(),
      'protocol': ?protocol == null ? null : protocol!.toMap(),
      'vendor': ?vendor == null ? null : vendor!.toMap(),
    };
  }

  factory PoolSource.fromMap(Map<String, dynamic> map) {
    return PoolSource(
      adapter: map['adapter'] == null ? null : PoolSourceAdapter.fromMap((map['adapter'] as Map).cast<String, dynamic>()),
      auth: map['auth'] == null ? null : PoolSourceAuth.fromMap((map['auth'] as Map).cast<String, dynamic>()),
      devices: map['devices'] == null ? null : pulumi.Input.decodeList<PoolSourceDevice>(map['devices'], (value) => PoolSourceDevice.fromMap((value as Map).cast<String, dynamic>())),
      dir: map['dir'] == null ? null : PoolSourceDir.fromMap((map['dir'] as Map).cast<String, dynamic>()),
      format: map['format'] == null ? null : PoolSourceFormat.fromMap((map['format'] as Map).cast<String, dynamic>()),
      hosts: map['hosts'] == null ? null : pulumi.Input.decodeList<PoolSourceHost>(map['hosts'], (value) => PoolSourceHost.fromMap((value as Map).cast<String, dynamic>())),
      initiator: map['initiator'] == null ? null : PoolSourceInitiator.fromMap((map['initiator'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      product: map['product'] == null ? null : PoolSourceProduct.fromMap((map['product'] as Map).cast<String, dynamic>()),
      protocol: map['protocol'] == null ? null : PoolSourceProtocol.fromMap((map['protocol'] as Map).cast<String, dynamic>()),
      vendor: map['vendor'] == null ? null : PoolSourceVendor.fromMap((map['vendor'] as Map).cast<String, dynamic>()),
    );
  }
}

