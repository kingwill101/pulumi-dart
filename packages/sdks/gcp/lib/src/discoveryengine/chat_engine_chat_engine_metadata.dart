// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ChatEngineChatEngineMetadata {
  /// (Output)
  /// The resource name of a Dialogflow agent, that this Chat Engine refers to.
  final pulumi.Input<String>? dialogflowAgent;

  /// Creates a new [ChatEngineChatEngineMetadata].
  /// [dialogflowAgent] (Output)
  ChatEngineChatEngineMetadata({this.dialogflowAgent});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'dialogflowAgent': ?dialogflowAgent};
  }

  factory ChatEngineChatEngineMetadata.fromMap(Map<String, dynamic> map) {
    return ChatEngineChatEngineMetadata(
      dialogflowAgent: (() {
        final guardedValue = map['dialogflowAgent'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
