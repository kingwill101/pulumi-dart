// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_disk_mirror_source_block.dart';
import 'domain_devices_disk_mirror_source_cookies.dart';
import 'domain_devices_disk_mirror_source_data_store.dart';
import 'domain_devices_disk_mirror_source_dir.dart';
import 'domain_devices_disk_mirror_source_encryption.dart';
import 'domain_devices_disk_mirror_source_file.dart';
import 'domain_devices_disk_mirror_source_network.dart';
import 'domain_devices_disk_mirror_source_readahead.dart';
import 'domain_devices_disk_mirror_source_reservations.dart';
import 'domain_devices_disk_mirror_source_slices.dart';
import 'domain_devices_disk_mirror_source_ssl.dart';
import 'domain_devices_disk_mirror_source_timeout.dart';
import 'domain_devices_disk_mirror_source_vhost_user.dart';
import 'domain_devices_disk_mirror_source_vhost_vdpa.dart';
import 'domain_devices_disk_mirror_source_volume.dart';

class DomainDevicesDiskMirrorSource {
  /// Configures the source block for the backing store, indicating its role within the mirroring setup.
  final pulumi.Input<DomainDevicesDiskMirrorSourceBlock>? block;
  /// Configures settings related to cookie management for the backing store source.
  final pulumi.Input<DomainDevicesDiskMirrorSourceCookies>? cookies;
  /// Configures the data store for the backing store, specifying the storage location.
  final pulumi.Input<DomainDevicesDiskMirrorSourceDataStore>? dataStore;
  /// Configures the directory for the backing store source, indicating its physical location.
  final pulumi.Input<DomainDevicesDiskMirrorSourceDir>? dir;
  /// Configures encryption settings for the disk, enhancing data security.
  final pulumi.Input<DomainDevicesDiskMirrorSourceEncryption>? encryption;
  /// Configures file-specific settings for the backing store source, managing its file access.
  final pulumi.Input<DomainDevicesDiskMirrorSourceFile>? file;
  /// Configures the index for the backing store source configuration, indicating its order.
  final pulumi.Input<double>? index;
  /// Configures network-specific settings for the backing store source, facilitating network access.
  final pulumi.Input<DomainDevicesDiskMirrorSourceNetwork>? network;
  /// Configures NVMe settings for accessing network storage, enabling optimized performance.
  final pulumi.Input<Map<String, dynamic>>? nvme;
  /// Sets the readahead configuration, optimizing I/O performance for network block devices.
  final pulumi.Input<DomainDevicesDiskMirrorSourceReadahead>? readahead;
  /// Defines reservations settings for network storage sources, enabling resource management.
  final pulumi.Input<DomainDevicesDiskMirrorSourceReservations>? reservations;
  /// Configures slices for the mirror source device.
  final pulumi.Input<DomainDevicesDiskMirrorSourceSlices>? slices;
  /// Configures SSL settings for the backing store source in disk mirroring.
  final pulumi.Input<DomainDevicesDiskMirrorSourceSsl>? ssl;
  /// Sets the startup policy for the backing store source in disk mirroring.
  final pulumi.Input<String>? startupPolicy;
  /// Configures the timeout settings for the backing store source in disk mirroring.
  final pulumi.Input<DomainDevicesDiskMirrorSourceTimeout>? timeout;
  /// Configures VHostUser settings for the backing store source in disk mirroring.
  final pulumi.Input<DomainDevicesDiskMirrorSourceVhostUser>? vhostUser;
  /// Configures the VHostVDPA settings for the source backing store.
  final pulumi.Input<DomainDevicesDiskMirrorSourceVhostVdpa>? vhostVdpa;
  /// Configures the source volume settings for the mirror backing store.
  final pulumi.Input<DomainDevicesDiskMirrorSourceVolume>? volume;

  /// Creates a new [DomainDevicesDiskMirrorSource].
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
  DomainDevicesDiskMirrorSource({
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
      'block': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskMirrorSourceBlock, Map<String, dynamic>>(block, (value) => value.toMap()),
      'cookies': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskMirrorSourceCookies, Map<String, dynamic>>(cookies, (value) => value.toMap()),
      'dataStore': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskMirrorSourceDataStore, Map<String, dynamic>>(dataStore, (value) => value.toMap()),
      'dir': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskMirrorSourceDir, Map<String, dynamic>>(dir, (value) => value.toMap()),
      'encryption': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskMirrorSourceEncryption, Map<String, dynamic>>(encryption, (value) => value.toMap()),
      'file': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskMirrorSourceFile, Map<String, dynamic>>(file, (value) => value.toMap()),
      'index': ?index,
      'network': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskMirrorSourceNetwork, Map<String, dynamic>>(network, (value) => value.toMap()),
      'nvme': ?nvme,
      'readahead': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskMirrorSourceReadahead, Map<String, dynamic>>(readahead, (value) => value.toMap()),
      'reservations': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskMirrorSourceReservations, Map<String, dynamic>>(reservations, (value) => value.toMap()),
      'slices': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskMirrorSourceSlices, Map<String, dynamic>>(slices, (value) => value.toMap()),
      'ssl': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskMirrorSourceSsl, Map<String, dynamic>>(ssl, (value) => value.toMap()),
      'startupPolicy': ?startupPolicy,
      'timeout': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskMirrorSourceTimeout, Map<String, dynamic>>(timeout, (value) => value.toMap()),
      'vhostUser': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskMirrorSourceVhostUser, Map<String, dynamic>>(vhostUser, (value) => value.toMap()),
      'vhostVdpa': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskMirrorSourceVhostVdpa, Map<String, dynamic>>(vhostVdpa, (value) => value.toMap()),
      'volume': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskMirrorSourceVolume, Map<String, dynamic>>(volume, (value) => value.toMap()),
    };
  }

  factory DomainDevicesDiskMirrorSource.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskMirrorSource(
      block: map['block'] == null ? null : (DomainDevicesDiskMirrorSourceBlock.fromMap((map['block'] as Map).cast<String, dynamic>())).input(),
      cookies: map['cookies'] == null ? null : (DomainDevicesDiskMirrorSourceCookies.fromMap((map['cookies'] as Map).cast<String, dynamic>())).input(),
      dataStore: map['dataStore'] == null ? null : (DomainDevicesDiskMirrorSourceDataStore.fromMap((map['dataStore'] as Map).cast<String, dynamic>())).input(),
      dir: map['dir'] == null ? null : (DomainDevicesDiskMirrorSourceDir.fromMap((map['dir'] as Map).cast<String, dynamic>())).input(),
      encryption: map['encryption'] == null ? null : (DomainDevicesDiskMirrorSourceEncryption.fromMap((map['encryption'] as Map).cast<String, dynamic>())).input(),
      file: map['file'] == null ? null : (DomainDevicesDiskMirrorSourceFile.fromMap((map['file'] as Map).cast<String, dynamic>())).input(),
      index: map['index'] == null ? null : (map['index'] as double).input(),
      network: map['network'] == null ? null : (DomainDevicesDiskMirrorSourceNetwork.fromMap((map['network'] as Map).cast<String, dynamic>())).input(),
      nvme: map['nvme'] == null ? null : ((map['nvme'] as Map).cast<String, dynamic>()).input(),
      readahead: map['readahead'] == null ? null : (DomainDevicesDiskMirrorSourceReadahead.fromMap((map['readahead'] as Map).cast<String, dynamic>())).input(),
      reservations: map['reservations'] == null ? null : (DomainDevicesDiskMirrorSourceReservations.fromMap((map['reservations'] as Map).cast<String, dynamic>())).input(),
      slices: map['slices'] == null ? null : (DomainDevicesDiskMirrorSourceSlices.fromMap((map['slices'] as Map).cast<String, dynamic>())).input(),
      ssl: map['ssl'] == null ? null : (DomainDevicesDiskMirrorSourceSsl.fromMap((map['ssl'] as Map).cast<String, dynamic>())).input(),
      startupPolicy: map['startupPolicy'] == null ? null : (map['startupPolicy'] as String).input(),
      timeout: map['timeout'] == null ? null : (DomainDevicesDiskMirrorSourceTimeout.fromMap((map['timeout'] as Map).cast<String, dynamic>())).input(),
      vhostUser: map['vhostUser'] == null ? null : (DomainDevicesDiskMirrorSourceVhostUser.fromMap((map['vhostUser'] as Map).cast<String, dynamic>())).input(),
      vhostVdpa: map['vhostVdpa'] == null ? null : (DomainDevicesDiskMirrorSourceVhostVdpa.fromMap((map['vhostVdpa'] as Map).cast<String, dynamic>())).input(),
      volume: map['volume'] == null ? null : (DomainDevicesDiskMirrorSourceVolume.fromMap((map['volume'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

