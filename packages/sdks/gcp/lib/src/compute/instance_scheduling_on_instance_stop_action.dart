// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceSchedulingOnInstanceStopAction {
  /// Whether to discard local SSDs attached to the VM while terminating using `max_run_duration`. Only supports `true` at this point.
  final pulumi.Input<bool>? discardLocalSsd;

  /// Creates a new [InstanceSchedulingOnInstanceStopAction].
  /// [discardLocalSsd] Whether to discard local SSDs attached to the VM while terminating using `max_run_duration`. Only supports `true` at this point.
  InstanceSchedulingOnInstanceStopAction({
    this.discardLocalSsd,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'discardLocalSsd': ?discardLocalSsd,
    };
  }

  factory InstanceSchedulingOnInstanceStopAction.fromMap(Map<String, dynamic> map) {
    return InstanceSchedulingOnInstanceStopAction(
      discardLocalSsd: map['discardLocalSsd'] == null ? null : (map['discardLocalSsd'] as bool).input(),
    );
  }
}

