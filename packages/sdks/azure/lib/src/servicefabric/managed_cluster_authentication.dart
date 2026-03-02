// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_cluster_authentication_active_directory.dart';
import 'managed_cluster_authentication_certificate.dart';

class ManagedClusterAuthentication {
  /// A `active_directory` block as defined above.
  final pulumi.Input<ManagedClusterAuthenticationActiveDirectory>? activeDirectory;
  /// One or more `certificate` blocks as defined below.
  final pulumi.Input<List<ManagedClusterAuthenticationCertificate>>? certificates;

  /// Creates a new [ManagedClusterAuthentication].
  /// [activeDirectory] A `active_directory` block as defined above.
  /// [certificates] One or more `certificate` blocks as defined below.
  ManagedClusterAuthentication({
    this.activeDirectory,
    this.certificates,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeDirectory': ?pulumi.Input.mapOptionalInputValue<ManagedClusterAuthenticationActiveDirectory, Map<String, dynamic>>(activeDirectory, (value) => value.toMap()),
      'certificates': ?pulumi.Input.mapOptionalInputValue<List<ManagedClusterAuthenticationCertificate>, List<Map<String, dynamic>>>(certificates, (value) => pulumi.Input.encodeList<ManagedClusterAuthenticationCertificate, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ManagedClusterAuthentication.fromMap(Map<String, dynamic> map) {
    return ManagedClusterAuthentication(
      activeDirectory: map['activeDirectory'] == null ? null : (ManagedClusterAuthenticationActiveDirectory.fromMap((map['activeDirectory'] as Map).cast<String, dynamic>())).input(),
      certificates: map['certificates'] == null ? null : (pulumi.Input.decodeList<ManagedClusterAuthenticationCertificate>(map['certificates'], (value) => ManagedClusterAuthenticationCertificate.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

