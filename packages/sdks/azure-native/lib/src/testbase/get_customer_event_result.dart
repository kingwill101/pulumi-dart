// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'notification_event_receiver_response.dart';
import 'system_data_response.dart';

/// Result data returned by getCustomerEvent.
class GetCustomerEventResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;

  /// The name of the event subscribed to.
  final String eventName;

  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;

  /// The name of the resource
  final String name;

  /// The notification event receivers.
  final List<NotificationEventReceiverResponse> receivers;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetCustomerEventResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [eventName] The name of the event subscribed to.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [name] The name of the resource
  /// [receivers] The notification event receivers.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetCustomerEventResult({
    required this.azureApiVersion,
    required this.eventName,
    required this.id,
    required this.name,
    required this.receivers,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'eventName': eventName,
      'id': id,
      'name': name,
      'receivers':
          pulumi.Input.encodeList<
            NotificationEventReceiverResponse,
            Map<String, dynamic>
          >(receivers, (value) => value.toMap()),
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetCustomerEventResult.fromMap(Map<String, dynamic> map) {
    return GetCustomerEventResult(
      azureApiVersion: map['azureApiVersion'] as String,
      eventName: map['eventName'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      receivers: pulumi.Input.decodeList<NotificationEventReceiverResponse>(
        map['receivers']!,
        (value) => NotificationEventReceiverResponse.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      systemData: SystemDataResponse.fromMap(
        (map['systemData']! as Map).cast<String, dynamic>(),
      ),
      type: map['type'] as String,
    );
  }
}
