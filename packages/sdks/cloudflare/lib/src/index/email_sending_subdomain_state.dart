// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering EmailSendingSubdomain resources.
class EmailSendingSubdomainState {
  /// The date and time the destination address has been created.
  final pulumi.Input<String?>? created;
  /// The DKIM selector used for email signing. Wildcard rows publish the selector and sign with `d=&lt;base&gt;`.
  final pulumi.Input<String?>? dkimSelector;
  /// Whether a send request that includes a recipient suppressed on
  /// this subdomain drops that recipient and still delivers to the
  /// rest, instead of failing the entire request.
  final pulumi.Input<bool?>? dropSuppressedRecipients;
  /// Whether Email Sending is enabled on this subdomain.
  final pulumi.Input<bool?>? enabled;
  /// The date and time the destination address was last modified.
  final pulumi.Input<String?>? modified;
  /// The domain name within the zone. A wildcard is allowed only as the complete leftmost label (`*.example.com`) and requires the account wildcard Email Sending entitlement.
  final pulumi.Input<String?>? name;
  /// Whether sent messages from this subdomain can be previewed in the activity log.
  final pulumi.Input<bool?>? previewEnabled;
  /// The return-path domain used for bounce handling. Wildcard rows use `cf-bounce.&lt;base&gt;`.
  final pulumi.Input<String?>? returnPathDomain;
  /// Sending subdomain identifier.
  final pulumi.Input<String?>? tag;
  /// Identifier.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [EmailSendingSubdomainState].
  /// [created] The date and time the destination address has been created.
  /// [dkimSelector] The DKIM selector used for email signing. Wildcard rows publish the selector and sign with `d=&lt;base&gt;`.
  /// [dropSuppressedRecipients] Whether a send request that includes a recipient suppressed on
  /// [enabled] Whether Email Sending is enabled on this subdomain.
  /// [modified] The date and time the destination address was last modified.
  /// [name] The domain name within the zone. A wildcard is allowed only as the complete leftmost label (`*.example.com`) and requires the account wildcard Email Sending entitlement.
  /// [previewEnabled] Whether sent messages from this subdomain can be previewed in the activity log.
  /// [returnPathDomain] The return-path domain used for bounce handling. Wildcard rows use `cf-bounce.&lt;base&gt;`.
  /// [tag] Sending subdomain identifier.
  /// [zoneId] Identifier.
  const EmailSendingSubdomainState({
    this.created,
    this.dkimSelector,
    this.dropSuppressedRecipients,
    this.enabled,
    this.modified,
    this.name,
    this.previewEnabled,
    this.returnPathDomain,
    this.tag,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'created': ?created,
      'dkimSelector': ?dkimSelector,
      'dropSuppressedRecipients': ?dropSuppressedRecipients,
      'enabled': ?enabled,
      'modified': ?modified,
      'name': ?name,
      'previewEnabled': ?previewEnabled,
      'returnPathDomain': ?returnPathDomain,
      'tag': ?tag,
      'zoneId': ?zoneId,
    };
  }

  factory EmailSendingSubdomainState.fromMap(Map<String, dynamic> map) {
    return EmailSendingSubdomainState(
      created: (() { final guardedValue = map['created']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dkimSelector: (() { final guardedValue = map['dkimSelector']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dropSuppressedRecipients: (() { final guardedValue = map['dropSuppressedRecipients']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      modified: (() { final guardedValue = map['modified']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      previewEnabled: (() { final guardedValue = map['previewEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      returnPathDomain: (() { final guardedValue = map['returnPathDomain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tag: (() { final guardedValue = map['tag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
