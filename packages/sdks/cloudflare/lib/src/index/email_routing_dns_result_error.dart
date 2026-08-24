// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'email_routing_dns_result_error_missing.dart';

class EmailRoutingDnsResultError {
  final pulumi.Input<String?>? code;
  /// List of records needed to enable an Email Routing zone.
  final pulumi.Input<EmailRoutingDnsResultErrorMissing?>? missing;

  /// Creates a new [EmailRoutingDnsResultError].
  /// [code] Optional.
  /// [missing] List of records needed to enable an Email Routing zone.
  const EmailRoutingDnsResultError({
    this.code,
    this.missing,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': ?code,
      'missing': ?pulumi.Input.mapOptionalInputValue<EmailRoutingDnsResultErrorMissing, Map<String, dynamic>>(missing, (value) => value.toMap()),
    };
  }

  factory EmailRoutingDnsResultError.fromMap(Map<String, dynamic> map) {
    return EmailRoutingDnsResultError(
      code: (() { final guardedValue = map['code']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      missing: (() { final guardedValue = map['missing']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EmailRoutingDnsResultErrorMissing.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
