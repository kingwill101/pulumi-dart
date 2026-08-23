// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies options for controlling advanced machine features.
class AdvancedMachineFeaturesResponse {
  /// The number of threads per physical core.
  final pulumi.Input<int> threadsPerCore;

  /// Creates a new [AdvancedMachineFeaturesResponse].
  /// [threadsPerCore] The number of threads per physical core.
  const AdvancedMachineFeaturesResponse({
    required this.threadsPerCore,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'threadsPerCore': threadsPerCore,
    };
  }

  factory AdvancedMachineFeaturesResponse.fromMap(Map<String, dynamic> map) {
    return AdvancedMachineFeaturesResponse(
      threadsPerCore: pulumi.Input.fromValue(map['threadsPerCore'] as int),
    );
  }
}
