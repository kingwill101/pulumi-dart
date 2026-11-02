// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_microvm_checkpoint_microvm_checkpoint_args_doc}
/// The set of arguments for MicrovmCheckpoint.
/// {@endtemplate}
/// {@macro pulumi_index_microvm_checkpoint_microvm_checkpoint_args_doc}
class MicrovmCheckpointArgs {
  /// The ID of the running MicroVM to checkpoint. Changing this forces a new checkpoint.
  final pulumi.Input<String> microvmId;
  /// A name for the checkpoint. Changing this forces a new checkpoint.
  final pulumi.Input<String?>? name;

  /// Creates a new [MicrovmCheckpointArgs].
  /// [microvmId] The ID of the running MicroVM to checkpoint. Changing this forces a new checkpoint.
  /// [name] A name for the checkpoint. Changing this forces a new checkpoint.
  const MicrovmCheckpointArgs({
    required this.microvmId,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'microvmId': microvmId,
      'name': ?name,
    };
  }

  factory MicrovmCheckpointArgs.fromMap(Map<String, dynamic> map) {
    return MicrovmCheckpointArgs(
      microvmId: pulumi.Input.fromValue(map['microvmId'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
