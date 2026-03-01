// ignore_for_file: unused_element, unnecessary_cast


class GetSshkeysSshkey {
  /// The date this key was added.
  final String created;
  /// The ID of the SSH Key.
  final String? id;
  /// The label of the SSH Key.
  final String label;
  /// The public SSH Key, which is used to authenticate to the root user of the Linodes you deploy.
  final String sshKey;

  /// Creates a new [GetSshkeysSshkey].
  /// [created] The date this key was added.
  /// [id] The ID of the SSH Key.
  /// [label] The label of the SSH Key.
  /// [sshKey] The public SSH Key, which is used to authenticate to the root user of the Linodes you deploy.
  GetSshkeysSshkey({
    required this.created,
    this.id,
    required this.label,
    required this.sshKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'created': created,
      'id': ?id,
      'label': label,
      'sshKey': sshKey,
    };
  }

  factory GetSshkeysSshkey.fromMap(Map<String, dynamic> map) {
    return GetSshkeysSshkey(
      created: map['created'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      label: map['label'] as String,
      sshKey: map['sshKey'] as String,
    );
  }
}

