// ignore_for_file: unused_element, unnecessary_cast


class GetPoolUserAccountLinuxUserConfiguration {
  /// The user ID of the user account.
  final int gid;
  /// The SSH private key for the user account.
  final String sshPrivateKey;
  /// The group ID for the user account.
  final int uid;

  /// Creates a new [GetPoolUserAccountLinuxUserConfiguration].
  /// [gid] The user ID of the user account.
  /// [sshPrivateKey] The SSH private key for the user account.
  /// [uid] The group ID for the user account.
  GetPoolUserAccountLinuxUserConfiguration({
    required this.gid,
    required this.sshPrivateKey,
    required this.uid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gid': gid,
      'sshPrivateKey': sshPrivateKey,
      'uid': uid,
    };
  }

  factory GetPoolUserAccountLinuxUserConfiguration.fromMap(Map<String, dynamic> map) {
    return GetPoolUserAccountLinuxUserConfiguration(
      gid: map['gid'] as int,
      sshPrivateKey: map['sshPrivateKey'] as String,
      uid: map['uid'] as int,
    );
  }
}

