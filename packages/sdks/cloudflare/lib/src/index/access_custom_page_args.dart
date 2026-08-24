// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_access_custom_page_access_custom_page_args_doc}
/// The set of arguments for AccessCustomPage.
/// {@endtemplate}
/// {@macro pulumi_index_access_custom_page_access_custom_page_args_doc}
class AccessCustomPageArgs {
  /// Identifier.
  final pulumi.Input<String> accountId;
  /// Custom page HTML.
  final pulumi.Input<String> customHtml;
  /// Custom page name.
  final pulumi.Input<String> name;
  /// Custom page type.
  /// Available values: "identityDenied", "forbidden".
  final pulumi.Input<String> type;

  /// Creates a new [AccessCustomPageArgs].
  /// [accountId] Identifier.
  /// [customHtml] Custom page HTML.
  /// [name] Custom page name.
  /// [type] Custom page type.
  const AccessCustomPageArgs({
    required this.accountId,
    required this.customHtml,
    required this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'customHtml': customHtml,
      'name': name,
      'type': type,
    };
  }

  factory AccessCustomPageArgs.fromMap(Map<String, dynamic> map) {
    return AccessCustomPageArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      customHtml: pulumi.Input.fromValue(map['customHtml'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
