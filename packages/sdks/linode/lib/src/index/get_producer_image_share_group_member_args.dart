// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_producer_image_share_group_member_get_producer_image_share_group_member_args_doc}
/// Arguments for getProducerImageShareGroupMember.
/// {@endtemplate}
/// {@macro pulumi_index_get_producer_image_share_group_member_get_producer_image_share_group_member_args_doc}
class GetProducerImageShareGroupMemberArgs {
  /// The ID of the Image Share Group the member belongs to.
  final pulumi.Input<int> sharegroupId;
  /// The UUID of member's token.
  final pulumi.Input<String> tokenUuid;

  /// Creates a new [GetProducerImageShareGroupMemberArgs].
  /// [sharegroupId] The ID of the Image Share Group the member belongs to.
  /// [tokenUuid] The UUID of member's token.
  GetProducerImageShareGroupMemberArgs({
    required this.sharegroupId,
    required this.tokenUuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sharegroupId': sharegroupId,
      'tokenUuid': tokenUuid,
    };
  }

  factory GetProducerImageShareGroupMemberArgs.fromMap(Map<String, dynamic> map) {
    return GetProducerImageShareGroupMemberArgs(
      sharegroupId: pulumi.Input.fromValue(map['sharegroupId'] as int),
      tokenUuid: pulumi.Input.fromValue(map['tokenUuid'] as String),
    );
  }
}

