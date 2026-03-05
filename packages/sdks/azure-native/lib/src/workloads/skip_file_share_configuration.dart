// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Gets or sets the file share configuration for scenarios where transport directory fileshare is not created or required.
class SkipFileShareConfiguration {
  /// The type of file share config.
  /// Expected value is 'Skip'.
  final pulumi.Input<String> configurationType;

  /// Creates a new [SkipFileShareConfiguration].
  /// [configurationType] The type of file share config.
  SkipFileShareConfiguration({
    required this.configurationType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configurationType': configurationType,
    };
  }

  factory SkipFileShareConfiguration.fromMap(Map<String, dynamic> map) {
    return SkipFileShareConfiguration(
      configurationType: pulumi.Input.fromValue(map['configurationType'] as String),
    );
  }
}

