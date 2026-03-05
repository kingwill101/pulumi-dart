// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ManagedActiveDirectoryConfig contains all the parameters for connecting to Managed Active Directory.
class ManagedActiveDirectoryConfigResponse {
  /// The computer name is used as a prefix to the mount remote target. Example: if the computer_name is `my-computer`, the mount command will look like: `$mount -o vers=4,sec=krb5 my-computer.filestore.:`.
  final pulumi.Input<String> computer;
  /// Fully qualified domain name.
  final pulumi.Input<String> domain;

  /// Creates a new [ManagedActiveDirectoryConfigResponse].
  /// [computer] The computer name is used as a prefix to the mount remote target. Example: if the computer_name is `my-computer`, the mount command will look like: `$mount -o vers=4,sec=krb5 my-computer.filestore.:`.
  /// [domain] Fully qualified domain name.
  ManagedActiveDirectoryConfigResponse({
    required this.computer,
    required this.domain,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'computer': computer,
      'domain': domain,
    };
  }

  factory ManagedActiveDirectoryConfigResponse.fromMap(Map<String, dynamic> map) {
    return ManagedActiveDirectoryConfigResponse(
      computer: pulumi.Input.fromValue(map['computer'] as String),
      domain: pulumi.Input.fromValue(map['domain'] as String),
    );
  }
}

