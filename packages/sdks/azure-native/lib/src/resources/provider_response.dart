// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'provider_resource_type_response.dart';

/// Resource provider information.
class ProviderResponse {
  /// The provider ID.
  final pulumi.Input<String> id;
  /// The namespace of the resource provider.
  final pulumi.Input<String>? namespace;
  /// The provider authorization consent state.
  final pulumi.Input<String>? providerAuthorizationConsentState;
  /// The registration policy of the resource provider.
  final pulumi.Input<String> registrationPolicy;
  /// The registration state of the resource provider.
  final pulumi.Input<String> registrationState;
  /// The collection of provider resource types.
  final pulumi.Input<List<ProviderResourceTypeResponse>> resourceTypes;

  /// Creates a new [ProviderResponse].
  /// [id] The provider ID.
  /// [namespace] The namespace of the resource provider.
  /// [providerAuthorizationConsentState] The provider authorization consent state.
  /// [registrationPolicy] The registration policy of the resource provider.
  /// [registrationState] The registration state of the resource provider.
  /// [resourceTypes] The collection of provider resource types.
  ProviderResponse({
    required this.id,
    this.namespace,
    this.providerAuthorizationConsentState,
    required this.registrationPolicy,
    required this.registrationState,
    required this.resourceTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'namespace': ?namespace,
      'providerAuthorizationConsentState': ?providerAuthorizationConsentState,
      'registrationPolicy': registrationPolicy,
      'registrationState': registrationState,
      'resourceTypes': pulumi.Input.mapInputValue<List<ProviderResourceTypeResponse>, List<Map<String, dynamic>>>(resourceTypes, (value) => pulumi.Input.encodeList<ProviderResourceTypeResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ProviderResponse.fromMap(Map<String, dynamic> map) {
    return ProviderResponse(
      id: (map['id'] as String).input(),
      namespace: map['namespace'] == null ? null : (map['namespace']! as String).input(),
      providerAuthorizationConsentState: map['providerAuthorizationConsentState'] == null ? null : (map['providerAuthorizationConsentState']! as String).input(),
      registrationPolicy: (map['registrationPolicy'] as String).input(),
      registrationState: (map['registrationState'] as String).input(),
      resourceTypes: (pulumi.Input.decodeList<ProviderResourceTypeResponse>(map['resourceTypes'], (value) => ProviderResourceTypeResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

