// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_custom_pages_custom_pages_args_doc}
/// The set of arguments for CustomPages.
/// {@endtemplate}
/// {@macro pulumi_index_custom_pages_custom_pages_args_doc}
class CustomPagesArgs {
  /// The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
  final pulumi.Input<String?>? accountId;
  /// Error Page Types
  /// Available values: "1000*errors", "500*errors", "basic*challenge", "country*challenge", "ip*block", "managed*challenge", "ratelimit*block", "under*attack", "waf*block", "waf*challenge".
  final pulumi.Input<String> identifier;
  /// The custom page state.
  /// Available values: "default", "customized".
  final pulumi.Input<String> state;
  /// The URL associated with the custom page.
  final pulumi.Input<String?>? url;
  /// The Zone ID to use for this endpoint. Mutually exclusive with the Account ID.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [CustomPagesArgs].
  /// [accountId] The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
  /// [identifier] Error Page Types
  /// [state] The custom page state.
  /// [url] The URL associated with the custom page.
  /// [zoneId] The Zone ID to use for this endpoint. Mutually exclusive with the Account ID.
  const CustomPagesArgs({
    this.accountId,
    required this.identifier,
    required this.state,
    this.url,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'identifier': identifier,
      'state': state,
      'url': ?url,
      'zoneId': ?zoneId,
    };
  }

  factory CustomPagesArgs.fromMap(Map<String, dynamic> map) {
    return CustomPagesArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      identifier: pulumi.Input.fromValue(map['identifier'] as String),
      state: pulumi.Input.fromValue(map['state'] as String),
      url: (() { final guardedValue = map['url']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
