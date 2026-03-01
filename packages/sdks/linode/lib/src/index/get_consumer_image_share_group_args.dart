// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_consumer_image_share_group_get_consumer_image_share_group_args_doc}
/// Arguments for getConsumerImageShareGroup.
/// {@endtemplate}
/// {@macro pulumi_index_get_consumer_image_share_group_get_consumer_image_share_group_args_doc}
class GetConsumerImageShareGroupArgs {
  /// The UUID of the token that has been accepted into the Image Share Group.
  final pulumi.Input<String> tokenUuid;

  /// Creates a new [GetConsumerImageShareGroupArgs].
  /// [tokenUuid] The UUID of the token that has been accepted into the Image Share Group.
  GetConsumerImageShareGroupArgs({
    required pulumi.Output<String> tokenUuid,
  }) :
      tokenUuid = pulumi.Input.asInput<String>(tokenUuid);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tokenUuid': tokenUuid,
    };
  }

  factory GetConsumerImageShareGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetConsumerImageShareGroupArgs(
      tokenUuid: pulumi.Output.create<String>(map['tokenUuid'] as String),
    );
  }
}

