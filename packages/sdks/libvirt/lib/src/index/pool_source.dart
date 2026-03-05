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
      adapter: (() { final guardedValue = map['adapter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PoolSourceAdapter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      auth: (() { final guardedValue = map['auth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PoolSourceAuth.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      devices: (() { final guardedValue = map['devices']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PoolSourceDevice>(guardedValue, (value) => PoolSourceDevice.fromMap((value as Map).cast<String, dynamic>()))); })(),
      dir: (() { final guardedValue = map['dir']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PoolSourceDir.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      format: (() { final guardedValue = map['format']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PoolSourceFormat.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      hosts: (() { final guardedValue = map['hosts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PoolSourceHost>(guardedValue, (value) => PoolSourceHost.fromMap((value as Map).cast<String, dynamic>()))); })(),
      initiator: (() { final guardedValue = map['initiator']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PoolSourceInitiator.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      product: (() { final guardedValue = map['product']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PoolSourceProduct.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      protocol: (() { final guardedValue = map['protocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PoolSourceProtocol.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vendor: (() { final guardedValue = map['vendor']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PoolSourceVendor.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

