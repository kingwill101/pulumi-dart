// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDiskGuestOsFeature {
  /// URL of the disk type resource describing which disk type to use to
  /// create the disk.
  final pulumi.Input<String> type;

  /// Creates a new [GetDiskGuestOsFeature].
  /// [type] URL of the disk type resource describing which disk type to use to
  const GetDiskGuestOsFeature({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
    };
  }

  factory GetDiskGuestOsFeature.fromMap(Map<String, dynamic> map) {
    return GetDiskGuestOsFeature(
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
