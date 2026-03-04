// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Aggregated status of the underlying assets of a lake or zone.
class GoogleCloudDataplexV1AssetStatusResponse {
  /// Number of active assets.
  final pulumi.Input<int> activeAssets;

  /// Number of assets that are in process of updating the security policy on attached resources.
  final pulumi.Input<int> securityPolicyApplyingAssets;

  /// Last update time of the status.
  final pulumi.Input<String> updateTime;

  /// Creates a new [GoogleCloudDataplexV1AssetStatusResponse].
  /// [activeAssets] Number of active assets.
  /// [securityPolicyApplyingAssets] Number of assets that are in process of updating the security policy on attached resources.
  /// [updateTime] Last update time of the status.
  GoogleCloudDataplexV1AssetStatusResponse({
    required this.activeAssets,
    required this.securityPolicyApplyingAssets,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeAssets': activeAssets,
      'securityPolicyApplyingAssets': securityPolicyApplyingAssets,
      'updateTime': updateTime,
    };
  }

  factory GoogleCloudDataplexV1AssetStatusResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDataplexV1AssetStatusResponse(
      activeAssets: pulumi.Input.fromValue(map['activeAssets'] as int),
      securityPolicyApplyingAssets: pulumi.Input.fromValue(
        map['securityPolicyApplyingAssets'] as int,
      ),
      updateTime: pulumi.Input.fromValue(map['updateTime'] as String),
    );
  }
}
