// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Edit atom.
class EditAtom {
  /// End time in seconds for the atom, relative to the input file timeline. When `end_time_offset` is not specified, the `inputs` are used until the end of the atom.
  final pulumi.Input<String>? endTimeOffset;
  /// List of Input.key values identifying files that should be used in this atom. The listed `inputs` must have the same timeline.
  final pulumi.Input<List<String>>? inputs;
  /// A unique key for this atom. Must be specified when using advanced mapping.
  final pulumi.Input<String>? key;
  /// Start time in seconds for the atom, relative to the input file timeline. The default is `0s`.
  final pulumi.Input<String>? startTimeOffset;

  /// Creates a new [EditAtom].
  /// [endTimeOffset] End time in seconds for the atom, relative to the input file timeline. When `end_time_offset` is not specified, the `inputs` are used until the end of the atom.
  /// [inputs] List of Input.key values identifying files that should be used in this atom. The listed `inputs` must have the same timeline.
  /// [key] A unique key for this atom. Must be specified when using advanced mapping.
  /// [startTimeOffset] Start time in seconds for the atom, relative to the input file timeline. The default is `0s`.
  EditAtom({
    this.endTimeOffset,
    this.inputs,
    this.key,
    this.startTimeOffset,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endTimeOffset': ?endTimeOffset,
      'inputs': ?inputs,
      'key': ?key,
      'startTimeOffset': ?startTimeOffset,
    };
  }

  factory EditAtom.fromMap(Map<String, dynamic> map) {
    return EditAtom(
      endTimeOffset: (() { final guardedValue = map['endTimeOffset']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      inputs: (() { final guardedValue = map['inputs']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startTimeOffset: (() { final guardedValue = map['startTimeOffset']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

