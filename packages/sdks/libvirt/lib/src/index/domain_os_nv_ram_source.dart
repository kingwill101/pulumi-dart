// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_os_nv_ram_source_block.dart';
import 'domain_os_nv_ram_source_cookies.dart';
import 'domain_os_nv_ram_source_data_store.dart';
import 'domain_os_nv_ram_source_dir.dart';
import 'domain_os_nv_ram_source_encryption.dart';
import 'domain_os_nv_ram_source_file.dart';
import 'domain_os_nv_ram_source_network.dart';
import 'domain_os_nv_ram_source_readahead.dart';
import 'domain_os_nv_ram_source_reservations.dart';
import 'domain_os_nv_ram_source_slices.dart';
import 'domain_os_nv_ram_source_ssl.dart';
import 'domain_os_nv_ram_source_timeout.dart';
import 'domain_os_nv_ram_source_vhost_user.dart';
import 'domain_os_nv_ram_source_vhost_vdpa.dart';
import 'domain_os_nv_ram_source_volume.dart';

class DomainOsNvRamSource {
  /// Configures the source block for the backing store, indicating its role within the mirroring setup.
  final pulumi.Input<DomainOsNvRamSourceBlock>? block;
  /// Configures settings related to cookie management for the backing store source.
  final pulumi.Input<DomainOsNvRamSourceCookies>? cookies;
  /// Configures the data store for the backing store, specifying the storage location.
  final pulumi.Input<DomainOsNvRamSourceDataStore>? dataStore;
  /// Configures the directory for the backing store source, indicating its physical location.
  final pulumi.Input<DomainOsNvRamSourceDir>? dir;
  /// Configures encryption settings for the disk, enhancing data security.
  final pulumi.Input<DomainOsNvRamSourceEncryption>? encryption;
  /// Configures file-specific settings for the backing store source, managing its file access.
  final pulumi.Input<DomainOsNvRamSourceFile>? file;
  /// Configures the index for the backing store source configuration, indicating its order.
  final pulumi.Input<double>? index;
  /// Configures network-specific settings for the backing store source, facilitating network access.
  final pulumi.Input<DomainOsNvRamSourceNetwork>? network;
  /// Configures NVMe settings for accessing network storage, enabling optimized performance.
  final pulumi.Input<Map<String, dynamic>>? nvme;
  /// Sets the readahead configuration, optimizing I/O performance for network block devices.
  final pulumi.Input<DomainOsNvRamSourceReadahead>? readahead;
  /// Defines reservations settings for network storage sources, enabling resource management.
  final pulumi.Input<DomainOsNvRamSourceReservations>? reservations;
  /// Configures slices for the mirror source device.
  final pulumi.Input<DomainOsNvRamSourceSlices>? slices;
  /// Configures SSL settings for the backing store source in disk mirroring.
  final pulumi.Input<DomainOsNvRamSourceSsl>? ssl;
  /// Sets the startup policy for the backing store source in disk mirroring.
  final pulumi.Input<String>? startupPolicy;
  /// Configures the timeout settings for the backing store source in disk mirroring.
  final pulumi.Input<DomainOsNvRamSourceTimeout>? timeout;
  /// Configures VHostUser settings for the backing store source in disk mirroring.
  final pulumi.Input<DomainOsNvRamSourceVhostUser>? vhostUser;
  /// Configures the VHostVDPA settings for the source backing store.
  final pulumi.Input<DomainOsNvRamSourceVhostVdpa>? vhostVdpa;
  /// Configures the source volume settings for the mirror backing store.
  final pulumi.Input<DomainOsNvRamSourceVolume>? volume;

  /// Creates a new [DomainOsNvRamSource].
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
  DomainOsNvRamSource({
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
      'block': ?pulumi.Input.mapOptionalInputValue<DomainOsNvRamSourceBlock, Map<String, dynamic>>(block, (value) => value.toMap()),
      'cookies': ?pulumi.Input.mapOptionalInputValue<DomainOsNvRamSourceCookies, Map<String, dynamic>>(cookies, (value) => value.toMap()),
      'dataStore': ?pulumi.Input.mapOptionalInputValue<DomainOsNvRamSourceDataStore, Map<String, dynamic>>(dataStore, (value) => value.toMap()),
      'dir': ?pulumi.Input.mapOptionalInputValue<DomainOsNvRamSourceDir, Map<String, dynamic>>(dir, (value) => value.toMap()),
      'encryption': ?pulumi.Input.mapOptionalInputValue<DomainOsNvRamSourceEncryption, Map<String, dynamic>>(encryption, (value) => value.toMap()),
      'file': ?pulumi.Input.mapOptionalInputValue<DomainOsNvRamSourceFile, Map<String, dynamic>>(file, (value) => value.toMap()),
      'index': ?index,
      'network': ?pulumi.Input.mapOptionalInputValue<DomainOsNvRamSourceNetwork, Map<String, dynamic>>(network, (value) => value.toMap()),
      'nvme': ?nvme,
      'readahead': ?pulumi.Input.mapOptionalInputValue<DomainOsNvRamSourceReadahead, Map<String, dynamic>>(readahead, (value) => value.toMap()),
      'reservations': ?pulumi.Input.mapOptionalInputValue<DomainOsNvRamSourceReservations, Map<String, dynamic>>(reservations, (value) => value.toMap()),
      'slices': ?pulumi.Input.mapOptionalInputValue<DomainOsNvRamSourceSlices, Map<String, dynamic>>(slices, (value) => value.toMap()),
      'ssl': ?pulumi.Input.mapOptionalInputValue<DomainOsNvRamSourceSsl, Map<String, dynamic>>(ssl, (value) => value.toMap()),
      'startupPolicy': ?startupPolicy,
      'timeout': ?pulumi.Input.mapOptionalInputValue<DomainOsNvRamSourceTimeout, Map<String, dynamic>>(timeout, (value) => value.toMap()),
      'vhostUser': ?pulumi.Input.mapOptionalInputValue<DomainOsNvRamSourceVhostUser, Map<String, dynamic>>(vhostUser, (value) => value.toMap()),
      'vhostVdpa': ?pulumi.Input.mapOptionalInputValue<DomainOsNvRamSourceVhostVdpa, Map<String, dynamic>>(vhostVdpa, (value) => value.toMap()),
      'volume': ?pulumi.Input.mapOptionalInputValue<DomainOsNvRamSourceVolume, Map<String, dynamic>>(volume, (value) => value.toMap()),
    };
  }

  factory DomainOsNvRamSource.fromMap(Map<String, dynamic> map) {
    return DomainOsNvRamSource(
      block: map['block'] == null ? null : (DomainOsNvRamSourceBlock.fromMap((map['block']! as Map).cast<String, dynamic>())).input(),
      cookies: map['cookies'] == null ? null : (DomainOsNvRamSourceCookies.fromMap((map['cookies']! as Map).cast<String, dynamic>())).input(),
      dataStore: map['dataStore'] == null ? null : (DomainOsNvRamSourceDataStore.fromMap((map['dataStore']! as Map).cast<String, dynamic>())).input(),
      dir: map['dir'] == null ? null : (DomainOsNvRamSourceDir.fromMap((map['dir']! as Map).cast<String, dynamic>())).input(),
      encryption: map['encryption'] == null ? null : (DomainOsNvRamSourceEncryption.fromMap((map['encryption']! as Map).cast<String, dynamic>())).input(),
      file: map['file'] == null ? null : (DomainOsNvRamSourceFile.fromMap((map['file']! as Map).cast<String, dynamic>())).input(),
      index: map['index'] == null ? null : (map['index']! as double).input(),
      network: map['network'] == null ? null : (DomainOsNvRamSourceNetwork.fromMap((map['network']! as Map).cast<String, dynamic>())).input(),
      nvme: map['nvme'] == null ? null : ((map['nvme']! as Map).cast<String, dynamic>()).input(),
      readahead: map['readahead'] == null ? null : (DomainOsNvRamSourceReadahead.fromMap((map['readahead']! as Map).cast<String, dynamic>())).input(),
      reservations: map['reservations'] == null ? null : (DomainOsNvRamSourceReservations.fromMap((map['reservations']! as Map).cast<String, dynamic>())).input(),
      slices: map['slices'] == null ? null : (DomainOsNvRamSourceSlices.fromMap((map['slices']! as Map).cast<String, dynamic>())).input(),
      ssl: map['ssl'] == null ? null : (DomainOsNvRamSourceSsl.fromMap((map['ssl']! as Map).cast<String, dynamic>())).input(),
      startupPolicy: map['startupPolicy'] == null ? null : (map['startupPolicy']! as String).input(),
      timeout: map['timeout'] == null ? null : (DomainOsNvRamSourceTimeout.fromMap((map['timeout']! as Map).cast<String, dynamic>())).input(),
      vhostUser: map['vhostUser'] == null ? null : (DomainOsNvRamSourceVhostUser.fromMap((map['vhostUser']! as Map).cast<String, dynamic>())).input(),
      vhostVdpa: map['vhostVdpa'] == null ? null : (DomainOsNvRamSourceVhostVdpa.fromMap((map['vhostVdpa']! as Map).cast<String, dynamic>())).input(),
      volume: map['volume'] == null ? null : (DomainOsNvRamSourceVolume.fromMap((map['volume']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

