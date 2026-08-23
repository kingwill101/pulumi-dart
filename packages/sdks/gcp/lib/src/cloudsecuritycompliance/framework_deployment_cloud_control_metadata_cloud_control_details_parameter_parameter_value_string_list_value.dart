// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueStringListValue {
  /// The strings in the list.
  final pulumi.Input<List<String>> values;

  /// Creates a new [FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueStringListValue].
  /// [values] The strings in the list.
  const FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueStringListValue({
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'values': values,
    };
  }

  factory FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueStringListValue.fromMap(Map<String, dynamic> map) {
    return FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueStringListValue(
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}
