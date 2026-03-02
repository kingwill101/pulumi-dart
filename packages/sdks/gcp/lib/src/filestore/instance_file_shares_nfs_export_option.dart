// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceFileSharesNfsExportOption {
  /// Either READ_ONLY, for allowing only read requests on the exported directory,
  /// or READ_WRITE, for allowing both read and write requests. The default is READ_WRITE.
  /// Default value is `READ_WRITE`.
  /// Possible values are: `READ_ONLY`, `READ_WRITE`.
  final pulumi.Input<String>? accessMode;
  /// An integer representing the anonymous group id with a default value of 65534.
  /// Anon_gid may only be set with squashMode of ROOT_SQUASH. An error will be returned
  /// if this field is specified for other squashMode settings.
  final pulumi.Input<int>? anonGid;
  /// An integer representing the anonymous user id with a default value of 65534.
  /// Anon_uid may only be set with squashMode of ROOT_SQUASH. An error will be returned
  /// if this field is specified for other squashMode settings.
  final pulumi.Input<int>? anonUid;
  /// List of either IPv4 addresses, or ranges in CIDR notation which may mount the file share.
  /// Overlapping IP ranges are not allowed, both within and across NfsExportOptions. An error will be returned.
  /// The limit is 64 IP ranges/addresses for each FileShareConfig among all NfsExportOptions.
  final pulumi.Input<List<String>>? ipRanges;
  /// The source VPC network for `ip_ranges`.
  /// Required for instances using Private Service Connect, optional otherwise.
  final pulumi.Input<String>? network;
  /// Either NO_ROOT_SQUASH, for allowing root access on the exported directory, or ROOT_SQUASH,
  /// for not allowing root access. The default is NO_ROOT_SQUASH.
  /// Default value is `NO_ROOT_SQUASH`.
  /// Possible values are: `NO_ROOT_SQUASH`, `ROOT_SQUASH`.
  final pulumi.Input<String>? squashMode;

  /// Creates a new [InstanceFileSharesNfsExportOption].
  /// [accessMode] Either READ_ONLY, for allowing only read requests on the exported directory,
  /// [anonGid] An integer representing the anonymous group id with a default value of 65534.
  /// [anonUid] An integer representing the anonymous user id with a default value of 65534.
  /// [ipRanges] List of either IPv4 addresses, or ranges in CIDR notation which may mount the file share.
  /// [network] The source VPC network for `ip_ranges`.
  /// [squashMode] Either NO_ROOT_SQUASH, for allowing root access on the exported directory, or ROOT_SQUASH,
  InstanceFileSharesNfsExportOption({
    this.accessMode,
    this.anonGid,
    this.anonUid,
    this.ipRanges,
    this.network,
    this.squashMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessMode': ?accessMode,
      'anonGid': ?anonGid,
      'anonUid': ?anonUid,
      'ipRanges': ?ipRanges,
      'network': ?network,
      'squashMode': ?squashMode,
    };
  }

  factory InstanceFileSharesNfsExportOption.fromMap(Map<String, dynamic> map) {
    return InstanceFileSharesNfsExportOption(
      accessMode: map['accessMode'] == null ? null : (map['accessMode']! as String).input(),
      anonGid: map['anonGid'] == null ? null : (map['anonGid']! as int).input(),
      anonUid: map['anonUid'] == null ? null : (map['anonUid']! as int).input(),
      ipRanges: map['ipRanges'] == null ? null : ((map['ipRanges']! as List).cast<String>()).input(),
      network: map['network'] == null ? null : (map['network']! as String).input(),
      squashMode: map['squashMode'] == null ? null : (map['squashMode']! as String).input(),
    );
  }
}

