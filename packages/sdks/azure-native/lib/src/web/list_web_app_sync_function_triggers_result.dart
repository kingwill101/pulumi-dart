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
      key: map['key'] == null ? null : map['key'] as String,
      triggerUrl: map['triggerUrl'] == null ? null : map['triggerUrl'] as String,
    );
  }
}

