// ignore_for_file: unused_element, unnecessary_cast

import 'non_resource_attributes_patch.dart';
import 'resource_attributes_patch.dart';

/// SubjectAccessReviewSpec is a description of the access request.  Exactly one of ResourceAuthorizationAttributes and NonResourceAuthorizationAttributes must be set
class SubjectAccessReviewSpecPatch {
  /// Extra corresponds to the user.Info.GetExtra() method from the authenticator.  Since that is input to the authorizer it needs a reflection here.
  final Map<String, List<String>>? extra;
  /// Groups is the groups you're testing for.
  final List<String>? groups;
  /// NonResourceAttributes describes information for a non-resource access request
  final NonResourceAttributesPatch? nonResourceAttributes;
  /// ResourceAuthorizationAttributes describes information for a resource access request
  final ResourceAttributesPatch? resourceAttributes;
  /// UID information about the requesting user.
  final String? uid;
  /// User is the user you're testing for. If you specify "User" but not "Groups", then is it interpreted as "What if User were not a member of any groups
  final String? user;

  /// Creates a new [SubjectAccessReviewSpecPatch].
  /// [extra] Extra corresponds to the user.Info.GetExtra() method from the authenticator.  Since that is input to the authorizer it needs a reflection here.
  /// [groups] Groups is the groups you're testing for.
  /// [nonResourceAttributes] NonResourceAttributes describes information for a non-resource access request
  /// [resourceAttributes] ResourceAuthorizationAttributes describes information for a resource access request
  /// [uid] UID information about the requesting user.
  /// [user] User is the user you're testing for. If you specify "User" but not "Groups", then is it interpreted as "What if User were not a member of any groups
  SubjectAccessReviewSpecPatch({
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
      'nonResourceAttributes': ?nonResourceAttributes == null ? null : nonResourceAttributes!.toMap(),
      'resourceAttributes': ?resourceAttributes == null ? null : resourceAttributes!.toMap(),
      'uid': ?uid,
      'user': ?user,
    };
  }

  factory SubjectAccessReviewSpecPatch.fromMap(Map<String, dynamic> map) {
    return SubjectAccessReviewSpecPatch(
      extra: map['extra'] == null ? null : (map['extra'] as Map).cast<String, List<String>>(),
      groups: map['groups'] == null ? null : (map['groups'] as List).cast<String>(),
      nonResourceAttributes: map['nonResourceAttributes'] == null ? null : NonResourceAttributesPatch.fromMap((map['nonResourceAttributes'] as Map).cast<String, dynamic>()),
      resourceAttributes: map['resourceAttributes'] == null ? null : ResourceAttributesPatch.fromMap((map['resourceAttributes'] as Map).cast<String, dynamic>()),
      uid: map['uid'] == null ? null : map['uid'] as String,
      user: map['user'] == null ? null : map['user'] as String,
    );
  }
}

