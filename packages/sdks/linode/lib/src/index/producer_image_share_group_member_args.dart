// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_producer_image_share_group_member_producer_image_share_group_member_args_doc}
/// The set of arguments for ProducerImageShareGroupMember.
/// {@endtemplate}
/// {@macro pulumi_index_producer_image_share_group_member_producer_image_share_group_member_args_doc}
class ProducerImageShareGroupMemberArgs {
  /// A label for the member.
  final pulumi.Input<String> label;

  /// The ID of the Image Share Group to which the member will be added.
  final pulumi.Input<int> sharegroupId;

  /// The token of the prospective member.
  final pulumi.Input<String> token;

  /// Creates a new [ProducerImageShareGroupMemberArgs].
  /// [label] A label for the member.
  /// [sharegroupId] The ID of the Image Share Group to which the member will be added.
  /// [token] The token of the prospective member.
  ProducerImageShareGroupMemberArgs({
    required this.label,
    required this.sharegroupId,
    required this.token,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'label': label,
      'sharegroupId': sharegroupId,
      'token': token,
    };
  }

  factory ProducerImageShareGroupMemberArgs.fromMap(Map<String, dynamic> map) {
    return ProducerImageShareGroupMemberArgs(
      label: pulumi.Input.fromValue(map['label'] as String),
      sharegroupId: pulumi.Input.fromValue(map['sharegroupId'] as int),
      token: pulumi.Input.fromValue(map['token'] as String),
    );
  }
}
