// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRegionInstanceTemplateSchedulingOnInstanceStopAction {
  /// If true, the contents of any attached Local SSD disks will be discarded.
  final pulumi.Input<bool> discardLocalSsd;

  /// Creates a new [GetRegionInstanceTemplateSchedulingOnInstanceStopAction].
  /// [discardLocalSsd] If true, the contents of any attached Local SSD disks will be discarded.
  GetRegionInstanceTemplateSchedulingOnInstanceStopAction({
    required this.discardLocalSsd,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'discardLocalSsd': discardLocalSsd};
  }

  factory GetRegionInstanceTemplateSchedulingOnInstanceStopAction.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetRegionInstanceTemplateSchedulingOnInstanceStopAction(
      discardLocalSsd: pulumi.Input.fromValue(map['discardLocalSsd'] as bool),
    );
  }
}
