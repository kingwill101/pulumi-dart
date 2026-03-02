// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'os_policy_assignment_os_policy_resource_group_resource_pkg_msi_source_gcs.dart';
import 'os_policy_assignment_os_policy_resource_group_resource_pkg_msi_source_remote.dart';

class OsPolicyAssignmentOsPolicyResourceGroupResourcePkgMsiSource {
  /// Defaults to false. When false, files are
  /// subject to validations based on the file type: Remote: A checksum must be
  /// specified. Cloud Storage: An object generation number must be specified.
  final pulumi.Input<bool>? allowInsecure;
  /// A Cloud Storage object. Structure is
  /// documented below.
  final pulumi.Input<OsPolicyAssignmentOsPolicyResourceGroupResourcePkgMsiSourceGcs>? gcs;
  /// A local path within the VM to use.
  final pulumi.Input<String>? localPath;
  /// A generic remote file. Structure is
  /// documented below.
  final pulumi.Input<OsPolicyAssignmentOsPolicyResourceGroupResourcePkgMsiSourceRemote>? remote;

  /// Creates a new [OsPolicyAssignmentOsPolicyResourceGroupResourcePkgMsiSource].
  /// [allowInsecure] Defaults to false. When false, files are
  /// [gcs] A Cloud Storage object. Structure is
  /// [localPath] A local path within the VM to use.
  /// [remote] A generic remote file. Structure is
  OsPolicyAssignmentOsPolicyResourceGroupResourcePkgMsiSource({
    this.allowInsecure,
    this.gcs,
    this.localPath,
    this.remote,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowInsecure': ?allowInsecure,
      'gcs': ?pulumi.Input.mapOptionalInputValue<OsPolicyAssignmentOsPolicyResourceGroupResourcePkgMsiSourceGcs, Map<String, dynamic>>(gcs, (value) => value.toMap()),
      'localPath': ?localPath,
      'remote': ?pulumi.Input.mapOptionalInputValue<OsPolicyAssignmentOsPolicyResourceGroupResourcePkgMsiSourceRemote, Map<String, dynamic>>(remote, (value) => value.toMap()),
    };
  }

  factory OsPolicyAssignmentOsPolicyResourceGroupResourcePkgMsiSource.fromMap(Map<String, dynamic> map) {
    return OsPolicyAssignmentOsPolicyResourceGroupResourcePkgMsiSource(
      allowInsecure: map['allowInsecure'] == null ? null : (map['allowInsecure']! as bool).input(),
      gcs: map['gcs'] == null ? null : (OsPolicyAssignmentOsPolicyResourceGroupResourcePkgMsiSourceGcs.fromMap((map['gcs']! as Map).cast<String, dynamic>())).input(),
      localPath: map['localPath'] == null ? null : (map['localPath']! as String).input(),
      remote: map['remote'] == null ? null : (OsPolicyAssignmentOsPolicyResourceGroupResourcePkgMsiSourceRemote.fromMap((map['remote']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

