// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_stream_watermark_get_stream_watermark_args_doc}
/// Arguments for getStreamWatermark.
/// {@endtemplate}
/// {@macro pulumi_index_get_stream_watermark_get_stream_watermark_args_doc}
class GetStreamWatermarkArgs {
  /// The account identifier tag.
  final pulumi.Input<String> accountId;
  /// The unique identifier for a watermark profile.
  final pulumi.Input<String> identifier;

  /// Creates a new [GetStreamWatermarkArgs].
  /// [accountId] The account identifier tag.
  /// [identifier] The unique identifier for a watermark profile.
  const GetStreamWatermarkArgs({
    required this.accountId,
    required this.identifier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'identifier': identifier,
    };
  }

  factory GetStreamWatermarkArgs.fromMap(Map<String, dynamic> map) {
    return GetStreamWatermarkArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      identifier: pulumi.Input.fromValue(map['identifier'] as String),
    );
  }
}
