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
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return guardedValue as String; })(),
      triggerUrl: (() { final guardedValue = map['triggerUrl']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

