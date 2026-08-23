// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The description of differences between original and replayed agent output.
class GoogleCloudDialogflowCxV3beta1TestRunDifferenceResponse {
  /// A human readable description of the diff, showing the actual output vs expected output.
  final pulumi.Input<String> description;
  /// The type of diff.
  final pulumi.Input<String> type;

  /// Creates a new [GoogleCloudDialogflowCxV3beta1TestRunDifferenceResponse].
  /// [description] A human readable description of the diff, showing the actual output vs expected output.
  /// [type] The type of diff.
  const GoogleCloudDialogflowCxV3beta1TestRunDifferenceResponse({
    required this.description,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'type': type,
    };
  }

  factory GoogleCloudDialogflowCxV3beta1TestRunDifferenceResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3beta1TestRunDifferenceResponse(
      description: pulumi.Input.fromValue(map['description'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
