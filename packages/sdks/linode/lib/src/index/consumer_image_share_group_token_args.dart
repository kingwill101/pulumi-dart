// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_consumer_image_share_group_token_consumer_image_share_group_token_args_doc}
/// The set of arguments for ConsumerImageShareGroupToken.
/// {@endtemplate}
/// {@macro pulumi_index_consumer_image_share_group_token_consumer_image_share_group_token_args_doc}
class ConsumerImageShareGroupTokenArgs {
  /// A label for the token.
  final pulumi.Input<String>? label;

  /// The UUID of the Image Share Group for which to create a token.
  final pulumi.Input<String> validForSharegroupUuid;

  /// Creates a new [ConsumerImageShareGroupTokenArgs].
  /// [label] A label for the token.
  /// [validForSharegroupUuid] The UUID of the Image Share Group for which to create a token.
  ConsumerImageShareGroupTokenArgs({
    this.label,
    required this.validForSharegroupUuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'label': ?label,
      'validForSharegroupUuid': validForSharegroupUuid,
    };
  }

  factory ConsumerImageShareGroupTokenArgs.fromMap(Map<String, dynamic> map) {
    return ConsumerImageShareGroupTokenArgs(
      label: (() {
        final guardedValue = map['label'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      validForSharegroupUuid: pulumi.Input.fromValue(
        map['validForSharegroupUuid'] as String,
      ),
    );
  }
}
