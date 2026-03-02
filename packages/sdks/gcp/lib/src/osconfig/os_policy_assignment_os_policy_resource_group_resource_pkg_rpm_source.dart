// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'os_policy_assignment_os_policy_resource_group_resource_pkg_rpm_source_gcs.dart';
import 'os_policy_assignment_os_policy_resource_group_resource_pkg_rpm_source_remote.dart';

class OsPolicyAssignmentOsPolicyResourceGroupResourcePkgRpmSource {
  /// Defaults to false. When false, files are
  /// subject to validations based on the file type: Remote: A checksum must be
  /// specified. Cloud Storage: An object generation number must be specified.
  final pulumi.Input<bool>? allowInsecure;
  /// A Cloud Storage object. Structure is
  /// documented below.
  final pulumi.Input<OsPolicyAssignmentOsPolicyResourceGroupResourcePkgRpmSourceGcs>? gcs;
  /// A local path within the VM to use.
  final pulumi.Input<String>? localPath;
  /// A generic remote file. Structure is
  /// documented below.
  final pulumi.Input<OsPolicyAssignmentOsPolicyResourceGroupResourcePkgRpmSourceRemote>? remote;

  /// Creates a new [OsPolicyAssignmentOsPolicyResourceGroupResourcePkgRpmSource].
  /// [allowInsecure] Defaults to false. When false, files are
  /// [gcs] A Cloud Storage object. Structure is
  /// [localPath] A local path within the VM to use.
  /// [remote] A generic remote file. Structure is
  OsPolicyAssignmentOsPolicyResourceGroupResourcePkgRpmSource({
    this.allowInsecure,
    this.gcs,
    this.localPath,
    this.remote,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowInsecure': ?allowInsecure,
      'gcs': ?pulumi.Input.mapOptionalInputValue<OsPolicyAssignmentOsPolicyResourceGroupResourcePkgRpmSourceGcs, Map<String, dynamic>>(gcs, (value) => value.toMap()),
      'localPath': ?localPath,
      'remote': ?pulumi.Input.mapOptionalInputValue<OsPolicyAssignmentOsPolicyResourceGroupResourcePkgRpmSourceRemote, Map<String, dynamic>>(remote, (value) => value.toMap()),
    };
  }

  factory OsPolicyAssignmentOsPolicyResourceGroupResourcePkgRpmSource.fromMap(Map<String, dynamic> map) {
    return OsPolicyAssignmentOsPolicyResourceGroupResourcePkgRpmSource(
      allowInsecure: map['allowInsecure'] == null ? null : (map['allowInsecure']! as bool).input(),
      gcs: map['gcs'] == null ? null : (OsPolicyAssignmentOsPolicyResourceGroupResourcePkgRpmSourceGcs.fromMap((map['gcs']! as Map).cast<String, dynamic>())).input(),
      localPath: map['localPath'] == null ? null : (map['localPath']! as String).input(),
      remote: map['remote'] == null ? null : (OsPolicyAssignmentOsPolicyResourceGroupResourcePkgRpmSourceRemote.fromMap((map['remote']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

