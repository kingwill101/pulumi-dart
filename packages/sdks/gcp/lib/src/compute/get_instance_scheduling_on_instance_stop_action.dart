// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstanceSchedulingOnInstanceStopAction {
  /// If true, the contents of any attached Local SSD disks will be discarded.
  final pulumi.Input<bool> discardLocalSsd;

  /// Creates a new [GetInstanceSchedulingOnInstanceStopAction].
  /// [discardLocalSsd] If true, the contents of any attached Local SSD disks will be discarded.
  GetInstanceSchedulingOnInstanceStopAction({
    required this.discardLocalSsd,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'discardLocalSsd': discardLocalSsd,
    };
  }

  factory GetInstanceSchedulingOnInstanceStopAction.fromMap(Map<String, dynamic> map) {
    return GetInstanceSchedulingOnInstanceStopAction(
      discardLocalSsd: pulumi.Input.fromValue(map['discardLocalSsd'] as bool),
    );
  }
}

