// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The AzureDevOps scope connector's environment data
class AzureDevOpsScopeEnvironmentDataResponse {
  /// The type of the environment data.
  /// Expected value is 'AzureDevOpsScope'.
  final pulumi.Input<String> environmentType;

  /// Creates a new [AzureDevOpsScopeEnvironmentDataResponse].
  /// [environmentType] The type of the environment data.
  AzureDevOpsScopeEnvironmentDataResponse({required this.environmentType});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'environmentType': environmentType};
  }

  factory AzureDevOpsScopeEnvironmentDataResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return AzureDevOpsScopeEnvironmentDataResponse(
      environmentType: pulumi.Input.fromValue(map['environmentType'] as String),
    );
  }
}
