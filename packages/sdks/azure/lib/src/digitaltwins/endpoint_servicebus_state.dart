// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering EndpointServicebus resources.
class EndpointServicebusState {
  /// The storage secret of the dead-lettering, whose format is `https://&lt;storageAccountname&gt;.blob.core.windows.net/&lt;containerName&gt;?&lt;SASToken&gt;`. When an endpoint can't deliver an event within a certain time period or after trying to deliver the event a certain number of times, it can send the undelivered event to a storage account.
  final pulumi.Input<String>? deadLetterStorageSecret;
  /// The ID of the Digital Twins Instance. Changing this forces a new Digital Twins Service Bus Endpoint to be created.
  final pulumi.Input<String>? digitalTwinsId;
  /// The name which should be used for this Digital Twins Service Bus Endpoint. Changing this forces a new Digital Twins Service Bus Endpoint to be created.
  final pulumi.Input<String>? name;
  /// The primary connection string of the Service Bus Topic Authorization Rule with a minimum of `send` permission. .
  final pulumi.Input<String>? servicebusPrimaryConnectionString;
  /// The secondary connection string of the Service Bus Topic Authorization Rule with a minimum of `send` permission.
  final pulumi.Input<String>? servicebusSecondaryConnectionString;

  /// Creates a new [EndpointServicebusState].
  /// [deadLetterStorageSecret] The storage secret of the dead-lettering, whose format is `https://&lt;storageAccountname&gt;.blob.core.windows.net/&lt;containerName&gt;?&lt;SASToken&gt;`. When an endpoint can't deliver an event within a certain time period or after trying to deliver the event a certain number of times, it can send the undelivered event to a storage account.
  /// [digitalTwinsId] The ID of the Digital Twins Instance. Changing this forces a new Digital Twins Service Bus Endpoint to be created.
  /// [name] The name which should be used for this Digital Twins Service Bus Endpoint. Changing this forces a new Digital Twins Service Bus Endpoint to be created.
  /// [servicebusPrimaryConnectionString] The primary connection string of the Service Bus Topic Authorization Rule with a minimum of `send` permission. .
  /// [servicebusSecondaryConnectionString] The secondary connection string of the Service Bus Topic Authorization Rule with a minimum of `send` permission.
  const EndpointServicebusState({
    this.deadLetterStorageSecret,
    this.digitalTwinsId,
    this.name,
    this.servicebusPrimaryConnectionString,
    this.servicebusSecondaryConnectionString,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deadLetterStorageSecret': ?deadLetterStorageSecret,
      'digitalTwinsId': ?digitalTwinsId,
      'name': ?name,
      'servicebusPrimaryConnectionString': ?servicebusPrimaryConnectionString,
      'servicebusSecondaryConnectionString': ?servicebusSecondaryConnectionString,
    };
  }

  factory EndpointServicebusState.fromMap(Map<String, dynamic> map) {
    return EndpointServicebusState(
      deadLetterStorageSecret: (() { final guardedValue = map['deadLetterStorageSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      digitalTwinsId: (() { final guardedValue = map['digitalTwinsId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      servicebusPrimaryConnectionString: (() { final guardedValue = map['servicebusPrimaryConnectionString']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      servicebusSecondaryConnectionString: (() { final guardedValue = map['servicebusSecondaryConnectionString']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

