// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ManagedActiveDirectoryConfig contains all the parameters for connecting to Managed Active Directory.
class ManagedActiveDirectoryConfig {
  /// The computer name is used as a prefix to the mount remote target. Example: if the computer_name is `my-computer`, the mount command will look like: `$mount -o vers=4,sec=krb5 my-computer.filestore.:`.
  final pulumi.Input<String>? computer;

  /// Fully qualified domain name.
  final pulumi.Input<String>? domain;

  /// Creates a new [ManagedActiveDirectoryConfig].
  /// [computer] The computer name is used as a prefix to the mount remote target. Example: if the computer_name is `my-computer`, the mount command will look like: `$mount -o vers=4,sec=krb5 my-computer.filestore.:`.
  /// [domain] Fully qualified domain name.
  ManagedActiveDirectoryConfig({this.computer, this.domain});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'computer': ?computer, 'domain': ?domain};
  }

  factory ManagedActiveDirectoryConfig.fromMap(Map<String, dynamic> map) {
    return ManagedActiveDirectoryConfig(
      computer: (() {
        final guardedValue = map['computer'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      domain: (() {
        final guardedValue = map['domain'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
