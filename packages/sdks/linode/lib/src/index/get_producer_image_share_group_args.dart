// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_producer_image_share_group_get_producer_image_share_group_args_doc}
/// Arguments for getProducerImageShareGroup.
/// {@endtemplate}
/// {@macro pulumi_index_get_producer_image_share_group_get_producer_image_share_group_args_doc}
class GetProducerImageShareGroupArgs {
  /// The ID of the Image Share Group.
  final pulumi.Input<int> id;

  /// Creates a new [GetProducerImageShareGroupArgs].
  /// [id] The ID of the Image Share Group.
  GetProducerImageShareGroupArgs({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory GetProducerImageShareGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetProducerImageShareGroupArgs(
      id: pulumi.Input.fromValue(map['id'] as int),
    );
  }
}

