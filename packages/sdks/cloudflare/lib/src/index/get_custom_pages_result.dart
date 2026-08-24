// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getCustomPages.
class GetCustomPagesResult {
  /// The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
  final String? accountId;
  final String? createdOn;
  final String? description;
  /// Error Page Types
  /// Available values: "1000*errors", "500*errors", "basic*challenge", "country*challenge", "ip*block", "managed*challenge", "ratelimit*block", "under*attack", "waf*block", "waf*challenge".
  final String? id;
  /// Error Page Types
  /// Available values: "1000*errors", "500*errors", "basic*challenge", "country*challenge", "ip*block", "managed*challenge", "ratelimit*block", "under*attack", "waf*block", "waf*challenge".
  final String? identifier;
  final String? modifiedOn;
  final String? previewTarget;
  final List<String>? requiredTokens;
  /// The custom page state.
  /// Available values: "default", "customized".
  final String? state;
  /// The URL associated with the custom page.
  final String? url;
  /// The Zone ID to use for this endpoint. Mutually exclusive with the Account ID.
  final String? zoneId;

  /// Creates a new [GetCustomPagesResult].
  /// [accountId] The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
  /// [createdOn] Optional.
  /// [description] Optional.
  /// [id] Error Page Types
  /// [identifier] Error Page Types
  /// [modifiedOn] Optional.
  /// [previewTarget] Optional.
  /// [requiredTokens] Optional.
  /// [state] The custom page state.
  /// [url] The URL associated with the custom page.
  /// [zoneId] The Zone ID to use for this endpoint. Mutually exclusive with the Account ID.
  const GetCustomPagesResult({
    this.accountId,
    this.createdOn,
    this.description,
    this.id,
    this.identifier,
    this.modifiedOn,
    this.previewTarget,
    this.requiredTokens,
    this.state,
    this.url,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'createdOn': ?createdOn,
      'description': ?description,
      'id': ?id,
      'identifier': ?identifier,
      'modifiedOn': ?modifiedOn,
      'previewTarget': ?previewTarget,
      'requiredTokens': ?requiredTokens,
      'state': ?state,
      'url': ?url,
      'zoneId': ?zoneId,
    };
  }

  factory GetCustomPagesResult.fromMap(Map<String, dynamic> map) {
    return GetCustomPagesResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdOn: (() { final guardedValue = map['createdOn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identifier: (() { final guardedValue = map['identifier']; if (guardedValue == null) return null; return guardedValue as String; })(),
      modifiedOn: (() { final guardedValue = map['modifiedOn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      previewTarget: (() { final guardedValue = map['previewTarget']; if (guardedValue == null) return null; return guardedValue as String; })(),
      requiredTokens: (() { final guardedValue = map['requiredTokens']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      url: (() { final guardedValue = map['url']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
