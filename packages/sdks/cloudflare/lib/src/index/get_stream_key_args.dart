// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_stream_key_get_stream_key_args_doc}
/// Arguments for getStreamKey.
/// {@endtemplate}
/// {@macro pulumi_index_get_stream_key_get_stream_key_args_doc}
class GetStreamKeyArgs {
  /// Identifier.
  final pulumi.Input<String?>? accountId;

  /// Creates a new [GetStreamKeyArgs].
  /// [accountId] Identifier.
  const GetStreamKeyArgs({
    this.accountId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
    };
  }

  factory GetStreamKeyArgs.fromMap(Map<String, dynamic> map) {
    return GetStreamKeyArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
