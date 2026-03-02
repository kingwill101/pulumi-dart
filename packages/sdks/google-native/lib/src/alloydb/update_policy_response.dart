// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Policy to be used while updating the instance.
class UpdatePolicyResponse {
  /// Mode for updating the instance.
  final pulumi.Input<String> mode;

  /// Creates a new [UpdatePolicyResponse].
  /// [mode] Mode for updating the instance.
  UpdatePolicyResponse({
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': mode,
    };
  }

  factory UpdatePolicyResponse.fromMap(Map<String, dynamic> map) {
    return UpdatePolicyResponse(
      mode: (map['mode'] as String).input(),
    );
  }
}

