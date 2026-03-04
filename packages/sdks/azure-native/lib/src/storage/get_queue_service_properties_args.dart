// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storage_get_queue_service_properties_args_doc}
/// Arguments for getQueueServiceProperties.
/// {@endtemplate}
/// {@macro pulumi_storage_get_queue_service_properties_args_doc}
class GetQueueServicePropertiesArgs {
  /// The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
  final pulumi.Input<String> accountName;

  /// The name of the Queue Service within the specified storage account. Queue Service Name must be 'default'
  final pulumi.Input<String> queueServiceName;

  /// The name of the resource group within the user's subscription. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetQueueServicePropertiesArgs].
  /// [accountName] The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
  /// [queueServiceName] The name of the Queue Service within the specified storage account. Queue Service Name must be 'default'
  /// [resourceGroupName] The name of the resource group within the user's subscription. The name is case insensitive.
  GetQueueServicePropertiesArgs({
    required this.accountName,
    required this.queueServiceName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'queueServiceName': queueServiceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetQueueServicePropertiesArgs.fromMap(Map<String, dynamic> map) {
    return GetQueueServicePropertiesArgs(
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      queueServiceName: pulumi.Input.fromValue(
        map['queueServiceName'] as String,
      ),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
