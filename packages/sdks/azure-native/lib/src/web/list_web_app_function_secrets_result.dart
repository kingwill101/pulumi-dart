// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by listWebAppFunctionSecrets.
class ListWebAppFunctionSecretsResult {
  /// Secret key.
  final String? key;
  /// Trigger URL.
  final String? triggerUrl;

  /// Creates a new [ListWebAppFunctionSecretsResult].
  /// [key] Secret key.
  /// [triggerUrl] Trigger URL.
  ListWebAppFunctionSecretsResult({
    this.key,
    this.triggerUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'triggerUrl': ?triggerUrl,
    };
  }

  factory ListWebAppFunctionSecretsResult.fromMap(Map<String, dynamic> map) {
    return ListWebAppFunctionSecretsResult(
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return guardedValue as String; })(),
      triggerUrl: (() { final guardedValue = map['triggerUrl']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

