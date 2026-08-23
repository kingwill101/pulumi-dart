// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDedicatedInferenceAcceleratorsAccelerator {
  /// The date and time when the accelerator was created.
  final pulumi.Input<String> createdAt;
  /// The unique ID of the accelerator.
  final pulumi.Input<String> id;
  /// The name of the accelerator.
  final pulumi.Input<String> name;
  /// The slug identifier for the accelerator type.
  final pulumi.Input<String> slug;
  /// The current status of the accelerator.
  final pulumi.Input<String> status;

  /// Creates a new [GetDedicatedInferenceAcceleratorsAccelerator].
  /// [createdAt] The date and time when the accelerator was created.
  /// [id] The unique ID of the accelerator.
  /// [name] The name of the accelerator.
  /// [slug] The slug identifier for the accelerator type.
  /// [status] The current status of the accelerator.
  const GetDedicatedInferenceAcceleratorsAccelerator({
    required this.createdAt,
    required this.id,
    required this.name,
    required this.slug,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': createdAt,
      'id': id,
      'name': name,
      'slug': slug,
      'status': status,
    };
  }

  factory GetDedicatedInferenceAcceleratorsAccelerator.fromMap(Map<String, dynamic> map) {
    return GetDedicatedInferenceAcceleratorsAccelerator(
      createdAt: pulumi.Input.fromValue(map['createdAt'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      slug: pulumi.Input.fromValue(map['slug'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}
