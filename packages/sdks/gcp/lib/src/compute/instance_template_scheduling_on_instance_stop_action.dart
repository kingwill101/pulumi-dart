// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceTemplateSchedulingOnInstanceStopAction {
  /// Whether to discard local SSDs attached to the VM while terminating using `maxRunDuration`. Only supports `true` at this point.
  final pulumi.Input<bool?>? discardLocalSsd;

  /// Creates a new [InstanceTemplateSchedulingOnInstanceStopAction].
  /// [discardLocalSsd] Whether to discard local SSDs attached to the VM while terminating using `maxRunDuration`. Only supports `true` at this point.
  const InstanceTemplateSchedulingOnInstanceStopAction({
    this.discardLocalSsd,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'discardLocalSsd': ?discardLocalSsd,
    };
  }

  factory InstanceTemplateSchedulingOnInstanceStopAction.fromMap(Map<String, dynamic> map) {
    return InstanceTemplateSchedulingOnInstanceStopAction(
      discardLocalSsd: (() { final guardedValue = map['discardLocalSsd']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
