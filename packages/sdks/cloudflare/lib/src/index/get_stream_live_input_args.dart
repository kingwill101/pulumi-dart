// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_stream_live_input_get_stream_live_input_args_doc}
/// Arguments for getStreamLiveInput.
/// {@endtemplate}
/// {@macro pulumi_index_get_stream_live_input_get_stream_live_input_args_doc}
class GetStreamLiveInputArgs {
  /// Identifier.
  final pulumi.Input<String> accountId;
  /// A unique identifier for a live input.
  final pulumi.Input<String> liveInputIdentifier;

  /// Creates a new [GetStreamLiveInputArgs].
  /// [accountId] Identifier.
  /// [liveInputIdentifier] A unique identifier for a live input.
  const GetStreamLiveInputArgs({
    required this.accountId,
    required this.liveInputIdentifier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'liveInputIdentifier': liveInputIdentifier,
    };
  }

  factory GetStreamLiveInputArgs.fromMap(Map<String, dynamic> map) {
    return GetStreamLiveInputArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      liveInputIdentifier: pulumi.Input.fromValue(map['liveInputIdentifier'] as String),
    );
  }
}
