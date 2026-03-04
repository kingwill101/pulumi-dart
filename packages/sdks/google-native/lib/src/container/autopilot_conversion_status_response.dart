// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// AutopilotConversionStatus represents conversion status.
class AutopilotConversionStatusResponse {
  /// The current state of the conversion.
  final pulumi.Input<String> state;

  /// Creates a new [AutopilotConversionStatusResponse].
  /// [state] The current state of the conversion.
  AutopilotConversionStatusResponse({required this.state});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'state': state};
  }

  factory AutopilotConversionStatusResponse.fromMap(Map<String, dynamic> map) {
    return AutopilotConversionStatusResponse(
      state: pulumi.Input.fromValue(map['state'] as String),
    );
  }
}
