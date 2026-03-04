// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetImagesSort {
  /// The sort direction. This may be either `asc` or `desc`.
  final pulumi.Input<String>? direction;

  /// Sort the images by this key. This may be one of `distribution`, `error_message`, `id`,
  /// `image`, `min_disk_size`, `name`, `private`, `size_gigabytes`, `slug`, `status`, or `type`.
  final pulumi.Input<String> key;

  /// Creates a new [GetImagesSort].
  /// [direction] The sort direction. This may be either `asc` or `desc`.
  /// [key] Sort the images by this key. This may be one of `distribution`, `error_message`, `id`,
  GetImagesSort({this.direction, required this.key});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'direction': ?direction, 'key': key};
  }

  factory GetImagesSort.fromMap(Map<String, dynamic> map) {
    return GetImagesSort(
      direction: (() {
        final guardedValue = map['direction'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      key: pulumi.Input.fromValue(map['key'] as String),
    );
  }
}
