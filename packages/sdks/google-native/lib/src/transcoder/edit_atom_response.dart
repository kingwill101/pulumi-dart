// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Edit atom.
class EditAtomResponse {
  /// End time in seconds for the atom, relative to the input file timeline. When `end_time_offset` is not specified, the `inputs` are used until the end of the atom.
  final pulumi.Input<String> endTimeOffset;
  /// List of Input.key values identifying files that should be used in this atom. The listed `inputs` must have the same timeline.
  final pulumi.Input<List<String>> inputs;
  /// A unique key for this atom. Must be specified when using advanced mapping.
  final pulumi.Input<String> key;
  /// Start time in seconds for the atom, relative to the input file timeline. The default is `0s`.
  final pulumi.Input<String> startTimeOffset;

  /// Creates a new [EditAtomResponse].
  /// [endTimeOffset] End time in seconds for the atom, relative to the input file timeline. When `end_time_offset` is not specified, the `inputs` are used until the end of the atom.
  /// [inputs] List of Input.key values identifying files that should be used in this atom. The listed `inputs` must have the same timeline.
  /// [key] A unique key for this atom. Must be specified when using advanced mapping.
  /// [startTimeOffset] Start time in seconds for the atom, relative to the input file timeline. The default is `0s`.
  EditAtomResponse({
    required this.endTimeOffset,
    required this.inputs,
    required this.key,
    required this.startTimeOffset,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endTimeOffset': endTimeOffset,
      'inputs': inputs,
      'key': key,
      'startTimeOffset': startTimeOffset,
    };
  }

  factory EditAtomResponse.fromMap(Map<String, dynamic> map) {
    return EditAtomResponse(
      endTimeOffset: (map['endTimeOffset'] as String).input(),
      inputs: ((map['inputs'] as List).cast<String>()).input(),
      key: (map['key'] as String).input(),
      startTimeOffset: (map['startTimeOffset'] as String).input(),
    );
  }
}

