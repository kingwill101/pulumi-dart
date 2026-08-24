// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_email_routing_dns_result_error_missing.dart';

class GetEmailRoutingDnsResultError {
  final pulumi.Input<String> code;
  /// List of records needed to enable an Email Routing zone.
  final pulumi.Input<GetEmailRoutingDnsResultErrorMissing> missing;

  /// Creates a new [GetEmailRoutingDnsResultError].
  /// [code] Required.
  /// [missing] List of records needed to enable an Email Routing zone.
  const GetEmailRoutingDnsResultError({
    required this.code,
    required this.missing,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': code,
      'missing': pulumi.Input.mapInputValue<GetEmailRoutingDnsResultErrorMissing, Map<String, dynamic>>(missing, (value) => value.toMap()),
    };
  }

  factory GetEmailRoutingDnsResultError.fromMap(Map<String, dynamic> map) {
    return GetEmailRoutingDnsResultError(
      code: pulumi.Input.fromValue(map['code'] as String),
      missing: pulumi.Input.fromValue(GetEmailRoutingDnsResultErrorMissing.fromMap((map['missing']! as Map).cast<String, dynamic>())),
    );
  }
}
