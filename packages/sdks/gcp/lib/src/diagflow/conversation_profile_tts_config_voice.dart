// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConversationProfileTtsConfigVoice {
  /// The name of the voice.
  final pulumi.Input<String?>? name;
  /// The preferred gender of the voice.
  /// Possible values are: `SSML_VOICE_GENDER_UNSPECIFIED`, `SSML_VOICE_GENDER_MALE`, `SSML_VOICE_GENDER_FEMALE`, `SSML_VOICE_GENDER_NEUTRAL`.
  final pulumi.Input<String?>? ssmlGender;

  /// Creates a new [ConversationProfileTtsConfigVoice].
  /// [name] The name of the voice.
  /// [ssmlGender] The preferred gender of the voice.
  const ConversationProfileTtsConfigVoice({
    this.name,
    this.ssmlGender,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'ssmlGender': ?ssmlGender,
    };
  }

  factory ConversationProfileTtsConfigVoice.fromMap(Map<String, dynamic> map) {
    return ConversationProfileTtsConfigVoice(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ssmlGender: (() { final guardedValue = map['ssmlGender']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
