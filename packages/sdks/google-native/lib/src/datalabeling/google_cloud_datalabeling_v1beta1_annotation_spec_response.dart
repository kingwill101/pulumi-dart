// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Container of information related to one possible annotation that can be used in a labeling task. For example, an image classification task where images are labeled as `dog` or `cat` must reference an AnnotationSpec for `dog` and an AnnotationSpec for `cat`.
class GoogleCloudDatalabelingV1beta1AnnotationSpecResponse {
  /// Optional. User-provided description of the annotation specification. The description can be up to 10,000 characters long.
  final pulumi.Input<String> description;
  /// The display name of the AnnotationSpec. Maximum of 64 characters.
  final pulumi.Input<String> displayName;
  /// This is the integer index of the AnnotationSpec. The index for the whole AnnotationSpecSet is sequential starting from 0. For example, an AnnotationSpecSet with classes `dog` and `cat`, might contain one AnnotationSpec with `{ display_name: "dog", index: 0 }` and one AnnotationSpec with `{ display_name: "cat", index: 1 }`. This is especially useful for model training as it encodes the string labels into numeric values.
  final pulumi.Input<int> index;

  /// Creates a new [GoogleCloudDatalabelingV1beta1AnnotationSpecResponse].
  /// [description] Optional. User-provided description of the annotation specification. The description can be up to 10,000 characters long.
  /// [displayName] The display name of the AnnotationSpec. Maximum of 64 characters.
  /// [index] This is the integer index of the AnnotationSpec. The index for the whole AnnotationSpecSet is sequential starting from 0. For example, an AnnotationSpecSet with classes `dog` and `cat`, might contain one AnnotationSpec with `{ display_name: "dog", index: 0 }` and one AnnotationSpec with `{ display_name: "cat", index: 1 }`. This is especially useful for model training as it encodes the string labels into numeric values.
  const GoogleCloudDatalabelingV1beta1AnnotationSpecResponse({
    required this.description,
    required this.displayName,
    required this.index,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'displayName': displayName,
      'index': index,
    };
  }

  factory GoogleCloudDatalabelingV1beta1AnnotationSpecResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDatalabelingV1beta1AnnotationSpecResponse(
      description: pulumi.Input.fromValue(map['description'] as String),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      index: pulumi.Input.fromValue(map['index'] as int),
    );
  }
}
