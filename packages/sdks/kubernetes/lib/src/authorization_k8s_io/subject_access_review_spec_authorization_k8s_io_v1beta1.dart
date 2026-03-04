// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'non_resource_attributes_authorization_k8s_io_v1beta1.dart';
import 'resource_attributes_authorization_k8s_io_v1beta1.dart';

/// SubjectAccessReviewSpec is a description of the access request.  Exactly one of ResourceAuthorizationAttributes and NonResourceAuthorizationAttributes must be set
class SubjectAccessReviewSpecAuthorizationK8sIoV1beta1 {
  /// Extra corresponds to the user.Info.GetExtra() method from the authenticator.  Since that is input to the authorizer it needs a reflection here.
  final pulumi.Input<Map<String, List<String>>>? extra;

  /// Groups is the groups you're testing for.
  final pulumi.Input<List<String>>? group;

  /// NonResourceAttributes describes information for a non-resource access request
  final pulumi.Input<NonResourceAttributesAuthorizationK8sIoV1beta1>?
  nonResourceAttributes;

  /// ResourceAuthorizationAttributes describes information for a resource access request
  final pulumi.Input<ResourceAttributesAuthorizationK8sIoV1beta1>?
  resourceAttributes;

  /// UID information about the requesting user.
  final pulumi.Input<String>? uid;

  /// User is the user you're testing for. If you specify "User" but not "Group", then is it interpreted as "What if User were not a member of any groups
  final pulumi.Input<String>? user;

  /// Creates a new [SubjectAccessReviewSpecAuthorizationK8sIoV1beta1].
  /// [extra] Extra corresponds to the user.Info.GetExtra() method from the authenticator.  Since that is input to the authorizer it needs a reflection here.
  /// [group] Groups is the groups you're testing for.
  /// [nonResourceAttributes] NonResourceAttributes describes information for a non-resource access request
  /// [resourceAttributes] ResourceAuthorizationAttributes describes information for a resource access request
  /// [uid] UID information about the requesting user.
  /// [user] User is the user you're testing for. If you specify "User" but not "Group", then is it interpreted as "What if User were not a member of any groups
  SubjectAccessReviewSpecAuthorizationK8sIoV1beta1({
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
      'nonResourceAttributes':
          ?pulumi.Input.mapOptionalInputValue<
            NonResourceAttributesAuthorizationK8sIoV1beta1,
            Map<String, dynamic>
          >(nonResourceAttributes, (value) => value.toMap()),
      'resourceAttributes':
          ?pulumi.Input.mapOptionalInputValue<
            ResourceAttributesAuthorizationK8sIoV1beta1,
            Map<String, dynamic>
          >(resourceAttributes, (value) => value.toMap()),
      'uid': ?uid,
      'user': ?user,
    };
  }

  factory SubjectAccessReviewSpecAuthorizationK8sIoV1beta1.fromMap(
    Map<String, dynamic> map,
  ) {
    return SubjectAccessReviewSpecAuthorizationK8sIoV1beta1(
      extra: (() {
        final guardedValue = map['extra'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, List<String>>(),
        );
      })(),
      group: (() {
        final guardedValue = map['group'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      nonResourceAttributes: (() {
        final guardedValue = map['nonResourceAttributes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          NonResourceAttributesAuthorizationK8sIoV1beta1.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      resourceAttributes: (() {
        final guardedValue = map['resourceAttributes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ResourceAttributesAuthorizationK8sIoV1beta1.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      uid: (() {
        final guardedValue = map['uid'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      user: (() {
        final guardedValue = map['user'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
