// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_bus_authentication.dart';
import 'service_bus_brokered_message_properties.dart';
import 'service_bus_transport_type.dart';

class ServiceBusQueueMessage {
  /// Gets or sets the Service Bus authentication.
  final pulumi.Input<ServiceBusAuthentication>? authentication;
  /// Gets or sets the brokered message properties.
  final pulumi.Input<ServiceBusBrokeredMessageProperties>? brokeredMessageProperties;
  /// Gets or sets the custom message properties.
  final pulumi.Input<Map<String, String>>? customMessageProperties;
  /// Gets or sets the message.
  final pulumi.Input<String>? message;
  /// Gets or sets the namespace.
  final pulumi.Input<String>? namespace;
  /// Gets or sets the queue name.
  final pulumi.Input<String>? queueName;
  /// Gets or sets the transport type.
  final pulumi.Input<ServiceBusTransportType>? transportType;

  /// Creates a new [ServiceBusQueueMessage].
  /// [authentication] Gets or sets the Service Bus authentication.
  /// [brokeredMessageProperties] Gets or sets the brokered message properties.
  /// [customMessageProperties] Gets or sets the custom message properties.
  /// [message] Gets or sets the message.
  /// [namespace] Gets or sets the namespace.
  /// [queueName] Gets or sets the queue name.
  /// [transportType] Gets or sets the transport type.
  ServiceBusQueueMessage({
    this.authentication,
    this.brokeredMessageProperties,
    this.customMessageProperties,
    this.message,
    this.namespace,
    this.queueName,
    this.transportType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authentication': ?pulumi.Input.mapOptionalInputValue<ServiceBusAuthentication, Map<String, dynamic>>(authentication, (value) => value.toMap()),
      'brokeredMessageProperties': ?pulumi.Input.mapOptionalInputValue<ServiceBusBrokeredMessageProperties, Map<String, dynamic>>(brokeredMessageProperties, (value) => value.toMap()),
      'customMessageProperties': ?customMessageProperties,
      'message': ?message,
      'namespace': ?namespace,
      'queueName': ?queueName,
      'transportType': ?pulumi.Input.mapOptionalInputValue<ServiceBusTransportType, String>(transportType, (value) => value.wireValue),
    };
  }

  factory ServiceBusQueueMessage.fromMap(Map<String, dynamic> map) {
    return ServiceBusQueueMessage(
      authentication: (() { final guardedValue = map['authentication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceBusAuthentication.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      brokeredMessageProperties: (() { final guardedValue = map['brokeredMessageProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceBusBrokeredMessageProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      customMessageProperties: (() { final guardedValue = map['customMessageProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      message: (() { final guardedValue = map['message']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      namespace: (() { final guardedValue = map['namespace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      queueName: (() { final guardedValue = map['queueName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      transportType: (() { final guardedValue = map['transportType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceBusTransportType.fromValue(guardedValue as String)); })(),
    );
  }
}

