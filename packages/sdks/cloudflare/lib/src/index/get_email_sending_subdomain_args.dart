// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_email_sending_subdomain_get_email_sending_subdomain_args_doc}
/// Arguments for getEmailSendingSubdomain.
/// {@endtemplate}
/// {@macro pulumi_index_get_email_sending_subdomain_get_email_sending_subdomain_args_doc}
class GetEmailSendingSubdomainArgs {
  /// Sending subdomain identifier.
  final pulumi.Input<String> subdomainId;
  /// Identifier.
  final pulumi.Input<String> zoneId;

  /// Creates a new [GetEmailSendingSubdomainArgs].
  /// [subdomainId] Sending subdomain identifier.
  /// [zoneId] Identifier.
  const GetEmailSendingSubdomainArgs({
    required this.subdomainId,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'subdomainId': subdomainId,
      'zoneId': zoneId,
    };
  }

  factory GetEmailSendingSubdomainArgs.fromMap(Map<String, dynamic> map) {
    return GetEmailSendingSubdomainArgs(
      subdomainId: pulumi.Input.fromValue(map['subdomainId'] as String),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}
