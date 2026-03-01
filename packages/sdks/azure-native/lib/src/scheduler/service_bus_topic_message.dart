// ignore_for_file: unused_element, unnecessary_cast

import 'service_bus_authentication.dart';
import 'service_bus_brokered_message_properties.dart';
import 'service_bus_transport_type.dart';

class ServiceBusTopicMessage {
  /// Gets or sets the Service Bus authentication.
  final ServiceBusAuthentication? authentication;
  /// Gets or sets the brokered message properties.
  final ServiceBusBrokeredMessageProperties? brokeredMessageProperties;
  /// Gets or sets the custom message properties.
  final Map<String, String>? customMessageProperties;
  /// Gets or sets the message.
  final String? message;
  /// Gets or sets the namespace.
  final String? namespace;
  /// Gets or sets the topic path.
  final String? topicPath;
  /// Gets or sets the transport type.
  final ServiceBusTransportType? transportType;

  /// Creates a new [ServiceBusTopicMessage].
  /// [authentication] Gets or sets the Service Bus authentication.
  /// [brokeredMessageProperties] Gets or sets the brokered message properties.
  /// [customMessageProperties] Gets or sets the custom message properties.
  /// [message] Gets or sets the message.
  /// [namespace] Gets or sets the namespace.
  /// [topicPath] Gets or sets the topic path.
  /// [transportType] Gets or sets the transport type.
  ServiceBusTopicMessage({
    this.authentication,
    this.brokeredMessageProperties,
    this.customMessageProperties,
    this.message,
    this.namespace,
    this.topicPath,
    this.transportType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authentication': ?authentication == null ? null : authentication!.toMap(),
      'brokeredMessageProperties': ?brokeredMessageProperties == null ? null : brokeredMessageProperties!.toMap(),
      'customMessageProperties': ?customMessageProperties,
      'message': ?message,
      'namespace': ?namespace,
      'topicPath': ?topicPath,
      'transportType': ?transportType == null ? null : transportType!.value,
    };
  }

  factory ServiceBusTopicMessage.fromMap(Map<String, dynamic> map) {
    return ServiceBusTopicMessage(
      authentication: map['authentication'] == null ? null : ServiceBusAuthentication.fromMap((map['authentication'] as Map).cast<String, dynamic>()),
      brokeredMessageProperties: map['brokeredMessageProperties'] == null ? null : ServiceBusBrokeredMessageProperties.fromMap((map['brokeredMessageProperties'] as Map).cast<String, dynamic>()),
      customMessageProperties: map['customMessageProperties'] == null ? null : (map['customMessageProperties'] as Map).cast<String, String>(),
      message: map['message'] == null ? null : map['message'] as String,
      namespace: map['namespace'] == null ? null : map['namespace'] as String,
      topicPath: map['topicPath'] == null ? null : map['topicPath'] as String,
      transportType: map['transportType'] == null ? null : ServiceBusTransportType.fromValue(map['transportType'] as String),
    );
  }
}

