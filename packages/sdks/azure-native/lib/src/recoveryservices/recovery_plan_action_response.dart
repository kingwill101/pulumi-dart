// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Recovery plan action details.
class RecoveryPlanActionResponse {
  /// The action name.
  final pulumi.Input<String> actionName;
  /// The custom details.
  final pulumi.Input<dynamic> customDetails;
  /// The list of failover directions.
  final pulumi.Input<List<String>> failoverDirections;
  /// The list of failover types.
  final pulumi.Input<List<String>> failoverTypes;

  /// Creates a new [RecoveryPlanActionResponse].
  /// [actionName] The action name.
  /// [customDetails] The custom details.
  /// [failoverDirections] The list of failover directions.
  /// [failoverTypes] The list of failover types.
  const RecoveryPlanActionResponse({
    required this.actionName,
    required this.customDetails,
    required this.failoverDirections,
    required this.failoverTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionName': actionName,
      'customDetails': customDetails,
      'failoverDirections': failoverDirections,
      'failoverTypes': failoverTypes,
    };
  }

  factory RecoveryPlanActionResponse.fromMap(Map<String, dynamic> map) {
    return RecoveryPlanActionResponse(
      actionName: pulumi.Input.fromValue(map['actionName'] as String),
      customDetails: pulumi.Input.fromValue(map['customDetails']),
      failoverDirections: pulumi.Input.fromValue((map['failoverDirections'] as List).cast<String>()),
      failoverTypes: pulumi.Input.fromValue((map['failoverTypes'] as List).cast<String>()),
    );
  }
}
