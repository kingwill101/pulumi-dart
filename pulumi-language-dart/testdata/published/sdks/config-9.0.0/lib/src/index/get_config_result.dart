// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getConfig.
class GetConfigResult {
  final String text;

  /// Creates a new [GetConfigResult].
  /// [text] Required.
  const GetConfigResult({
    required this.text,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'text': text,
    };
  }

  factory GetConfigResult.fromMap(Map<String, dynamic> map) {
    return GetConfigResult(
      text: map['text'] as String,
    );
  }
}
