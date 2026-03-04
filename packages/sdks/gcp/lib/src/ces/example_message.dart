// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'example_message_chunk.dart';

class ExampleMessage {
  /// Content of the message as a series of chunks.
  /// Structure is documented below.
  final pulumi.Input<List<ExampleMessageChunk>>? chunks;

  /// The role within the conversation, e.g., user, agent.
  final pulumi.Input<String>? role;

  /// Creates a new [ExampleMessage].
  /// [chunks] Content of the message as a series of chunks.
  /// [role] The role within the conversation, e.g., user, agent.
  ExampleMessage({this.chunks, this.role});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'chunks':
          ?pulumi.Input.mapOptionalInputValue<
            List<ExampleMessageChunk>,
            List<Map<String, dynamic>>
          >(
            chunks,
            (value) =>
                pulumi.Input.encodeList<
                  ExampleMessageChunk,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'role': ?role,
    };
  }

  factory ExampleMessage.fromMap(Map<String, dynamic> map) {
    return ExampleMessage(
      chunks: (() {
        final guardedValue = map['chunks'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ExampleMessageChunk>(
            guardedValue,
            (value) => ExampleMessageChunk.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      role: (() {
        final guardedValue = map['role'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
