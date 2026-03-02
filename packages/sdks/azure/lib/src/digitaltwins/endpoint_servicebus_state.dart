// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering EndpointServicebus resources.
class EndpointServicebusState {
  /// The storage secret of the dead-lettering, whose format is `https://<storageAccountname>.blob.core.windows.net/<containerName>?<SASToken>`. When an endpoint can't deliver an event within a certain time period or after trying to deliver the event a certain number of times, it can send the undelivered event to a storage account.
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
  /// [deadLetterStorageSecret] The storage secret of the dead-lettering, whose format is `https://<storageAccountname>.blob.core.windows.net/<containerName>?<SASToken>`. When an endpoint can't deliver an event within a certain time period or after trying to deliver the event a certain number of times, it can send the undelivered event to a storage account.
  /// [digitalTwinsId] The ID of the Digital Twins Instance. Changing this forces a new Digital Twins Service Bus Endpoint to be created.
  /// [name] The name which should be used for this Digital Twins Service Bus Endpoint. Changing this forces a new Digital Twins Service Bus Endpoint to be created.
  /// [servicebusPrimaryConnectionString] The primary connection string of the Service Bus Topic Authorization Rule with a minimum of `send` permission. .
  /// [servicebusSecondaryConnectionString] The secondary connection string of the Service Bus Topic Authorization Rule with a minimum of `send` permission.
  EndpointServicebusState({
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
      deadLetterStorageSecret: map['deadLetterStorageSecret'] == null ? null : (map['deadLetterStorageSecret']! as String).input(),
      digitalTwinsId: map['digitalTwinsId'] == null ? null : (map['digitalTwinsId']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      servicebusPrimaryConnectionString: map['servicebusPrimaryConnectionString'] == null ? null : (map['servicebusPrimaryConnectionString']! as String).input(),
      servicebusSecondaryConnectionString: map['servicebusSecondaryConnectionString'] == null ? null : (map['servicebusSecondaryConnectionString']! as String).input(),
    );
  }
}

