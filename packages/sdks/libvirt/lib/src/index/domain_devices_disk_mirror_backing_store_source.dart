// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_disk_mirror_backing_store_source_block.dart';
import 'domain_devices_disk_mirror_backing_store_source_cookies.dart';
import 'domain_devices_disk_mirror_backing_store_source_data_store.dart';
import 'domain_devices_disk_mirror_backing_store_source_dir.dart';
import 'domain_devices_disk_mirror_backing_store_source_encryption.dart';
import 'domain_devices_disk_mirror_backing_store_source_file.dart';
import 'domain_devices_disk_mirror_backing_store_source_network.dart';
import 'domain_devices_disk_mirror_backing_store_source_readahead.dart';
import 'domain_devices_disk_mirror_backing_store_source_reservations.dart';
import 'domain_devices_disk_mirror_backing_store_source_slices.dart';
import 'domain_devices_disk_mirror_backing_store_source_ssl.dart';
import 'domain_devices_disk_mirror_backing_store_source_timeout.dart';
import 'domain_devices_disk_mirror_backing_store_source_vhost_user.dart';
import 'domain_devices_disk_mirror_backing_store_source_vhost_vdpa.dart';
import 'domain_devices_disk_mirror_backing_store_source_volume.dart';

class DomainDevicesDiskMirrorBackingStoreSource {
  /// Configures the source block for the backing store, indicating its role within the mirroring setup.
  final pulumi.Input<DomainDevicesDiskMirrorBackingStoreSourceBlock>? block;
  /// Configures settings related to cookie management for the backing store source.
  final pulumi.Input<DomainDevicesDiskMirrorBackingStoreSourceCookies>? cookies;
  /// Configures the data store for the backing store, specifying the storage location.
  final pulumi.Input<DomainDevicesDiskMirrorBackingStoreSourceDataStore>? dataStore;
  /// Configures the directory for the backing store source, indicating its physical location.
  final pulumi.Input<DomainDevicesDiskMirrorBackingStoreSourceDir>? dir;
  /// Configures encryption settings for the disk, enhancing data security.
  final pulumi.Input<DomainDevicesDiskMirrorBackingStoreSourceEncryption>? encryption;
  /// Configures file-specific settings for the backing store source, managing its file access.
  final pulumi.Input<DomainDevicesDiskMirrorBackingStoreSourceFile>? file;
  /// Configures the index for the backing store source configuration, indicating its order.
  final pulumi.Input<double>? index;
  /// Configures network-specific settings for the backing store source, facilitating network access.
  final pulumi.Input<DomainDevicesDiskMirrorBackingStoreSourceNetwork>? network;
  /// Configures NVMe settings for accessing network storage, enabling optimized performance.
  final pulumi.Input<Map<String, dynamic>>? nvme;
  /// Sets the readahead configuration, optimizing I/O performance for network block devices.
  final pulumi.Input<DomainDevicesDiskMirrorBackingStoreSourceReadahead>? readahead;
  /// Defines reservations settings for network storage sources, enabling resource management.
  final pulumi.Input<DomainDevicesDiskMirrorBackingStoreSourceReservations>? reservations;
  /// Configures slices for the mirror source device.
  final pulumi.Input<DomainDevicesDiskMirrorBackingStoreSourceSlices>? slices;
  /// Configures SSL settings for the backing store source in disk mirroring.
  final pulumi.Input<DomainDevicesDiskMirrorBackingStoreSourceSsl>? ssl;
  /// Sets the startup policy for the backing store source in disk mirroring.
  final pulumi.Input<String>? startupPolicy;
  /// Configures the timeout settings for the backing store source in disk mirroring.
  final pulumi.Input<DomainDevicesDiskMirrorBackingStoreSourceTimeout>? timeout;
  /// Configures VHostUser settings for the backing store source in disk mirroring.
  final pulumi.Input<DomainDevicesDiskMirrorBackingStoreSourceVhostUser>? vhostUser;
  /// Configures the VHostVDPA settings for the source backing store.
  final pulumi.Input<DomainDevicesDiskMirrorBackingStoreSourceVhostVdpa>? vhostVdpa;
  /// Configures the source volume settings for the mirror backing store.
  final pulumi.Input<DomainDevicesDiskMirrorBackingStoreSourceVolume>? volume;

  /// Creates a new [DomainDevicesDiskMirrorBackingStoreSource].
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
  DomainDevicesDiskMirrorBackingStoreSource({
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
      'block': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskMirrorBackingStoreSourceBlock, Map<String, dynamic>>(block, (value) => value.toMap()),
      'cookies': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskMirrorBackingStoreSourceCookies, Map<String, dynamic>>(cookies, (value) => value.toMap()),
      'dataStore': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskMirrorBackingStoreSourceDataStore, Map<String, dynamic>>(dataStore, (value) => value.toMap()),
      'dir': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskMirrorBackingStoreSourceDir, Map<String, dynamic>>(dir, (value) => value.toMap()),
      'encryption': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskMirrorBackingStoreSourceEncryption, Map<String, dynamic>>(encryption, (value) => value.toMap()),
      'file': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskMirrorBackingStoreSourceFile, Map<String, dynamic>>(file, (value) => value.toMap()),
      'index': ?index,
      'network': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskMirrorBackingStoreSourceNetwork, Map<String, dynamic>>(network, (value) => value.toMap()),
      'nvme': ?nvme,
      'readahead': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskMirrorBackingStoreSourceReadahead, Map<String, dynamic>>(readahead, (value) => value.toMap()),
      'reservations': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskMirrorBackingStoreSourceReservations, Map<String, dynamic>>(reservations, (value) => value.toMap()),
      'slices': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskMirrorBackingStoreSourceSlices, Map<String, dynamic>>(slices, (value) => value.toMap()),
      'ssl': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskMirrorBackingStoreSourceSsl, Map<String, dynamic>>(ssl, (value) => value.toMap()),
      'startupPolicy': ?startupPolicy,
      'timeout': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskMirrorBackingStoreSourceTimeout, Map<String, dynamic>>(timeout, (value) => value.toMap()),
      'vhostUser': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskMirrorBackingStoreSourceVhostUser, Map<String, dynamic>>(vhostUser, (value) => value.toMap()),
      'vhostVdpa': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskMirrorBackingStoreSourceVhostVdpa, Map<String, dynamic>>(vhostVdpa, (value) => value.toMap()),
      'volume': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskMirrorBackingStoreSourceVolume, Map<String, dynamic>>(volume, (value) => value.toMap()),
    };
  }

  factory DomainDevicesDiskMirrorBackingStoreSource.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskMirrorBackingStoreSource(
      block: map['block'] == null ? null : (DomainDevicesDiskMirrorBackingStoreSourceBlock.fromMap((map['block'] as Map).cast<String, dynamic>())).input(),
      cookies: map['cookies'] == null ? null : (DomainDevicesDiskMirrorBackingStoreSourceCookies.fromMap((map['cookies'] as Map).cast<String, dynamic>())).input(),
      dataStore: map['dataStore'] == null ? null : (DomainDevicesDiskMirrorBackingStoreSourceDataStore.fromMap((map['dataStore'] as Map).cast<String, dynamic>())).input(),
      dir: map['dir'] == null ? null : (DomainDevicesDiskMirrorBackingStoreSourceDir.fromMap((map['dir'] as Map).cast<String, dynamic>())).input(),
      encryption: map['encryption'] == null ? null : (DomainDevicesDiskMirrorBackingStoreSourceEncryption.fromMap((map['encryption'] as Map).cast<String, dynamic>())).input(),
      file: map['file'] == null ? null : (DomainDevicesDiskMirrorBackingStoreSourceFile.fromMap((map['file'] as Map).cast<String, dynamic>())).input(),
      index: map['index'] == null ? null : (map['index'] as double).input(),
      network: map['network'] == null ? null : (DomainDevicesDiskMirrorBackingStoreSourceNetwork.fromMap((map['network'] as Map).cast<String, dynamic>())).input(),
      nvme: map['nvme'] == null ? null : ((map['nvme'] as Map).cast<String, dynamic>()).input(),
      readahead: map['readahead'] == null ? null : (DomainDevicesDiskMirrorBackingStoreSourceReadahead.fromMap((map['readahead'] as Map).cast<String, dynamic>())).input(),
      reservations: map['reservations'] == null ? null : (DomainDevicesDiskMirrorBackingStoreSourceReservations.fromMap((map['reservations'] as Map).cast<String, dynamic>())).input(),
      slices: map['slices'] == null ? null : (DomainDevicesDiskMirrorBackingStoreSourceSlices.fromMap((map['slices'] as Map).cast<String, dynamic>())).input(),
      ssl: map['ssl'] == null ? null : (DomainDevicesDiskMirrorBackingStoreSourceSsl.fromMap((map['ssl'] as Map).cast<String, dynamic>())).input(),
      startupPolicy: map['startupPolicy'] == null ? null : (map['startupPolicy'] as String).input(),
      timeout: map['timeout'] == null ? null : (DomainDevicesDiskMirrorBackingStoreSourceTimeout.fromMap((map['timeout'] as Map).cast<String, dynamic>())).input(),
      vhostUser: map['vhostUser'] == null ? null : (DomainDevicesDiskMirrorBackingStoreSourceVhostUser.fromMap((map['vhostUser'] as Map).cast<String, dynamic>())).input(),
      vhostVdpa: map['vhostVdpa'] == null ? null : (DomainDevicesDiskMirrorBackingStoreSourceVhostVdpa.fromMap((map['vhostVdpa'] as Map).cast<String, dynamic>())).input(),
      volume: map['volume'] == null ? null : (DomainDevicesDiskMirrorBackingStoreSourceVolume.fromMap((map['volume'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

