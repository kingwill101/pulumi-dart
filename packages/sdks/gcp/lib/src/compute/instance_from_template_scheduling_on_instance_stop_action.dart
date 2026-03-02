// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceFromTemplateSchedulingOnInstanceStopAction {
  /// If true, the contents of any attached Local SSD disks will be discarded.
  final pulumi.Input<bool>? discardLocalSsd;

  /// Creates a new [InstanceFromTemplateSchedulingOnInstanceStopAction].
  /// [discardLocalSsd] If true, the contents of any attached Local SSD disks will be discarded.
  InstanceFromTemplateSchedulingOnInstanceStopAction({
    this.discardLocalSsd,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'discardLocalSsd': ?discardLocalSsd,
    };
  }

  factory InstanceFromTemplateSchedulingOnInstanceStopAction.fromMap(Map<String, dynamic> map) {
    return InstanceFromTemplateSchedulingOnInstanceStopAction(
      discardLocalSsd: map['discardLocalSsd'] == null ? null : (map['discardLocalSsd']! as bool).input(),
    );
  }
}

