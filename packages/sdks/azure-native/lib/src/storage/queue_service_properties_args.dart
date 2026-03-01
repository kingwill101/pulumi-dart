// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cors_rules.dart';

/// {@template pulumi_storage_queue_service_properties_args_doc}
/// The set of arguments for QueueServiceProperties.
/// {@endtemplate}
/// {@macro pulumi_storage_queue_service_properties_args_doc}
class QueueServicePropertiesArgs {
  /// The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
  final pulumi.Input<String> accountName;
  /// Specifies CORS rules for the Queue service. You can include up to five CorsRule elements in the request. If no CorsRule elements are included in the request body, all CORS rules will be deleted, and CORS will be disabled for the Queue service.
  final pulumi.Input<CorsRules>? cors;
  /// The name of the Queue Service within the specified storage account. Queue Service Name must be 'default'
  final pulumi.Input<String>? queueServiceName;
  /// The name of the resource group within the user's subscription. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [QueueServicePropertiesArgs].
  /// [accountName] The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
  /// [cors] Specifies CORS rules for the Queue service. You can include up to five CorsRule elements in the request. If no CorsRule elements are included in the request body, all CORS rules will be deleted, and CORS will be disabled for the Queue service.
  /// [queueServiceName] The name of the Queue Service within the specified storage account. Queue Service Name must be 'default'
  /// [resourceGroupName] The name of the resource group within the user's subscription. The name is case insensitive.
  QueueServicePropertiesArgs({
    required pulumi.Output<String> accountName,
    pulumi.Output<CorsRules>? cors,
    pulumi.Output<String>? queueServiceName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      cors = pulumi.Input.asOptionalInput<CorsRules>(cors),
      queueServiceName = pulumi.Input.asOptionalInput<String>(queueServiceName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'cors': ?pulumi.Input.mapOptionalInputValue<CorsRules, Map<String, dynamic>>(cors, (value) => value.toMap()),
      'queueServiceName': ?queueServiceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory QueueServicePropertiesArgs.fromMap(Map<String, dynamic> map) {
    return QueueServicePropertiesArgs(
      accountName: pulumi.Output.create<String>(map['accountName'] as String),
      cors: map['cors'] == null ? null : pulumi.Output.create<CorsRules>(CorsRules.fromMap((map['cors'] as Map).cast<String, dynamic>())),
      queueServiceName: map['queueServiceName'] == null ? null : pulumi.Output.create<String>(map['queueServiceName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

