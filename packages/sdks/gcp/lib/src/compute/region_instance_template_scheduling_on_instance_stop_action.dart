// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RegionInstanceTemplateSchedulingOnInstanceStopAction {
  /// If true, the contents of any attached Local SSD disks will be discarded.
  final pulumi.Input<bool>? discardLocalSsd;

  /// Creates a new [RegionInstanceTemplateSchedulingOnInstanceStopAction].
  /// [discardLocalSsd] If true, the contents of any attached Local SSD disks will be discarded.
  const RegionInstanceTemplateSchedulingOnInstanceStopAction({
    this.discardLocalSsd,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'discardLocalSsd': ?discardLocalSsd,
    };
  }

  factory RegionInstanceTemplateSchedulingOnInstanceStopAction.fromMap(Map<String, dynamic> map) {
    return RegionInstanceTemplateSchedulingOnInstanceStopAction(
      discardLocalSsd: (() { final guardedValue = map['discardLocalSsd']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
