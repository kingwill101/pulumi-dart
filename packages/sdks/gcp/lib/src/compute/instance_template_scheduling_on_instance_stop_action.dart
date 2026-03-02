// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceTemplateSchedulingOnInstanceStopAction {
  /// Whether to discard local SSDs attached to the VM while terminating using `max_run_duration`. Only supports `true` at this point.
  final pulumi.Input<bool>? discardLocalSsd;

  /// Creates a new [InstanceTemplateSchedulingOnInstanceStopAction].
  /// [discardLocalSsd] Whether to discard local SSDs attached to the VM while terminating using `max_run_duration`. Only supports `true` at this point.
  InstanceTemplateSchedulingOnInstanceStopAction({
    this.discardLocalSsd,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'discardLocalSsd': ?discardLocalSsd,
    };
  }

  factory InstanceTemplateSchedulingOnInstanceStopAction.fromMap(Map<String, dynamic> map) {
    return InstanceTemplateSchedulingOnInstanceStopAction(
      discardLocalSsd: map['discardLocalSsd'] == null ? null : (map['discardLocalSsd']! as bool).input(),
    );
  }
}

