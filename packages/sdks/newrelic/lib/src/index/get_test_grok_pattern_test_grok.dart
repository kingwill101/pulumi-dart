// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_test_grok_pattern_test_grok_attribute.dart';

class GetTestGrokPatternTestGrok {
  /// Nested list containing information about any attributes that were extracted.
  final pulumi.Input<List<GetTestGrokPatternTestGrokAttribute>> attributes;

  /// The log line that was tested against.
  final pulumi.Input<String> logLine;

  /// Whether the Grok pattern matched.
  final pulumi.Input<bool> matched;

  /// Creates a new [GetTestGrokPatternTestGrok].
  /// [attributes] Nested list containing information about any attributes that were extracted.
  /// [logLine] The log line that was tested against.
  /// [matched] Whether the Grok pattern matched.
  GetTestGrokPatternTestGrok({
    required this.attributes,
    required this.logLine,
    required this.matched,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributes':
          pulumi.Input.mapInputValue<
            List<GetTestGrokPatternTestGrokAttribute>,
            List<Map<String, dynamic>>
          >(
            attributes,
            (value) =>
                pulumi.Input.encodeList<
                  GetTestGrokPatternTestGrokAttribute,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'logLine': logLine,
      'matched': matched,
    };
  }

  factory GetTestGrokPatternTestGrok.fromMap(Map<String, dynamic> map) {
    return GetTestGrokPatternTestGrok(
      attributes: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetTestGrokPatternTestGrokAttribute>(
          map['attributes']!,
          (value) => GetTestGrokPatternTestGrokAttribute.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      logLine: pulumi.Input.fromValue(map['logLine'] as String),
      matched: pulumi.Input.fromValue(map['matched'] as bool),
    );
  }
}
