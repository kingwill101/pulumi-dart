// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Recovery plan action details.
class RecoveryPlanAction {
  /// The action name.
  final pulumi.Input<String> actionName;
  /// The custom details.
  final pulumi.Input<dynamic> customDetails;
  /// The list of failover directions.
  final pulumi.Input<List<dynamic>> failoverDirections;
  /// The list of failover types.
  final pulumi.Input<List<dynamic>> failoverTypes;

  /// Creates a new [RecoveryPlanAction].
  /// [actionName] The action name.
  /// [customDetails] The custom details.
  /// [failoverDirections] The list of failover directions.
  /// [failoverTypes] The list of failover types.
  const RecoveryPlanAction({
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

  factory RecoveryPlanAction.fromMap(Map<String, dynamic> map) {
    return RecoveryPlanAction(
      actionName: pulumi.Input.fromValue(map['actionName'] as String),
      customDetails: pulumi.Input.fromValue(map['customDetails']),
      failoverDirections: pulumi.Input.fromValue((map['failoverDirections'] as List).cast<dynamic>()),
      failoverTypes: pulumi.Input.fromValue((map['failoverTypes'] as List).cast<dynamic>()),
    );
  }
}
