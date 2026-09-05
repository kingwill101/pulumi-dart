// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_access_custom_page_warning.dart';

/// Input properties used for looking up and filtering ZeroTrustAccessCustomPage resources.
class ZeroTrustAccessCustomPageState {
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
  final pulumi.Input<List<ZeroTrustAccessCustomPageWarning>?>? warnings;

  /// Creates a new [ZeroTrustAccessCustomPageState].
  /// [accountId] Identifier.
  /// [contractVersion] Contract version of the page's Liquid template. Present (&gt;= 1) marks a sanitized template; absent or 0 marks a legacy page served verbatim.
  /// [customHtml] Custom page HTML.
  /// [name] Custom page name.
  /// [type] Custom page type.
  /// [uid] UUID.
  /// [warnings] Advisory validation findings returned when creating or updating a template. Omitted when empty.
  const ZeroTrustAccessCustomPageState({
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
      'warnings': ?pulumi.Input.mapOptionalInputValue<List<ZeroTrustAccessCustomPageWarning>, List<Map<String, dynamic>>>(warnings, (value) => pulumi.Input.encodeList<ZeroTrustAccessCustomPageWarning, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ZeroTrustAccessCustomPageState.fromMap(Map<String, dynamic> map) {
    return ZeroTrustAccessCustomPageState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      contractVersion: (() { final guardedValue = map['contractVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      customHtml: (() { final guardedValue = map['customHtml']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      warnings: (() { final guardedValue = map['warnings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ZeroTrustAccessCustomPageWarning>(guardedValue, (value) => ZeroTrustAccessCustomPageWarning.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
