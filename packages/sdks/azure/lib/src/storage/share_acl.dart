// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'share_acl_access_policy.dart';

class ShareAcl {
  /// An `access_policy` block as defined below.
  final List<ShareAclAccessPolicy>? accessPolicies;
  /// The ID which should be used for this Shared Identifier.
  final String id;

  /// Creates a new [ShareAcl].
  /// [accessPolicies] An `access_policy` block as defined below.
  /// [id] The ID which should be used for this Shared Identifier.
  ShareAcl({
    this.accessPolicies,
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessPolicies': ?accessPolicies == null ? null : pulumi.Input.encodeList<ShareAclAccessPolicy, Map<String, dynamic>>(accessPolicies!, (value) => value.toMap()),
      'id': id,
    };
  }

  factory ShareAcl.fromMap(Map<String, dynamic> map) {
    return ShareAcl(
      accessPolicies: map['accessPolicies'] == null ? null : pulumi.Input.decodeList<ShareAclAccessPolicy>(map['accessPolicies'], (value) => ShareAclAccessPolicy.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
    );
  }
}

