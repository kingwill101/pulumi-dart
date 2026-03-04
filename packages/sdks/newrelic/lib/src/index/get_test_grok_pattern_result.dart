// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_test_grok_pattern_test_grok.dart';

/// Result data returned by getTestGrokPattern.
class GetTestGrokPatternResult {
  final String? accountId;
  final String grok;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> logLines;

  /// Nested attribute containing information about the test of Grok pattern against a list of log lines.
  final List<GetTestGrokPatternTestGrok> testGroks;

  /// Creates a new [GetTestGrokPatternResult].
  /// [accountId] Optional.
  /// [grok] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [logLines] Required.
  /// [testGroks] Nested attribute containing information about the test of Grok pattern against a list of log lines.
  GetTestGrokPatternResult({
    this.accountId,
    required this.grok,
    required this.id,
    required this.logLines,
    required this.testGroks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'grok': grok,
      'id': id,
      'logLines': logLines,
      'testGroks':
          pulumi.Input.encodeList<
            GetTestGrokPatternTestGrok,
            Map<String, dynamic>
          >(testGroks, (value) => value.toMap()),
    };
  }

  factory GetTestGrokPatternResult.fromMap(Map<String, dynamic> map) {
    return GetTestGrokPatternResult(
      accountId: (() {
        final guardedValue = map['accountId'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      grok: map['grok'] as String,
      id: map['id'] as String,
      logLines: (map['logLines'] as List).cast<String>(),
      testGroks: pulumi.Input.decodeList<GetTestGrokPatternTestGrok>(
        map['testGroks']!,
        (value) => GetTestGrokPatternTestGrok.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
