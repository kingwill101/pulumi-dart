// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'peering_service_prefix_event_response.dart';

/// Result data returned by getPrefix.
class GetPrefixResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The error message for validation state
  final String errorMessage;
  /// The list of events for peering service prefix
  final List<PeeringServicePrefixEventResponse> events;
  /// The ID of the resource.
  final String id;
  /// The prefix learned type
  final String learnedType;
  /// The name of the resource.
  final String name;
  /// The peering service prefix key
  final String? peeringServicePrefixKey;
  /// The prefix from which your traffic originates.
  final String? prefix;
  /// The prefix validation state
  final String prefixValidationState;
  /// The provisioning state of the resource.
  final String provisioningState;
  /// The type of the resource.
  final String type;

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
  GetPrefixResult({
    required this.azureApiVersion,
    required this.errorMessage,
    required this.events,
    required this.id,
    required this.learnedType,
    required this.name,
    this.peeringServicePrefixKey,
    this.prefix,
    required this.prefixValidationState,
    required this.provisioningState,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'errorMessage': errorMessage,
      'events': pulumi.Input.encodeList<PeeringServicePrefixEventResponse, Map<String, dynamic>>(events, (value) => value.toMap()),
      'id': id,
      'learnedType': learnedType,
      'name': name,
      'peeringServicePrefixKey': ?peeringServicePrefixKey,
      'prefix': ?prefix,
      'prefixValidationState': prefixValidationState,
      'provisioningState': provisioningState,
      'type': type,
    };
  }

  factory GetPrefixResult.fromMap(Map<String, dynamic> map) {
    return GetPrefixResult(
      azureApiVersion: map['azureApiVersion'] as String,
      errorMessage: map['errorMessage'] as String,
      events: pulumi.Input.decodeList<PeeringServicePrefixEventResponse>(map['events'], (value) => PeeringServicePrefixEventResponse.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      learnedType: map['learnedType'] as String,
      name: map['name'] as String,
      peeringServicePrefixKey: map['peeringServicePrefixKey'] == null ? null : map['peeringServicePrefixKey'] as String,
      prefix: map['prefix'] == null ? null : map['prefix'] as String,
      prefixValidationState: map['prefixValidationState'] as String,
      provisioningState: map['provisioningState'] as String,
      type: map['type'] as String,
    );
  }
}

