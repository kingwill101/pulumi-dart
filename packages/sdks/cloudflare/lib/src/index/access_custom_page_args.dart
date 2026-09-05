// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_access_custom_page_access_custom_page_args_doc}
/// The set of arguments for AccessCustomPage.
/// {@endtemplate}
/// {@macro pulumi_index_access_custom_page_access_custom_page_args_doc}
class AccessCustomPageArgs {
  /// Identifier.
  final pulumi.Input<String> accountId;
  /// Contract version of the page's Liquid template. Present (&gt;= 1) marks a sanitized template; absent or 0 marks a legacy page served verbatim.
  final pulumi.Input<int?>? contractVersion;
  /// Custom page HTML.
  final pulumi.Input<String> customHtml;
  /// Custom page name.
  final pulumi.Input<String> name;
  /// Custom page type.
  /// Available values: "identityDenied", "forbidden", "login", "interstitial".
  final pulumi.Input<String> type;

  /// Creates a new [AccessCustomPageArgs].
  /// [accountId] Identifier.
  /// [contractVersion] Contract version of the page's Liquid template. Present (&gt;= 1) marks a sanitized template; absent or 0 marks a legacy page served verbatim.
  /// [customHtml] Custom page HTML.
  /// [name] Custom page name.
  /// [type] Custom page type.
  const AccessCustomPageArgs({
    required this.accountId,
    this.contractVersion,
    required this.customHtml,
    required this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'contractVersion': ?contractVersion,
      'customHtml': customHtml,
      'name': name,
      'type': type,
    };
  }

  factory AccessCustomPageArgs.fromMap(Map<String, dynamic> map) {
    return AccessCustomPageArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      contractVersion: (() { final guardedValue = map['contractVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      customHtml: pulumi.Input.fromValue(map['customHtml'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
