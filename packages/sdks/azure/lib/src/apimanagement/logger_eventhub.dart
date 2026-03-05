// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LoggerEventhub {
  /// The connection string of an EventHub Namespace.
  ///
  /// &gt; **Note:** At least one of `connection_string` or `endpoint_uri` must be specified
  final pulumi.Input<String>? connectionString;
  /// The endpoint address of an EventHub Namespace. Required when `client_id` is set.
  final pulumi.Input<String>? endpointUri;
  /// The name of an EventHub.
  final pulumi.Input<String> name;
  /// The Client Id of the User Assigned Identity with the "Azure Event Hubs Data Sender" role to the target EventHub Namespace. Required when `endpoint_uri` is set. If not specified the System Assigned Identity will be used.
  final pulumi.Input<String>? userAssignedIdentityClientId;

  /// Creates a new [LoggerEventhub].
  /// [connectionString] The connection string of an EventHub Namespace.
  /// [endpointUri] The endpoint address of an EventHub Namespace. Required when `client_id` is set.
  /// [name] The name of an EventHub.
  /// [userAssignedIdentityClientId] The Client Id of the User Assigned Identity with the "Azure Event Hubs Data Sender" role to the target EventHub Namespace. Required when `endpoint_uri` is set. If not specified the System Assigned Identity will be used.
  LoggerEventhub({
    this.connectionString,
    this.endpointUri,
    required this.name,
    this.userAssignedIdentityClientId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionString': ?connectionString,
      'endpointUri': ?endpointUri,
      'name': name,
      'userAssignedIdentityClientId': ?userAssignedIdentityClientId,
    };
  }

  factory LoggerEventhub.fromMap(Map<String, dynamic> map) {
    return LoggerEventhub(
      connectionString: (() { final guardedValue = map['connectionString']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endpointUri: (() { final guardedValue = map['endpointUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      userAssignedIdentityClientId: (() { final guardedValue = map['userAssignedIdentityClientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

