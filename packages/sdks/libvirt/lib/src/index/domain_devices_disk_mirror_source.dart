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
      'block':
          ?pulumi.Input.mapOptionalInputValue<
            DomainDevicesDiskMirrorSourceBlock,
            Map<String, dynamic>
          >(block, (value) => value.toMap()),
      'cookies':
          ?pulumi.Input.mapOptionalInputValue<
            DomainDevicesDiskMirrorSourceCookies,
            Map<String, dynamic>
          >(cookies, (value) => value.toMap()),
      'dataStore':
          ?pulumi.Input.mapOptionalInputValue<
            DomainDevicesDiskMirrorSourceDataStore,
            Map<String, dynamic>
          >(dataStore, (value) => value.toMap()),
      'dir':
          ?pulumi.Input.mapOptionalInputValue<
            DomainDevicesDiskMirrorSourceDir,
            Map<String, dynamic>
          >(dir, (value) => value.toMap()),
      'encryption':
          ?pulumi.Input.mapOptionalInputValue<
            DomainDevicesDiskMirrorSourceEncryption,
            Map<String, dynamic>
          >(encryption, (value) => value.toMap()),
      'file':
          ?pulumi.Input.mapOptionalInputValue<
            DomainDevicesDiskMirrorSourceFile,
            Map<String, dynamic>
          >(file, (value) => value.toMap()),
      'index': ?index,
      'network':
          ?pulumi.Input.mapOptionalInputValue<
            DomainDevicesDiskMirrorSourceNetwork,
            Map<String, dynamic>
          >(network, (value) => value.toMap()),
      'nvme': ?nvme,
      'readahead':
          ?pulumi.Input.mapOptionalInputValue<
            DomainDevicesDiskMirrorSourceReadahead,
            Map<String, dynamic>
          >(readahead, (value) => value.toMap()),
      'reservations':
          ?pulumi.Input.mapOptionalInputValue<
            DomainDevicesDiskMirrorSourceReservations,
            Map<String, dynamic>
          >(reservations, (value) => value.toMap()),
      'slices':
          ?pulumi.Input.mapOptionalInputValue<
            DomainDevicesDiskMirrorSourceSlices,
            Map<String, dynamic>
          >(slices, (value) => value.toMap()),
      'ssl':
          ?pulumi.Input.mapOptionalInputValue<
            DomainDevicesDiskMirrorSourceSsl,
            Map<String, dynamic>
          >(ssl, (value) => value.toMap()),
      'startupPolicy': ?startupPolicy,
      'timeout':
          ?pulumi.Input.mapOptionalInputValue<
            DomainDevicesDiskMirrorSourceTimeout,
            Map<String, dynamic>
          >(timeout, (value) => value.toMap()),
      'vhostUser':
          ?pulumi.Input.mapOptionalInputValue<
            DomainDevicesDiskMirrorSourceVhostUser,
            Map<String, dynamic>
          >(vhostUser, (value) => value.toMap()),
      'vhostVdpa':
          ?pulumi.Input.mapOptionalInputValue<
            DomainDevicesDiskMirrorSourceVhostVdpa,
            Map<String, dynamic>
          >(vhostVdpa, (value) => value.toMap()),
      'volume':
          ?pulumi.Input.mapOptionalInputValue<
            DomainDevicesDiskMirrorSourceVolume,
            Map<String, dynamic>
          >(volume, (value) => value.toMap()),
    };
  }

  factory DomainDevicesDiskMirrorSource.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskMirrorSource(
      block: (() {
        final guardedValue = map['block'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DomainDevicesDiskMirrorSourceBlock.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      cookies: (() {
        final guardedValue = map['cookies'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DomainDevicesDiskMirrorSourceCookies.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      dataStore: (() {
        final guardedValue = map['dataStore'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DomainDevicesDiskMirrorSourceDataStore.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      dir: (() {
        final guardedValue = map['dir'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DomainDevicesDiskMirrorSourceDir.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      encryption: (() {
        final guardedValue = map['encryption'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DomainDevicesDiskMirrorSourceEncryption.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      file: (() {
        final guardedValue = map['file'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DomainDevicesDiskMirrorSourceFile.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      index: (() {
        final guardedValue = map['index'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      network: (() {
        final guardedValue = map['network'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DomainDevicesDiskMirrorSourceNetwork.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      nvme: (() {
        final guardedValue = map['nvme'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      readahead: (() {
        final guardedValue = map['readahead'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DomainDevicesDiskMirrorSourceReadahead.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      reservations: (() {
        final guardedValue = map['reservations'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DomainDevicesDiskMirrorSourceReservations.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      slices: (() {
        final guardedValue = map['slices'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DomainDevicesDiskMirrorSourceSlices.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      ssl: (() {
        final guardedValue = map['ssl'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DomainDevicesDiskMirrorSourceSsl.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      startupPolicy: (() {
        final guardedValue = map['startupPolicy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      timeout: (() {
        final guardedValue = map['timeout'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DomainDevicesDiskMirrorSourceTimeout.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      vhostUser: (() {
        final guardedValue = map['vhostUser'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DomainDevicesDiskMirrorSourceVhostUser.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      vhostVdpa: (() {
        final guardedValue = map['vhostVdpa'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DomainDevicesDiskMirrorSourceVhostVdpa.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      volume: (() {
        final guardedValue = map['volume'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DomainDevicesDiskMirrorSourceVolume.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
