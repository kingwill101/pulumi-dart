// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetEmailSendingSubdomainsResult {
  /// The date and time the destination address has been created.
  final pulumi.Input<String> created;
  /// The DKIM selector used for email signing. Wildcard rows publish the selector and sign with `d=&lt;base&gt;`.
  final pulumi.Input<String> dkimSelector;
  /// Whether a send request that includes a recipient suppressed on
  /// this subdomain drops that recipient and still delivers to the
  /// rest, instead of failing the entire request.
  final pulumi.Input<bool> dropSuppressedRecipients;
  /// Whether Email Sending is enabled on this subdomain.
  final pulumi.Input<bool> enabled;
  /// Sending subdomain identifier.
  final pulumi.Input<String> id;
  /// The date and time the destination address was last modified.
  final pulumi.Input<String> modified;
  /// The exact domain name or a leftmost wildcard such as `*.example.com`.
  final pulumi.Input<String> name;
  /// Whether sent messages from this subdomain can be previewed in the activity log.
  final pulumi.Input<bool> previewEnabled;
  /// The return-path domain used for bounce handling. Wildcard rows use `cf-bounce.&lt;base&gt;`.
  final pulumi.Input<String> returnPathDomain;
  /// Sending subdomain identifier.
  final pulumi.Input<String> tag;

  /// Creates a new [GetEmailSendingSubdomainsResult].
  /// [created] The date and time the destination address has been created.
  /// [dkimSelector] The DKIM selector used for email signing. Wildcard rows publish the selector and sign with `d=&lt;base&gt;`.
  /// [dropSuppressedRecipients] Whether a send request that includes a recipient suppressed on
  /// [enabled] Whether Email Sending is enabled on this subdomain.
  /// [id] Sending subdomain identifier.
  /// [modified] The date and time the destination address was last modified.
  /// [name] The exact domain name or a leftmost wildcard such as `*.example.com`.
  /// [previewEnabled] Whether sent messages from this subdomain can be previewed in the activity log.
  /// [returnPathDomain] The return-path domain used for bounce handling. Wildcard rows use `cf-bounce.&lt;base&gt;`.
  /// [tag] Sending subdomain identifier.
  const GetEmailSendingSubdomainsResult({
    required this.created,
    required this.dkimSelector,
    required this.dropSuppressedRecipients,
    required this.enabled,
    required this.id,
    required this.modified,
    required this.name,
    required this.previewEnabled,
    required this.returnPathDomain,
    required this.tag,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'created': created,
      'dkimSelector': dkimSelector,
      'dropSuppressedRecipients': dropSuppressedRecipients,
      'enabled': enabled,
      'id': id,
      'modified': modified,
      'name': name,
      'previewEnabled': previewEnabled,
      'returnPathDomain': returnPathDomain,
      'tag': tag,
    };
  }

  factory GetEmailSendingSubdomainsResult.fromMap(Map<String, dynamic> map) {
    return GetEmailSendingSubdomainsResult(
      created: pulumi.Input.fromValue(map['created'] as String),
      dkimSelector: pulumi.Input.fromValue(map['dkimSelector'] as String),
      dropSuppressedRecipients: pulumi.Input.fromValue(map['dropSuppressedRecipients'] as bool),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      id: pulumi.Input.fromValue(map['id'] as String),
      modified: pulumi.Input.fromValue(map['modified'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      previewEnabled: pulumi.Input.fromValue(map['previewEnabled'] as bool),
      returnPathDomain: pulumi.Input.fromValue(map['returnPathDomain'] as String),
      tag: pulumi.Input.fromValue(map['tag'] as String),
    );
  }
}
