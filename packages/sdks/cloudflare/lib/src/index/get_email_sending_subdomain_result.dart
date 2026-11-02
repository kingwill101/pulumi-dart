// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getEmailSendingSubdomain.
class GetEmailSendingSubdomainResult {
  /// The date and time the destination address has been created.
  final String? created;
  /// The DKIM selector used for email signing. Wildcard rows publish the selector and sign with `d=&lt;base&gt;`.
  final String? dkimSelector;
  /// Whether a send request that includes a recipient suppressed on
  /// this subdomain drops that recipient and still delivers to the
  /// rest, instead of failing the entire request.
  final bool? dropSuppressedRecipients;
  /// Whether Email Sending is enabled on this subdomain.
  final bool? enabled;
  /// Sending subdomain identifier.
  final String? id;
  /// The date and time the destination address was last modified.
  final String? modified;
  /// The exact domain name or a leftmost wildcard such as `*.example.com`.
  final String? name;
  /// Whether sent messages from this subdomain can be previewed in the activity log.
  final bool? previewEnabled;
  /// The return-path domain used for bounce handling. Wildcard rows use `cf-bounce.&lt;base&gt;`.
  final String? returnPathDomain;
  /// Sending subdomain identifier.
  final String? subdomainId;
  /// Sending subdomain identifier.
  final String? tag;
  /// Identifier.
  final String? zoneId;

  /// Creates a new [GetEmailSendingSubdomainResult].
  /// [created] The date and time the destination address has been created.
  /// [dkimSelector] The DKIM selector used for email signing. Wildcard rows publish the selector and sign with `d=&lt;base&gt;`.
  /// [dropSuppressedRecipients] Whether a send request that includes a recipient suppressed on
  /// [enabled] Whether Email Sending is enabled on this subdomain.
  /// [id] Sending subdomain identifier.
  /// [modified] The date and time the destination address was last modified.
  /// [name] The exact domain name or a leftmost wildcard such as `*.example.com`.
  /// [previewEnabled] Whether sent messages from this subdomain can be previewed in the activity log.
  /// [returnPathDomain] The return-path domain used for bounce handling. Wildcard rows use `cf-bounce.&lt;base&gt;`.
  /// [subdomainId] Sending subdomain identifier.
  /// [tag] Sending subdomain identifier.
  /// [zoneId] Identifier.
  const GetEmailSendingSubdomainResult({
    this.created,
    this.dkimSelector,
    this.dropSuppressedRecipients,
    this.enabled,
    this.id,
    this.modified,
    this.name,
    this.previewEnabled,
    this.returnPathDomain,
    this.subdomainId,
    this.tag,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'created': ?created,
      'dkimSelector': ?dkimSelector,
      'dropSuppressedRecipients': ?dropSuppressedRecipients,
      'enabled': ?enabled,
      'id': ?id,
      'modified': ?modified,
      'name': ?name,
      'previewEnabled': ?previewEnabled,
      'returnPathDomain': ?returnPathDomain,
      'subdomainId': ?subdomainId,
      'tag': ?tag,
      'zoneId': ?zoneId,
    };
  }

  factory GetEmailSendingSubdomainResult.fromMap(Map<String, dynamic> map) {
    return GetEmailSendingSubdomainResult(
      created: (() { final guardedValue = map['created']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dkimSelector: (() { final guardedValue = map['dkimSelector']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dropSuppressedRecipients: (() { final guardedValue = map['dropSuppressedRecipients']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      modified: (() { final guardedValue = map['modified']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      previewEnabled: (() { final guardedValue = map['previewEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      returnPathDomain: (() { final guardedValue = map['returnPathDomain']; if (guardedValue == null) return null; return guardedValue as String; })(),
      subdomainId: (() { final guardedValue = map['subdomainId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tag: (() { final guardedValue = map['tag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
