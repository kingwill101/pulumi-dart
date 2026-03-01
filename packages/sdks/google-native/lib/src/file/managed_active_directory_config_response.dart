// ignore_for_file: unused_element, unnecessary_cast


/// ManagedActiveDirectoryConfig contains all the parameters for connecting to Managed Active Directory.
class ManagedActiveDirectoryConfigResponse {
  /// The computer name is used as a prefix to the mount remote target. Example: if the computer_name is `my-computer`, the mount command will look like: `$mount -o vers=4,sec=krb5 my-computer.filestore.:`.
  final String computer;
  /// Fully qualified domain name.
  final String domain;

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
      computer: map['computer'] as String,
      domain: map['domain'] as String,
    );
  }
}

