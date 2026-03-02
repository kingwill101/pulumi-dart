// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class JobTemplateConfigEditList {
  /// List of values identifying files that should be used in this atom.
  final pulumi.Input<List<String>>? inputs;
  /// A unique key for this atom.
  final pulumi.Input<String>? key;
  /// Start time in seconds for the atom, relative to the input file timeline.  The default is `0s`.
  final pulumi.Input<String>? startTimeOffset;

  /// Creates a new [JobTemplateConfigEditList].
  /// [inputs] List of values identifying files that should be used in this atom.
  /// [key] A unique key for this atom.
  /// [startTimeOffset] Start time in seconds for the atom, relative to the input file timeline.  The default is `0s`.
  JobTemplateConfigEditList({
    this.inputs,
    this.key,
    this.startTimeOffset,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inputs': ?inputs,
      'key': ?key,
      'startTimeOffset': ?startTimeOffset,
    };
  }

  factory JobTemplateConfigEditList.fromMap(Map<String, dynamic> map) {
    return JobTemplateConfigEditList(
      inputs: map['inputs'] == null ? null : ((map['inputs'] as List).cast<String>()).input(),
      key: map['key'] == null ? null : (map['key'] as String).input(),
      startTimeOffset: map['startTimeOffset'] == null ? null : (map['startTimeOffset'] as String).input(),
    );
  }
}

