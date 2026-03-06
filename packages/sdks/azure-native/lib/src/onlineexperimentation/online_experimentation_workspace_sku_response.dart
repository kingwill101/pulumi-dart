// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The SKU (Stock Keeping Unit) assigned to this resource.
class OnlineExperimentationWorkspaceSkuResponse {
  /// The name of the SKU. Ex - F0, P0. It is typically a letter+number code
  final pulumi.Input<String> name;
  /// The name of the SKU tier
  final pulumi.Input<String> tier;

  /// Creates a new [OnlineExperimentationWorkspaceSkuResponse].
  /// [name] The name of the SKU. Ex - F0, P0. It is typically a letter+number code
  /// [tier] The name of the SKU tier
  const OnlineExperimentationWorkspaceSkuResponse({
    required this.name,
    required this.tier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'tier': tier,
    };
  }

  factory OnlineExperimentationWorkspaceSkuResponse.fromMap(Map<String, dynamic> map) {
    return OnlineExperimentationWorkspaceSkuResponse(
      name: pulumi.Input.fromValue(map['name'] as String),
      tier: pulumi.Input.fromValue(map['tier'] as String),
    );
  }
}

