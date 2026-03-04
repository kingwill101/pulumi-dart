// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Access Control List (ACL) for an iSCSI Target; defines LUN masking policy
class Acl {
  /// iSCSI initiator IQN (iSCSI Qualified Name); example: "iqn.2005-03.org.iscsi:client".
  final pulumi.Input<String> initiatorIqn;

  /// List of LUN names mapped to the ACL.
  final pulumi.Input<List<String>> mappedLuns;

  /// Creates a new [Acl].
  /// [initiatorIqn] iSCSI initiator IQN (iSCSI Qualified Name); example: "iqn.2005-03.org.iscsi:client".
  /// [mappedLuns] List of LUN names mapped to the ACL.
  Acl({required this.initiatorIqn, required this.mappedLuns});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'initiatorIqn': initiatorIqn,
      'mappedLuns': mappedLuns,
    };
  }

  factory Acl.fromMap(Map<String, dynamic> map) {
    return Acl(
      initiatorIqn: pulumi.Input.fromValue(map['initiatorIqn'] as String),
      mappedLuns: pulumi.Input.fromValue(
        (map['mappedLuns'] as List).cast<String>(),
      ),
    );
  }
}
