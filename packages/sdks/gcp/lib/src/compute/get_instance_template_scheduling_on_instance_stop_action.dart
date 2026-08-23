// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstanceTemplateSchedulingOnInstanceStopAction {
  /// If true, the contents of any attached Local SSD disks will be discarded.
  final pulumi.Input<bool> discardLocalSsd;

  /// Creates a new [GetInstanceTemplateSchedulingOnInstanceStopAction].
  /// [discardLocalSsd] If true, the contents of any attached Local SSD disks will be discarded.
  const GetInstanceTemplateSchedulingOnInstanceStopAction({
    required this.discardLocalSsd,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'discardLocalSsd': discardLocalSsd,
    };
  }

  factory GetInstanceTemplateSchedulingOnInstanceStopAction.fromMap(Map<String, dynamic> map) {
    return GetInstanceTemplateSchedulingOnInstanceStopAction(
      discardLocalSsd: pulumi.Input.fromValue(map['discardLocalSsd'] as bool),
    );
  }
}
