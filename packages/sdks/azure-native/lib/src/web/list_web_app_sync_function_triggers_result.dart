// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by listWebAppSyncFunctionTriggers.
class ListWebAppSyncFunctionTriggersResult {
  /// Secret key.
  final String? key;
  /// Trigger URL.
  final String? triggerUrl;

  /// Creates a new [ListWebAppSyncFunctionTriggersResult].
  /// [key] Secret key.
  /// [triggerUrl] Trigger URL.
  ListWebAppSyncFunctionTriggersResult({
    this.key,
    this.triggerUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'triggerUrl': ?triggerUrl,
    };
  }

  factory ListWebAppSyncFunctionTriggersResult.fromMap(Map<String, dynamic> map) {
    return ListWebAppSyncFunctionTriggersResult(
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return guardedValue as String; })(),
      triggerUrl: (() { final guardedValue = map['triggerUrl']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

