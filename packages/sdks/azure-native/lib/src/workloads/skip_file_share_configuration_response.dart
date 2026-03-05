// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Gets or sets the file share configuration for scenarios where transport directory fileshare is not created or required.
class SkipFileShareConfigurationResponse {
  /// The type of file share config.
  /// Expected value is 'Skip'.
  final pulumi.Input<String> configurationType;

  /// Creates a new [SkipFileShareConfigurationResponse].
  /// [configurationType] The type of file share config.
  SkipFileShareConfigurationResponse({
    required this.configurationType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configurationType': configurationType,
    };
  }

  factory SkipFileShareConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return SkipFileShareConfigurationResponse(
      configurationType: pulumi.Input.fromValue(map['configurationType'] as String),
    );
  }
}

