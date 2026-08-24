// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getWorkersScriptSubdomain.
class GetWorkersScriptSubdomainResult {
  /// Identifier.
  final String? accountId;
  /// Whether the Worker is available on the workers.dev subdomain.
  final bool? enabled;
  /// Whether the Worker's Preview URLs are available on the workers.dev subdomain.
  final bool? previewsEnabled;
  /// Name of the script, used in URLs and route configuration.
  final String? scriptName;

  /// Creates a new [GetWorkersScriptSubdomainResult].
  /// [accountId] Identifier.
  /// [enabled] Whether the Worker is available on the workers.dev subdomain.
  /// [previewsEnabled] Whether the Worker's Preview URLs are available on the workers.dev subdomain.
  /// [scriptName] Name of the script, used in URLs and route configuration.
  const GetWorkersScriptSubdomainResult({
    this.accountId,
    this.enabled,
    this.previewsEnabled,
    this.scriptName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'enabled': ?enabled,
      'previewsEnabled': ?previewsEnabled,
      'scriptName': ?scriptName,
    };
  }

  factory GetWorkersScriptSubdomainResult.fromMap(Map<String, dynamic> map) {
    return GetWorkersScriptSubdomainResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      previewsEnabled: (() { final guardedValue = map['previewsEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      scriptName: (() { final guardedValue = map['scriptName']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
