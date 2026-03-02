// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'non_resource_attributes_patch_authorization_k8s_io_v1beta1.dart';
import 'resource_attributes_patch_authorization_k8s_io_v1beta1.dart';

/// SubjectAccessReviewSpec is a description of the access request.  Exactly one of ResourceAuthorizationAttributes and NonResourceAuthorizationAttributes must be set
class SubjectAccessReviewSpecPatchAuthorizationK8sIoV1beta1 {
  /// Extra corresponds to the user.Info.GetExtra() method from the authenticator.  Since that is input to the authorizer it needs a reflection here.
  final pulumi.Input<Map<String, List<String>>>? extra;
  /// Groups is the groups you're testing for.
  final pulumi.Input<List<String>>? group;
  /// NonResourceAttributes describes information for a non-resource access request
  final pulumi.Input<NonResourceAttributesPatchAuthorizationK8sIoV1beta1>? nonResourceAttributes;
  /// ResourceAuthorizationAttributes describes information for a resource access request
  final pulumi.Input<ResourceAttributesPatchAuthorizationK8sIoV1beta1>? resourceAttributes;
  /// UID information about the requesting user.
  final pulumi.Input<String>? uid;
  /// User is the user you're testing for. If you specify "User" but not "Group", then is it interpreted as "What if User were not a member of any groups
  final pulumi.Input<String>? user;

  /// Creates a new [SubjectAccessReviewSpecPatchAuthorizationK8sIoV1beta1].
  /// [extra] Extra corresponds to the user.Info.GetExtra() method from the authenticator.  Since that is input to the authorizer it needs a reflection here.
  /// [group] Groups is the groups you're testing for.
  /// [nonResourceAttributes] NonResourceAttributes describes information for a non-resource access request
  /// [resourceAttributes] ResourceAuthorizationAttributes describes information for a resource access request
  /// [uid] UID information about the requesting user.
  /// [user] User is the user you're testing for. If you specify "User" but not "Group", then is it interpreted as "What if User were not a member of any groups
  SubjectAccessReviewSpecPatchAuthorizationK8sIoV1beta1({
    this.extra,
    this.group,
    this.nonResourceAttributes,
    this.resourceAttributes,
    this.uid,
    this.user,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'extra': ?extra,
      'group': ?group,
      'nonResourceAttributes': ?pulumi.Input.mapOptionalInputValue<NonResourceAttributesPatchAuthorizationK8sIoV1beta1, Map<String, dynamic>>(nonResourceAttributes, (value) => value.toMap()),
      'resourceAttributes': ?pulumi.Input.mapOptionalInputValue<ResourceAttributesPatchAuthorizationK8sIoV1beta1, Map<String, dynamic>>(resourceAttributes, (value) => value.toMap()),
      'uid': ?uid,
      'user': ?user,
    };
  }

  factory SubjectAccessReviewSpecPatchAuthorizationK8sIoV1beta1.fromMap(Map<String, dynamic> map) {
    return SubjectAccessReviewSpecPatchAuthorizationK8sIoV1beta1(
      extra: map['extra'] == null ? null : ((map['extra']! as Map).cast<String, List<String>>()).input(),
      group: map['group'] == null ? null : ((map['group']! as List).cast<String>()).input(),
      nonResourceAttributes: map['nonResourceAttributes'] == null ? null : (NonResourceAttributesPatchAuthorizationK8sIoV1beta1.fromMap((map['nonResourceAttributes']! as Map).cast<String, dynamic>())).input(),
      resourceAttributes: map['resourceAttributes'] == null ? null : (ResourceAttributesPatchAuthorizationK8sIoV1beta1.fromMap((map['resourceAttributes']! as Map).cast<String, dynamic>())).input(),
      uid: map['uid'] == null ? null : (map['uid']! as String).input(),
      user: map['user'] == null ? null : (map['user']! as String).input(),
    );
  }
}

