// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'nfs_export_options_access_mode.dart';
import 'nfs_export_options_squash_mode.dart';

/// NFS export options specifications.
class NfsExportOptions {
  /// Either READ_ONLY, for allowing only read requests on the exported directory, or READ_WRITE, for allowing both read and write requests. The default is READ_WRITE.
  final pulumi.Input<NfsExportOptionsAccessMode>? accessMode;
  /// An integer representing the anonymous group id with a default value of 65534. Anon_gid may only be set with squash_mode of ROOT_SQUASH. An error will be returned if this field is specified for other squash_mode settings.
  final pulumi.Input<String>? anonGid;
  /// An integer representing the anonymous user id with a default value of 65534. Anon_uid may only be set with squash_mode of ROOT_SQUASH. An error will be returned if this field is specified for other squash_mode settings.
  final pulumi.Input<String>? anonUid;
  /// List of either an IPv4 addresses in the format `{octet1}.{octet2}.{octet3}.{octet4}` or CIDR ranges in the format `{octet1}.{octet2}.{octet3}.{octet4}/{mask size}` which may mount the file share. Overlapping IP ranges are not allowed, both within and across NfsExportOptions. An error will be returned. The limit is 64 IP ranges/addresses for each FileShareConfig among all NfsExportOptions.
  final pulumi.Input<List<String>>? ipRanges;
  /// Either NO_ROOT_SQUASH, for allowing root access on the exported directory, or ROOT_SQUASH, for not allowing root access. The default is NO_ROOT_SQUASH.
  final pulumi.Input<NfsExportOptionsSquashMode>? squashMode;

  /// Creates a new [NfsExportOptions].
  /// [accessMode] Either READ_ONLY, for allowing only read requests on the exported directory, or READ_WRITE, for allowing both read and write requests. The default is READ_WRITE.
  /// [anonGid] An integer representing the anonymous group id with a default value of 65534. Anon_gid may only be set with squash_mode of ROOT_SQUASH. An error will be returned if this field is specified for other squash_mode settings.
  /// [anonUid] An integer representing the anonymous user id with a default value of 65534. Anon_uid may only be set with squash_mode of ROOT_SQUASH. An error will be returned if this field is specified for other squash_mode settings.
  /// [ipRanges] List of either an IPv4 addresses in the format `{octet1}.{octet2}.{octet3}.{octet4}` or CIDR ranges in the format `{octet1}.{octet2}.{octet3}.{octet4}/{mask size}` which may mount the file share. Overlapping IP ranges are not allowed, both within and across NfsExportOptions. An error will be returned. The limit is 64 IP ranges/addresses for each FileShareConfig among all NfsExportOptions.
  /// [squashMode] Either NO_ROOT_SQUASH, for allowing root access on the exported directory, or ROOT_SQUASH, for not allowing root access. The default is NO_ROOT_SQUASH.
  const NfsExportOptions({
    this.accessMode,
    this.anonGid,
    this.anonUid,
    this.ipRanges,
    this.squashMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessMode': ?pulumi.Input.mapOptionalInputValue<NfsExportOptionsAccessMode, String>(accessMode, (value) => value.wireValue),
      'anonGid': ?anonGid,
      'anonUid': ?anonUid,
      'ipRanges': ?ipRanges,
      'squashMode': ?pulumi.Input.mapOptionalInputValue<NfsExportOptionsSquashMode, String>(squashMode, (value) => value.wireValue),
    };
  }

  factory NfsExportOptions.fromMap(Map<String, dynamic> map) {
    return NfsExportOptions(
      accessMode: (() { final guardedValue = map['accessMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NfsExportOptionsAccessMode.fromValue(guardedValue as String)); })(),
      anonGid: (() { final guardedValue = map['anonGid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      anonUid: (() { final guardedValue = map['anonUid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipRanges: (() { final guardedValue = map['ipRanges']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      squashMode: (() { final guardedValue = map['squashMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NfsExportOptionsSquashMode.fromValue(guardedValue as String)); })(),
    );
  }
}

