// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PreventionJobTriggerInspectJobInspectConfigCustomInfoTypeRegex {
  /// The index of the submatch to extract as findings. When not specified, the entire match is returned. No more than 3 may be included.
  final pulumi.Input<List<int>?>? groupIndexes;
  /// Pattern defining the regular expression.
  /// Its syntax (https://github.com/google/re2/wiki/Syntax) can be found under the google/re2 repository on GitHub.
  final pulumi.Input<String> pattern;

  /// Creates a new [PreventionJobTriggerInspectJobInspectConfigCustomInfoTypeRegex].
  /// [groupIndexes] The index of the submatch to extract as findings. When not specified, the entire match is returned. No more than 3 may be included.
  /// [pattern] Pattern defining the regular expression.
  const PreventionJobTriggerInspectJobInspectConfigCustomInfoTypeRegex({
    this.groupIndexes,
    required this.pattern,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupIndexes': ?groupIndexes,
      'pattern': pattern,
    };
  }

  factory PreventionJobTriggerInspectJobInspectConfigCustomInfoTypeRegex.fromMap(Map<String, dynamic> map) {
    return PreventionJobTriggerInspectJobInspectConfigCustomInfoTypeRegex(
      groupIndexes: (() { final guardedValue = map['groupIndexes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<int>()); })(),
      pattern: pulumi.Input.fromValue(map['pattern'] as String),
    );
  }
}
