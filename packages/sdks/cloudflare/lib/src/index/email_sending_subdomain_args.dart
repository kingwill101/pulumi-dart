// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_email_sending_subdomain_email_sending_subdomain_args_doc}
/// The set of arguments for EmailSendingSubdomain.
/// {@endtemplate}
/// {@macro pulumi_index_email_sending_subdomain_email_sending_subdomain_args_doc}
class EmailSendingSubdomainArgs {
  /// Whether a send request that includes a recipient suppressed on
  /// this subdomain drops that recipient and still delivers to the
  /// rest, instead of failing the entire request.
  final pulumi.Input<bool?>? dropSuppressedRecipients;
  /// The domain name within the zone. A wildcard is allowed only as the complete leftmost label (`*.example.com`) and requires the account wildcard Email Sending entitlement.
  final pulumi.Input<String> name;
  /// Whether sent messages from this subdomain can be previewed in the activity log.
  final pulumi.Input<bool?>? previewEnabled;
  /// Identifier.
  final pulumi.Input<String> zoneId;

  /// Creates a new [EmailSendingSubdomainArgs].
  /// [dropSuppressedRecipients] Whether a send request that includes a recipient suppressed on
  /// [name] The domain name within the zone. A wildcard is allowed only as the complete leftmost label (`*.example.com`) and requires the account wildcard Email Sending entitlement.
  /// [previewEnabled] Whether sent messages from this subdomain can be previewed in the activity log.
  /// [zoneId] Identifier.
  const EmailSendingSubdomainArgs({
    this.dropSuppressedRecipients,
    required this.name,
    this.previewEnabled,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dropSuppressedRecipients': ?dropSuppressedRecipients,
      'name': name,
      'previewEnabled': ?previewEnabled,
      'zoneId': zoneId,
    };
  }

  factory EmailSendingSubdomainArgs.fromMap(Map<String, dynamic> map) {
    return EmailSendingSubdomainArgs(
      dropSuppressedRecipients: (() { final guardedValue = map['dropSuppressedRecipients']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      previewEnabled: (() { final guardedValue = map['previewEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}
