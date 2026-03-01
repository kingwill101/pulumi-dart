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
    pulumi.Output<String>? deadLetterStorageSecret,
    pulumi.Output<String>? digitalTwinsId,
    pulumi.Output<String>? name,
    pulumi.Output<String>? servicebusPrimaryConnectionString,
    pulumi.Output<String>? servicebusSecondaryConnectionString,
  }) :
      deadLetterStorageSecret = pulumi.Input.asOptionalInput<String>(deadLetterStorageSecret),
      digitalTwinsId = pulumi.Input.asOptionalInput<String>(digitalTwinsId),
      name = pulumi.Input.asOptionalInput<String>(name),
      servicebusPrimaryConnectionString = pulumi.Input.asOptionalInput<String>(servicebusPrimaryConnectionString),
      servicebusSecondaryConnectionString = pulumi.Input.asOptionalInput<String>(servicebusSecondaryConnectionString);

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
      deadLetterStorageSecret: map['deadLetterStorageSecret'] == null ? null : pulumi.Output.create<String>(map['deadLetterStorageSecret'] as String),
      digitalTwinsId: map['digitalTwinsId'] == null ? null : pulumi.Output.create<String>(map['digitalTwinsId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      servicebusPrimaryConnectionString: map['servicebusPrimaryConnectionString'] == null ? null : pulumi.Output.create<String>(map['servicebusPrimaryConnectionString'] as String),
      servicebusSecondaryConnectionString: map['servicebusSecondaryConnectionString'] == null ? null : pulumi.Output.create<String>(map['servicebusSecondaryConnectionString'] as String),
    );
  }
}

