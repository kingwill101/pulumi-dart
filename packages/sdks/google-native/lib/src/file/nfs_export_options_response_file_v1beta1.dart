// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// NFS export options specifications.
class NfsExportOptionsResponseFileV1beta1 {
  /// Either READ_ONLY, for allowing only read requests on the exported directory, or READ_WRITE, for allowing both read and write requests. The default is READ_WRITE.
  final pulumi.Input<String> accessMode;
  /// An integer representing the anonymous group id with a default value of 65534. Anon_gid may only be set with squash_mode of ROOT_SQUASH. An error will be returned if this field is specified for other squash_mode settings.
  final pulumi.Input<String> anonGid;
  /// An integer representing the anonymous user id with a default value of 65534. Anon_uid may only be set with squash_mode of ROOT_SQUASH. An error will be returned if this field is specified for other squash_mode settings.
  final pulumi.Input<String> anonUid;
  /// List of either an IPv4 addresses in the format `{octet1}.{octet2}.{octet3}.{octet4}` or CIDR ranges in the format `{octet1}.{octet2}.{octet3}.{octet4}/{mask size}` which may mount the file share. Overlapping IP ranges are not allowed, both within and across NfsExportOptions. An error will be returned. The limit is 64 IP ranges/addresses for each FileShareConfig among all NfsExportOptions.
  final pulumi.Input<List<String>> ipRanges;
  /// The security flavors allowed for mount operations. The default is AUTH_SYS.
  final pulumi.Input<List<String>> securityFlavors;
  /// Either NO_ROOT_SQUASH, for allowing root access on the exported directory, or ROOT_SQUASH, for not allowing root access. The default is NO_ROOT_SQUASH.
  final pulumi.Input<String> squashMode;

  /// Creates a new [NfsExportOptionsResponseFileV1beta1].
  /// [accessMode] Either READ_ONLY, for allowing only read requests on the exported directory, or READ_WRITE, for allowing both read and write requests. The default is READ_WRITE.
  /// [anonGid] An integer representing the anonymous group id with a default value of 65534. Anon_gid may only be set with squash_mode of ROOT_SQUASH. An error will be returned if this field is specified for other squash_mode settings.
  /// [anonUid] An integer representing the anonymous user id with a default value of 65534. Anon_uid may only be set with squash_mode of ROOT_SQUASH. An error will be returned if this field is specified for other squash_mode settings.
  /// [ipRanges] List of either an IPv4 addresses in the format `{octet1}.{octet2}.{octet3}.{octet4}` or CIDR ranges in the format `{octet1}.{octet2}.{octet3}.{octet4}/{mask size}` which may mount the file share. Overlapping IP ranges are not allowed, both within and across NfsExportOptions. An error will be returned. The limit is 64 IP ranges/addresses for each FileShareConfig among all NfsExportOptions.
  /// [securityFlavors] The security flavors allowed for mount operations. The default is AUTH_SYS.
  /// [squashMode] Either NO_ROOT_SQUASH, for allowing root access on the exported directory, or ROOT_SQUASH, for not allowing root access. The default is NO_ROOT_SQUASH.
  NfsExportOptionsResponseFileV1beta1({
    required this.accessMode,
    required this.anonGid,
    required this.anonUid,
    required this.ipRanges,
    required this.securityFlavors,
    required this.squashMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessMode': accessMode,
      'anonGid': anonGid,
      'anonUid': anonUid,
      'ipRanges': ipRanges,
      'securityFlavors': securityFlavors,
      'squashMode': squashMode,
    };
  }

  factory NfsExportOptionsResponseFileV1beta1.fromMap(Map<String, dynamic> map) {
    return NfsExportOptionsResponseFileV1beta1(
      accessMode: pulumi.Input.fromValue(map['accessMode'] as String),
      anonGid: pulumi.Input.fromValue(map['anonGid'] as String),
      anonUid: pulumi.Input.fromValue(map['anonUid'] as String),
      ipRanges: pulumi.Input.fromValue((map['ipRanges'] as List).cast<String>()),
      securityFlavors: pulumi.Input.fromValue((map['securityFlavors'] as List).cast<String>()),
      squashMode: pulumi.Input.fromValue(map['squashMode'] as String),
    );
  }
}

