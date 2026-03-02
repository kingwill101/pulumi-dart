// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by listWebAppFunctionSecretsSlot.
class ListWebAppFunctionSecretsSlotResult {
  /// Secret key.
  final String? key;
  /// Trigger URL.
  final String? triggerUrl;

  /// Creates a new [ListWebAppFunctionSecretsSlotResult].
  /// [key] Secret key.
  /// [triggerUrl] Trigger URL.
  ListWebAppFunctionSecretsSlotResult({
    this.key,
    this.triggerUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'triggerUrl': ?triggerUrl,
    };
  }

  factory ListWebAppFunctionSecretsSlotResult.fromMap(Map<String, dynamic> map) {
    return ListWebAppFunctionSecretsSlotResult(
      key: map['key'] == null ? null : map['key']! as String,
      triggerUrl: map['triggerUrl'] == null ? null : map['triggerUrl']! as String,
    );
  }
}

