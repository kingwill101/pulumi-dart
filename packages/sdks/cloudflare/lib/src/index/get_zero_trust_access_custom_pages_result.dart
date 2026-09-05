// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_access_custom_pages_result_warning.dart';

class GetZeroTrustAccessCustomPagesResult {
  /// Contract version of the page's Liquid template. Present (&gt;= 1) marks a sanitized template; absent or 0 marks a legacy page served verbatim.
  final pulumi.Input<int> contractVersion;
  /// UUID.
  final pulumi.Input<String> id;
  /// Custom page name.
  final pulumi.Input<String> name;
  /// Custom page type.
  /// Available values: "identityDenied", "forbidden", "login", "interstitial".
  final pulumi.Input<String> type;
  /// UUID.
  final pulumi.Input<String> uid;
  /// Advisory validation findings returned when creating or updating a template. Omitted when empty.
  final pulumi.Input<List<GetZeroTrustAccessCustomPagesResultWarning>> warnings;

  /// Creates a new [GetZeroTrustAccessCustomPagesResult].
  /// [contractVersion] Contract version of the page's Liquid template. Present (&gt;= 1) marks a sanitized template; absent or 0 marks a legacy page served verbatim.
  /// [id] UUID.
  /// [name] Custom page name.
  /// [type] Custom page type.
  /// [uid] UUID.
  /// [warnings] Advisory validation findings returned when creating or updating a template. Omitted when empty.
  const GetZeroTrustAccessCustomPagesResult({
    required this.contractVersion,
    required this.id,
    required this.name,
    required this.type,
    required this.uid,
    required this.warnings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contractVersion': contractVersion,
      'id': id,
      'name': name,
      'type': type,
      'uid': uid,
      'warnings': pulumi.Input.mapInputValue<List<GetZeroTrustAccessCustomPagesResultWarning>, List<Map<String, dynamic>>>(warnings, (value) => pulumi.Input.encodeList<GetZeroTrustAccessCustomPagesResultWarning, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetZeroTrustAccessCustomPagesResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessCustomPagesResult(
      contractVersion: pulumi.Input.fromValue((map['contractVersion'] as num).toInt()),
      id: pulumi.Input.fromValue(map['id'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
      uid: pulumi.Input.fromValue(map['uid'] as String),
      warnings: pulumi.Input.fromValue(pulumi.Input.decodeList<GetZeroTrustAccessCustomPagesResultWarning>(map['warnings']!, (value) => GetZeroTrustAccessCustomPagesResultWarning.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
