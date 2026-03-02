// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_disk_backing_store_source_block.dart';
import 'domain_devices_disk_backing_store_source_cookies.dart';
import 'domain_devices_disk_backing_store_source_data_store.dart';
import 'domain_devices_disk_backing_store_source_dir.dart';
import 'domain_devices_disk_backing_store_source_encryption.dart';
import 'domain_devices_disk_backing_store_source_file.dart';
import 'domain_devices_disk_backing_store_source_network.dart';
import 'domain_devices_disk_backing_store_source_readahead.dart';
import 'domain_devices_disk_backing_store_source_reservations.dart';
import 'domain_devices_disk_backing_store_source_slices.dart';
import 'domain_devices_disk_backing_store_source_ssl.dart';
import 'domain_devices_disk_backing_store_source_timeout.dart';
import 'domain_devices_disk_backing_store_source_vhost_user.dart';
import 'domain_devices_disk_backing_store_source_vhost_vdpa.dart';
import 'domain_devices_disk_backing_store_source_volume.dart';

class DomainDevicesDiskBackingStoreSource {
  /// Configures the source block for the backing store, indicating its role within the mirroring setup.
  final pulumi.Input<DomainDevicesDiskBackingStoreSourceBlock>? block;
  /// Configures settings related to cookie management for the backing store source.
  final pulumi.Input<DomainDevicesDiskBackingStoreSourceCookies>? cookies;
  /// Configures the data store for the backing store, specifying the storage location.
  final pulumi.Input<DomainDevicesDiskBackingStoreSourceDataStore>? dataStore;
  /// Configures the directory for the backing store source, indicating its physical location.
  final pulumi.Input<DomainDevicesDiskBackingStoreSourceDir>? dir;
  /// Configures encryption settings for the disk, enhancing data security.
  final pulumi.Input<DomainDevicesDiskBackingStoreSourceEncryption>? encryption;
  /// Configures file-specific settings for the backing store source, managing its file access.
  final pulumi.Input<DomainDevicesDiskBackingStoreSourceFile>? file;
  /// Configures the index for the backing store source configuration, indicating its order.
  final pulumi.Input<double>? index;
  /// Configures network-specific settings for the backing store source, facilitating network access.
  final pulumi.Input<DomainDevicesDiskBackingStoreSourceNetwork>? network;
  /// Configures NVMe settings for accessing network storage, enabling optimized performance.
  final pulumi.Input<Map<String, dynamic>>? nvme;
  /// Sets the readahead configuration, optimizing I/O performance for network block devices.
  final pulumi.Input<DomainDevicesDiskBackingStoreSourceReadahead>? readahead;
  /// Defines reservations settings for network storage sources, enabling resource management.
  final pulumi.Input<DomainDevicesDiskBackingStoreSourceReservations>? reservations;
  /// Configures slices for the mirror source device.
  final pulumi.Input<DomainDevicesDiskBackingStoreSourceSlices>? slices;
  /// Configures SSL settings for the backing store source in disk mirroring.
  final pulumi.Input<DomainDevicesDiskBackingStoreSourceSsl>? ssl;
  /// Sets the startup policy for the backing store source in disk mirroring.
  final pulumi.Input<String>? startupPolicy;
  /// Configures the timeout settings for the backing store source in disk mirroring.
  final pulumi.Input<DomainDevicesDiskBackingStoreSourceTimeout>? timeout;
  /// Configures VHostUser settings for the backing store source in disk mirroring.
  final pulumi.Input<DomainDevicesDiskBackingStoreSourceVhostUser>? vhostUser;
  /// Configures the VHostVDPA settings for the source backing store.
  final pulumi.Input<DomainDevicesDiskBackingStoreSourceVhostVdpa>? vhostVdpa;
  /// Configures the source volume settings for the mirror backing store.
  final pulumi.Input<DomainDevicesDiskBackingStoreSourceVolume>? volume;

  /// Creates a new [DomainDevicesDiskBackingStoreSource].
  /// [block] Configures the source block for the backing store, indicating its role within the mirroring setup.
  /// [cookies] Configures settings related to cookie management for the backing store source.
  /// [dataStore] Configures the data store for the backing store, specifying the storage location.
  /// [dir] Configures the directory for the backing store source, indicating its physical location.
  /// [encryption] Configures encryption settings for the disk, enhancing data security.
  /// [file] Configures file-specific settings for the backing store source, managing its file access.
  /// [index] Configures the index for the backing store source configuration, indicating its order.
  /// [network] Configures network-specific settings for the backing store source, facilitating network access.
  /// [nvme] Configures NVMe settings for accessing network storage, enabling optimized performance.
  /// [readahead] Sets the readahead configuration, optimizing I/O performance for network block devices.
  /// [reservations] Defines reservations settings for network storage sources, enabling resource management.
  /// [slices] Configures slices for the mirror source device.
  /// [ssl] Configures SSL settings for the backing store source in disk mirroring.
  /// [startupPolicy] Sets the startup policy for the backing store source in disk mirroring.
  /// [timeout] Configures the timeout settings for the backing store source in disk mirroring.
  /// [vhostUser] Configures VHostUser settings for the backing store source in disk mirroring.
  /// [vhostVdpa] Configures the VHostVDPA settings for the source backing store.
  /// [volume] Configures the source volume settings for the mirror backing store.
  DomainDevicesDiskBackingStoreSource({
    this.block,
    this.cookies,
    this.dataStore,
    this.dir,
    this.encryption,
    this.file,
    this.index,
    this.network,
    this.nvme,
    this.readahead,
    this.reservations,
    this.slices,
    this.ssl,
    this.startupPolicy,
    this.timeout,
    this.vhostUser,
    this.vhostVdpa,
    this.volume,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'block': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskBackingStoreSourceBlock, Map<String, dynamic>>(block, (value) => value.toMap()),
      'cookies': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskBackingStoreSourceCookies, Map<String, dynamic>>(cookies, (value) => value.toMap()),
      'dataStore': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskBackingStoreSourceDataStore, Map<String, dynamic>>(dataStore, (value) => value.toMap()),
      'dir': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskBackingStoreSourceDir, Map<String, dynamic>>(dir, (value) => value.toMap()),
      'encryption': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskBackingStoreSourceEncryption, Map<String, dynamic>>(encryption, (value) => value.toMap()),
      'file': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskBackingStoreSourceFile, Map<String, dynamic>>(file, (value) => value.toMap()),
      'index': ?index,
      'network': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskBackingStoreSourceNetwork, Map<String, dynamic>>(network, (value) => value.toMap()),
      'nvme': ?nvme,
      'readahead': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskBackingStoreSourceReadahead, Map<String, dynamic>>(readahead, (value) => value.toMap()),
      'reservations': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskBackingStoreSourceReservations, Map<String, dynamic>>(reservations, (value) => value.toMap()),
      'slices': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskBackingStoreSourceSlices, Map<String, dynamic>>(slices, (value) => value.toMap()),
      'ssl': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskBackingStoreSourceSsl, Map<String, dynamic>>(ssl, (value) => value.toMap()),
      'startupPolicy': ?startupPolicy,
      'timeout': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskBackingStoreSourceTimeout, Map<String, dynamic>>(timeout, (value) => value.toMap()),
      'vhostUser': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskBackingStoreSourceVhostUser, Map<String, dynamic>>(vhostUser, (value) => value.toMap()),
      'vhostVdpa': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskBackingStoreSourceVhostVdpa, Map<String, dynamic>>(vhostVdpa, (value) => value.toMap()),
      'volume': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskBackingStoreSourceVolume, Map<String, dynamic>>(volume, (value) => value.toMap()),
    };
  }

  factory DomainDevicesDiskBackingStoreSource.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskBackingStoreSource(
      block: map['block'] == null ? null : (DomainDevicesDiskBackingStoreSourceBlock.fromMap((map['block']! as Map).cast<String, dynamic>())).input(),
      cookies: map['cookies'] == null ? null : (DomainDevicesDiskBackingStoreSourceCookies.fromMap((map['cookies']! as Map).cast<String, dynamic>())).input(),
      dataStore: map['dataStore'] == null ? null : (DomainDevicesDiskBackingStoreSourceDataStore.fromMap((map['dataStore']! as Map).cast<String, dynamic>())).input(),
      dir: map['dir'] == null ? null : (DomainDevicesDiskBackingStoreSourceDir.fromMap((map['dir']! as Map).cast<String, dynamic>())).input(),
      encryption: map['encryption'] == null ? null : (DomainDevicesDiskBackingStoreSourceEncryption.fromMap((map['encryption']! as Map).cast<String, dynamic>())).input(),
      file: map['file'] == null ? null : (DomainDevicesDiskBackingStoreSourceFile.fromMap((map['file']! as Map).cast<String, dynamic>())).input(),
      index: map['index'] == null ? null : (map['index']! as double).input(),
      network: map['network'] == null ? null : (DomainDevicesDiskBackingStoreSourceNetwork.fromMap((map['network']! as Map).cast<String, dynamic>())).input(),
      nvme: map['nvme'] == null ? null : ((map['nvme']! as Map).cast<String, dynamic>()).input(),
      readahead: map['readahead'] == null ? null : (DomainDevicesDiskBackingStoreSourceReadahead.fromMap((map['readahead']! as Map).cast<String, dynamic>())).input(),
      reservations: map['reservations'] == null ? null : (DomainDevicesDiskBackingStoreSourceReservations.fromMap((map['reservations']! as Map).cast<String, dynamic>())).input(),
      slices: map['slices'] == null ? null : (DomainDevicesDiskBackingStoreSourceSlices.fromMap((map['slices']! as Map).cast<String, dynamic>())).input(),
      ssl: map['ssl'] == null ? null : (DomainDevicesDiskBackingStoreSourceSsl.fromMap((map['ssl']! as Map).cast<String, dynamic>())).input(),
      startupPolicy: map['startupPolicy'] == null ? null : (map['startupPolicy']! as String).input(),
      timeout: map['timeout'] == null ? null : (DomainDevicesDiskBackingStoreSourceTimeout.fromMap((map['timeout']! as Map).cast<String, dynamic>())).input(),
      vhostUser: map['vhostUser'] == null ? null : (DomainDevicesDiskBackingStoreSourceVhostUser.fromMap((map['vhostUser']! as Map).cast<String, dynamic>())).input(),
      vhostVdpa: map['vhostVdpa'] == null ? null : (DomainDevicesDiskBackingStoreSourceVhostVdpa.fromMap((map['vhostVdpa']! as Map).cast<String, dynamic>())).input(),
      volume: map['volume'] == null ? null : (DomainDevicesDiskBackingStoreSourceVolume.fromMap((map['volume']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

