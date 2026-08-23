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
  const QueueServicePropertiesArgs({
    required this.accountName,
    this.cors,
    this.queueServiceName,
    required this.resourceGroupName,
  });

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
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      cors: (() { final guardedValue = map['cors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CorsRules.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      queueServiceName: (() { final guardedValue = map['queueServiceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
