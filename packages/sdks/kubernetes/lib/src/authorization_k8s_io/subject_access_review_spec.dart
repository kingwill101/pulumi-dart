// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'non_resource_attributes.dart';
import 'resource_attributes.dart';

/// SubjectAccessReviewSpec is a description of the access request.  Exactly one of resourceAttributes and nonResourceAttributes must be set
class SubjectAccessReviewSpec {
  /// extra corresponds to the user.Info.GetExtra() method from the authenticator.  Since that is input to the authorizer it needs a reflection here.
  final pulumi.Input<Map<String, List<String>>?>? extra;
  /// groups is the groups you're testing for.
  final pulumi.Input<List<String>?>? groups;
  /// nonResourceAttributes describes information for a non-resource access request
  final pulumi.Input<NonResourceAttributes?>? nonResourceAttributes;
  /// resourceAttributes describes information for a resource access request
  final pulumi.Input<ResourceAttributes?>? resourceAttributes;
  /// uid information about the requesting user.
  final pulumi.Input<String?>? uid;
  /// user is the user you're testing for. If you specify "User" but not "Groups", then is it interpreted as "What if User were not a member of any groups
  final pulumi.Input<String?>? user;

  /// Creates a new [SubjectAccessReviewSpec].
  /// [extra] extra corresponds to the user.Info.GetExtra() method from the authenticator.  Since that is input to the authorizer it needs a reflection here.
  /// [groups] groups is the groups you're testing for.
  /// [nonResourceAttributes] nonResourceAttributes describes information for a non-resource access request
  /// [resourceAttributes] resourceAttributes describes information for a resource access request
  /// [uid] uid information about the requesting user.
  /// [user] user is the user you're testing for. If you specify "User" but not "Groups", then is it interpreted as "What if User were not a member of any groups
  const SubjectAccessReviewSpec({
    this.extra,
    this.groups,
    this.nonResourceAttributes,
    this.resourceAttributes,
    this.uid,
    this.user,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'extra': ?extra,
      'groups': ?groups,
      'nonResourceAttributes': ?pulumi.Input.mapOptionalInputValue<NonResourceAttributes, Map<String, dynamic>>(nonResourceAttributes, (value) => value.toMap()),
      'resourceAttributes': ?pulumi.Input.mapOptionalInputValue<ResourceAttributes, Map<String, dynamic>>(resourceAttributes, (value) => value.toMap()),
      'uid': ?uid,
      'user': ?user,
    };
  }

  factory SubjectAccessReviewSpec.fromMap(Map<String, dynamic> map) {
    return SubjectAccessReviewSpec(
      extra: (() { final guardedValue = map['extra']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<List<String>>(guardedValue, (value) => (value as List).cast<String>())); })(),
      groups: (() { final guardedValue = map['groups']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      nonResourceAttributes: (() { final guardedValue = map['nonResourceAttributes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NonResourceAttributes.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceAttributes: (() { final guardedValue = map['resourceAttributes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceAttributes.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      user: (() { final guardedValue = map['user']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
