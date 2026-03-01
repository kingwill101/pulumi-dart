// ignore_for_file: unused_element, unnecessary_cast

import 'service_bus_authentication_response.dart';
import 'service_bus_brokered_message_properties_response.dart';

class ServiceBusQueueMessageResponse {
  /// Gets or sets the Service Bus authentication.
  final ServiceBusAuthenticationResponse? authentication;
  /// Gets or sets the brokered message properties.
  final ServiceBusBrokeredMessagePropertiesResponse? brokeredMessageProperties;
  /// Gets or sets the custom message properties.
  final Map<String, String>? customMessageProperties;
  /// Gets or sets the message.
  final String? message;
  /// Gets or sets the namespace.
  final String? namespace;
  /// Gets or sets the queue name.
  final String? queueName;
  /// Gets or sets the transport type.
  final String? transportType;

  /// Creates a new [ServiceBusQueueMessageResponse].
  /// [authentication] Gets or sets the Service Bus authentication.
  /// [brokeredMessageProperties] Gets or sets the brokered message properties.
  /// [customMessageProperties] Gets or sets the custom message properties.
  /// [message] Gets or sets the message.
  /// [namespace] Gets or sets the namespace.
  /// [queueName] Gets or sets the queue name.
  /// [transportType] Gets or sets the transport type.
  ServiceBusQueueMessageResponse({
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
      'authentication': ?authentication == null ? null : authentication!.toMap(),
      'brokeredMessageProperties': ?brokeredMessageProperties == null ? null : brokeredMessageProperties!.toMap(),
      'customMessageProperties': ?customMessageProperties,
      'message': ?message,
      'namespace': ?namespace,
      'queueName': ?queueName,
      'transportType': ?transportType,
    };
  }

  factory ServiceBusQueueMessageResponse.fromMap(Map<String, dynamic> map) {
    return ServiceBusQueueMessageResponse(
      authentication: map['authentication'] == null ? null : ServiceBusAuthenticationResponse.fromMap((map['authentication'] as Map).cast<String, dynamic>()),
      brokeredMessageProperties: map['brokeredMessageProperties'] == null ? null : ServiceBusBrokeredMessagePropertiesResponse.fromMap((map['brokeredMessageProperties'] as Map).cast<String, dynamic>()),
      customMessageProperties: map['customMessageProperties'] == null ? null : (map['customMessageProperties'] as Map).cast<String, String>(),
      message: map['message'] == null ? null : map['message'] as String,
      namespace: map['namespace'] == null ? null : map['namespace'] as String,
      queueName: map['queueName'] == null ? null : map['queueName'] as String,
      transportType: map['transportType'] == null ? null : map['transportType'] as String,
    );
  }
}

