// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_custom_pages_get_custom_pages_args_doc}
/// Arguments for getCustomPages.
/// {@endtemplate}
/// {@macro pulumi_index_get_custom_pages_get_custom_pages_args_doc}
class GetCustomPagesArgs {
  /// The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
  final pulumi.Input<String?>? accountId;
  /// Error Page Types
  /// Available values: "1000*errors", "500*errors", "basic*challenge", "country*challenge", "ip*block", "managed*challenge", "ratelimit*block", "under*attack", "waf*block", "waf*challenge".
  final pulumi.Input<String> identifier;
  /// The Zone ID to use for this endpoint. Mutually exclusive with the Account ID.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [GetCustomPagesArgs].
  /// [accountId] The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
  /// [identifier] Error Page Types
  /// [zoneId] The Zone ID to use for this endpoint. Mutually exclusive with the Account ID.
  const GetCustomPagesArgs({
    this.accountId,
    required this.identifier,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'identifier': identifier,
      'zoneId': ?zoneId,
    };
  }

  factory GetCustomPagesArgs.fromMap(Map<String, dynamic> map) {
    return GetCustomPagesArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      identifier: pulumi.Input.fromValue(map['identifier'] as String),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
