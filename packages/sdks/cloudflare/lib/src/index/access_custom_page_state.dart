// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_custom_page_warning.dart';

/// Input properties used for looking up and filtering AccessCustomPage resources.
class AccessCustomPageState {
  /// Identifier.
  final pulumi.Input<String?>? accountId;
  /// Contract version of the page's Liquid template. Present (&gt;= 1) marks a sanitized template; absent or 0 marks a legacy page served verbatim.
  final pulumi.Input<int?>? contractVersion;
  /// Custom page HTML.
  final pulumi.Input<String?>? customHtml;
  /// Custom page name.
  final pulumi.Input<String?>? name;
  /// Custom page type.
  /// Available values: "identityDenied", "forbidden", "login", "interstitial".
  final pulumi.Input<String?>? type;
  /// UUID.
  final pulumi.Input<String?>? uid;
  /// Advisory validation findings returned when creating or updating a template. Omitted when empty.
  final pulumi.Input<List<AccessCustomPageWarning>?>? warnings;

  /// Creates a new [AccessCustomPageState].
  /// [accountId] Identifier.
  /// [contractVersion] Contract version of the page's Liquid template. Present (&gt;= 1) marks a sanitized template; absent or 0 marks a legacy page served verbatim.
  /// [customHtml] Custom page HTML.
  /// [name] Custom page name.
  /// [type] Custom page type.
  /// [uid] UUID.
  /// [warnings] Advisory validation findings returned when creating or updating a template. Omitted when empty.
  const AccessCustomPageState({
    this.accountId,
    this.contractVersion,
    this.customHtml,
    this.name,
    this.type,
    this.uid,
    this.warnings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'contractVersion': ?contractVersion,
      'customHtml': ?customHtml,
      'name': ?name,
      'type': ?type,
      'uid': ?uid,
      'warnings': ?pulumi.Input.mapOptionalInputValue<List<AccessCustomPageWarning>, List<Map<String, dynamic>>>(warnings, (value) => pulumi.Input.encodeList<AccessCustomPageWarning, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AccessCustomPageState.fromMap(Map<String, dynamic> map) {
    return AccessCustomPageState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      contractVersion: (() { final guardedValue = map['contractVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      customHtml: (() { final guardedValue = map['customHtml']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      warnings: (() { final guardedValue = map['warnings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AccessCustomPageWarning>(guardedValue, (value) => AccessCustomPageWarning.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
