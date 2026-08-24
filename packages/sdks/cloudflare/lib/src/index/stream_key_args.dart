// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_stream_key_stream_key_args_doc}
/// The set of arguments for StreamKey.
/// {@endtemplate}
/// {@macro pulumi_index_stream_key_stream_key_args_doc}
class StreamKeyArgs {
  /// Identifier.
  final pulumi.Input<String> accountId;

  /// Creates a new [StreamKeyArgs].
  /// [accountId] Identifier.
  const StreamKeyArgs({
    required this.accountId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
    };
  }

  factory StreamKeyArgs.fromMap(Map<String, dynamic> map) {
    return StreamKeyArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
    );
  }
}
