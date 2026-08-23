// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ControlSynonymsAction {
  /// The synonyms to apply to the search results.
  final pulumi.Input<List<String>>? synonyms;

  /// Creates a new [ControlSynonymsAction].
  /// [synonyms] The synonyms to apply to the search results.
  const ControlSynonymsAction({
    this.synonyms,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'synonyms': ?synonyms,
    };
  }

  factory ControlSynonymsAction.fromMap(Map<String, dynamic> map) {
    return ControlSynonymsAction(
      synonyms: (() { final guardedValue = map['synonyms']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
