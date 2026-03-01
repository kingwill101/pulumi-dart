// ignore_for_file: unused_element, unnecessary_cast


class CxIntentTrainingPhrasePart {
  /// The parameter used to annotate this part of the training phrase. This field is required for annotated parts of the training phrase.
  final String? parameterId;
  /// The text for this part.
  final String text;

  /// Creates a new [CxIntentTrainingPhrasePart].
  /// [parameterId] The parameter used to annotate this part of the training phrase. This field is required for annotated parts of the training phrase.
  /// [text] The text for this part.
  CxIntentTrainingPhrasePart({
    this.parameterId,
    required this.text,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parameterId': ?parameterId,
      'text': text,
    };
  }

  factory CxIntentTrainingPhrasePart.fromMap(Map<String, dynamic> map) {
    return CxIntentTrainingPhrasePart(
      parameterId: map['parameterId'] == null ? null : map['parameterId'] as String,
      text: map['text'] as String,
    );
  }
}

