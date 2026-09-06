// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'peering_service_prefix_event_response.dart';

/// Result data returned by getPrefix.
class GetPrefixResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The error message for validation state
  final String? errorMessage;
  /// The list of events for peering service prefix
  final List<PeeringServicePrefixEventResponse>? events;
  /// The ID of the resource.
  final String? id;
  /// The prefix learned type
  final String? learnedType;
  /// The name of the resource.
  final String? name;
  /// The peering service prefix key
  final String? peeringServicePrefixKey;
  /// The prefix from which your traffic originates.
  final String? prefix;
  /// The prefix validation state
  final String? prefixValidationState;
  /// The provisioning state of the resource.
  final String? provisioningState;
  /// The type of the resource.
  final String? type;

  /// Creates a new [GetPrefixResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [errorMessage] The error message for validation state
  /// [events] The list of events for peering service prefix
  /// [id] The ID of the resource.
  /// [learnedType] The prefix learned type
  /// [name] The name of the resource.
  /// [peeringServicePrefixKey] The peering service prefix key
  /// [prefix] The prefix from which your traffic originates.
  /// [prefixValidationState] The prefix validation state
  /// [provisioningState] The provisioning state of the resource.
  /// [type] The type of the resource.
  const GetPrefixResult({
    this.azureApiVersion,
    this.errorMessage,
    this.events,
    this.id,
    this.learnedType,
    this.name,
    this.peeringServicePrefixKey,
    this.prefix,
    this.prefixValidationState,
    this.provisioningState,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'errorMessage': ?errorMessage,
      'events': ?(() { final guardedValue = events; if (guardedValue == null) return null; return pulumi.Input.encodeList<PeeringServicePrefixEventResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'learnedType': ?learnedType,
      'name': ?name,
      'peeringServicePrefixKey': ?peeringServicePrefixKey,
      'prefix': ?prefix,
      'prefixValidationState': ?prefixValidationState,
      'provisioningState': ?provisioningState,
      'type': ?type,
    };
  }

  factory GetPrefixResult.fromMap(Map<String, dynamic> map) {
    return GetPrefixResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      errorMessage: (() { final guardedValue = map['errorMessage']; if (guardedValue == null) return null; return guardedValue as String; })(),
      events: (() { final guardedValue = map['events']; if (guardedValue == null) return null; return pulumi.Input.decodeList<PeeringServicePrefixEventResponse>(guardedValue, (value) => PeeringServicePrefixEventResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      learnedType: (() { final guardedValue = map['learnedType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      peeringServicePrefixKey: (() { final guardedValue = map['peeringServicePrefixKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
      prefix: (() { final guardedValue = map['prefix']; if (guardedValue == null) return null; return guardedValue as String; })(),
      prefixValidationState: (() { final guardedValue = map['prefixValidationState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
