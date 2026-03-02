// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Recovery plan manual action details.
class RecoveryPlanManualActionDetailsResponse {
  /// The manual action description.
  final pulumi.Input<String>? description;
  /// Gets the type of action details (see RecoveryPlanActionDetailsTypes enum for possible values).
  /// Expected value is 'ManualActionDetails'.
  final pulumi.Input<String> instanceType;

  /// Creates a new [RecoveryPlanManualActionDetailsResponse].
  /// [description] The manual action description.
  /// [instanceType] Gets the type of action details (see RecoveryPlanActionDetailsTypes enum for possible values).
  RecoveryPlanManualActionDetailsResponse({
    this.description,
    required this.instanceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'instanceType': instanceType,
    };
  }

  factory RecoveryPlanManualActionDetailsResponse.fromMap(Map<String, dynamic> map) {
    return RecoveryPlanManualActionDetailsResponse(
      description: map['description'] == null ? null : (map['description'] as String).input(),
      instanceType: (map['instanceType'] as String).input(),
    );
  }
}

