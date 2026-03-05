// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_filesystem_id_map_gid.dart';
import 'domain_devices_filesystem_id_map_uid.dart';

class DomainDevicesFilesystemIdMap {
  /// Configures group ID mapping for the filesystem.
  final pulumi.Input<List<DomainDevicesFilesystemIdMapGid>>? gids;
  /// Configures user ID mapping for the filesystem.
  final pulumi.Input<List<DomainDevicesFilesystemIdMapUid>>? uids;

  /// Creates a new [DomainDevicesFilesystemIdMap].
  /// [gids] Configures group ID mapping for the filesystem.
  /// [uids] Configures user ID mapping for the filesystem.
  DomainDevicesFilesystemIdMap({
    this.gids,
    this.uids,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gids': ?pulumi.Input.mapOptionalInputValue<List<DomainDevicesFilesystemIdMapGid>, List<Map<String, dynamic>>>(gids, (value) => pulumi.Input.encodeList<DomainDevicesFilesystemIdMapGid, Map<String, dynamic>>(value, (value) => value.toMap())),
      'uids': ?pulumi.Input.mapOptionalInputValue<List<DomainDevicesFilesystemIdMapUid>, List<Map<String, dynamic>>>(uids, (value) => pulumi.Input.encodeList<DomainDevicesFilesystemIdMapUid, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DomainDevicesFilesystemIdMap.fromMap(Map<String, dynamic> map) {
    return DomainDevicesFilesystemIdMap(
      gids: (() { final guardedValue = map['gids']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DomainDevicesFilesystemIdMapGid>(guardedValue, (value) => DomainDevicesFilesystemIdMapGid.fromMap((value as Map).cast<String, dynamic>()))); })(),
      uids: (() { final guardedValue = map['uids']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DomainDevicesFilesystemIdMapUid>(guardedValue, (value) => DomainDevicesFilesystemIdMapUid.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

