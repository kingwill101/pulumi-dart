// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'share_acl_access_policy.dart';

class ShareAcl {
  /// An `access_policy` block as defined below.
  final pulumi.Input<List<ShareAclAccessPolicy>>? accessPolicies;

  /// The ID which should be used for this Shared Identifier.
  final pulumi.Input<String> id;

  /// Creates a new [ShareAcl].
  /// [accessPolicies] An `access_policy` block as defined below.
  /// [id] The ID which should be used for this Shared Identifier.
  ShareAcl({this.accessPolicies, required this.id});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessPolicies':
          ?pulumi.Input.mapOptionalInputValue<
            List<ShareAclAccessPolicy>,
            List<Map<String, dynamic>>
          >(
            accessPolicies,
            (value) =>
                pulumi.Input.encodeList<
                  ShareAclAccessPolicy,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'id': id,
    };
  }

  factory ShareAcl.fromMap(Map<String, dynamic> map) {
    return ShareAcl(
      accessPolicies: (() {
        final guardedValue = map['accessPolicies'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ShareAclAccessPolicy>(
            guardedValue,
            (value) => ShareAclAccessPolicy.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
