// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_professionalservice_get_professional_service_subscription_level_args_doc}
/// Arguments for getProfessionalServiceSubscriptionLevel.
/// {@endtemplate}
/// {@macro pulumi_professionalservice_get_professional_service_subscription_level_args_doc}
class GetProfessionalServiceSubscriptionLevelArgs {
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the resource.
  final pulumi.Input<String> resourceName;
  /// The Azure subscription ID. This is a GUID-formatted string (e.g. 00000000-0000-0000-0000-000000000000)
  final pulumi.Input<String>? subscriptionId;

  /// Creates a new [GetProfessionalServiceSubscriptionLevelArgs].
  /// [resourceGroupName] The name of the resource group.
  /// [resourceName] The name of the resource.
  /// [subscriptionId] The Azure subscription ID. This is a GUID-formatted string (e.g. 00000000-0000-0000-0000-000000000000)
  GetProfessionalServiceSubscriptionLevelArgs({
    required this.resourceGroupName,
    required this.resourceName,
    this.subscriptionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
      'subscriptionId': ?subscriptionId,
    };
  }

  factory GetProfessionalServiceSubscriptionLevelArgs.fromMap(Map<String, dynamic> map) {
    return GetProfessionalServiceSubscriptionLevelArgs(
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      resourceName: pulumi.Input.fromValue(map['resourceName'] as String),
      subscriptionId: (() { final guardedValue = map['subscriptionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

