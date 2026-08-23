// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'evaluation_golden_turn_step_user_input_blob.dart';
import 'evaluation_golden_turn_step_user_input_event.dart';
import 'evaluation_golden_turn_step_user_input_image.dart';
import 'evaluation_golden_turn_step_user_input_tool_responses.dart';

class EvaluationGoldenTurnStepUserInput {
  /// Audio data from the end user.
  final pulumi.Input<String>? audio;
  /// Blob data from the end user.
  /// Structure is documented below.
  final pulumi.Input<EvaluationGoldenTurnStepUserInputBlob>? blob;
  /// DTMF digits from the end user.
  final pulumi.Input<String>? dtmf;
  /// An event to be sent to the session.
  /// Structure is documented below.
  final pulumi.Input<EvaluationGoldenTurnStepUserInputEvent>? event;
  /// Image data from the end user.
  /// Structure is documented below.
  final pulumi.Input<EvaluationGoldenTurnStepUserInputImage>? image;
  /// Natural language query.
  final pulumi.Input<String>? text;
  /// The list of tool execution results.
  /// Structure is documented below.
  final pulumi.Input<EvaluationGoldenTurnStepUserInputToolResponses>? toolResponses;
  /// Map of variables to set.
  final pulumi.Input<Map<String, String>>? variables;
  /// Whether the session should continue.
  final pulumi.Input<bool>? willContinue;

  /// Creates a new [EvaluationGoldenTurnStepUserInput].
  /// [audio] Audio data from the end user.
  /// [blob] Blob data from the end user.
  /// [dtmf] DTMF digits from the end user.
  /// [event] An event to be sent to the session.
  /// [image] Image data from the end user.
  /// [text] Natural language query.
  /// [toolResponses] The list of tool execution results.
  /// [variables] Map of variables to set.
  /// [willContinue] Whether the session should continue.
  const EvaluationGoldenTurnStepUserInput({
    this.audio,
    this.blob,
    this.dtmf,
    this.event,
    this.image,
    this.text,
    this.toolResponses,
    this.variables,
    this.willContinue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audio': ?audio,
      'blob': ?pulumi.Input.mapOptionalInputValue<EvaluationGoldenTurnStepUserInputBlob, Map<String, dynamic>>(blob, (value) => value.toMap()),
      'dtmf': ?dtmf,
      'event': ?pulumi.Input.mapOptionalInputValue<EvaluationGoldenTurnStepUserInputEvent, Map<String, dynamic>>(event, (value) => value.toMap()),
      'image': ?pulumi.Input.mapOptionalInputValue<EvaluationGoldenTurnStepUserInputImage, Map<String, dynamic>>(image, (value) => value.toMap()),
      'text': ?text,
      'toolResponses': ?pulumi.Input.mapOptionalInputValue<EvaluationGoldenTurnStepUserInputToolResponses, Map<String, dynamic>>(toolResponses, (value) => value.toMap()),
      'variables': ?variables,
      'willContinue': ?willContinue,
    };
  }

  factory EvaluationGoldenTurnStepUserInput.fromMap(Map<String, dynamic> map) {
    return EvaluationGoldenTurnStepUserInput(
      audio: (() { final guardedValue = map['audio']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      blob: (() { final guardedValue = map['blob']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EvaluationGoldenTurnStepUserInputBlob.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dtmf: (() { final guardedValue = map['dtmf']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      event: (() { final guardedValue = map['event']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EvaluationGoldenTurnStepUserInputEvent.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      image: (() { final guardedValue = map['image']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EvaluationGoldenTurnStepUserInputImage.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      text: (() { final guardedValue = map['text']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      toolResponses: (() { final guardedValue = map['toolResponses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EvaluationGoldenTurnStepUserInputToolResponses.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      variables: (() { final guardedValue = map['variables']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      willContinue: (() { final guardedValue = map['willContinue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
