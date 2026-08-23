// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetBucketsBucket {
  /// User-provided bucket labels, in key/value pairs.
  final pulumi.Input<Map<String, String>> labels;
  /// The location of the bucket.
  final pulumi.Input<String> location;
  /// The name of the bucket.
  final pulumi.Input<String> name;
  /// A url reference to the bucket.
  final pulumi.Input<String> selfLink;
  /// The [StorageClass](https://cloud.google.com/storage/docs/storage-classes) of the bucket.
  final pulumi.Input<String> storageClass;

  /// Creates a new [GetBucketsBucket].
  /// [labels] User-provided bucket labels, in key/value pairs.
  /// [location] The location of the bucket.
  /// [name] The name of the bucket.
  /// [selfLink] A url reference to the bucket.
  /// [storageClass] The [StorageClass](https://cloud.google.com/storage/docs/storage-classes) of the bucket.
  const GetBucketsBucket({
    required this.labels,
    required this.location,
    required this.name,
    required this.selfLink,
    required this.storageClass,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'labels': labels,
      'location': location,
      'name': name,
      'selfLink': selfLink,
      'storageClass': storageClass,
    };
  }

  factory GetBucketsBucket.fromMap(Map<String, dynamic> map) {
    return GetBucketsBucket(
      labels: pulumi.Input.fromValue((map['labels'] as Map).cast<String, String>()),
      location: pulumi.Input.fromValue(map['location'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      selfLink: pulumi.Input.fromValue(map['selfLink'] as String),
      storageClass: pulumi.Input.fromValue(map['storageClass'] as String),
    );
  }
}
