// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getRegisteredPrefix.
class GetRegisteredPrefixResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The error message associated with the validation state, if any.
  final String? errorMessage;
  /// The ID of the resource.
  final String? id;
  /// The name of the resource.
  final String? name;
  /// The peering service prefix key that is to be shared with the customer.
  final String? peeringServicePrefixKey;
  /// The customer's prefix from which traffic originates.
  final String? prefix;
  /// The prefix validation state.
  final String? prefixValidationState;
  /// The provisioning state of the resource.
  final String? provisioningState;
  /// The type of the resource.
  final String? type;

  /// Creates a new [GetRegisteredPrefixResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [errorMessage] The error message associated with the validation state, if any.
  /// [id] The ID of the resource.
  /// [name] The name of the resource.
  /// [peeringServicePrefixKey] The peering service prefix key that is to be shared with the customer.
  /// [prefix] The customer's prefix from which traffic originates.
  /// [prefixValidationState] The prefix validation state.
  /// [provisioningState] The provisioning state of the resource.
  /// [type] The type of the resource.
  const GetRegisteredPrefixResult({
    this.azureApiVersion,
    this.errorMessage,
    this.id,
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
      'id': ?id,
      'name': ?name,
      'peeringServicePrefixKey': ?peeringServicePrefixKey,
      'prefix': ?prefix,
      'prefixValidationState': ?prefixValidationState,
      'provisioningState': ?provisioningState,
      'type': ?type,
    };
  }

  factory GetRegisteredPrefixResult.fromMap(Map<String, dynamic> map) {
    return GetRegisteredPrefixResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      errorMessage: (() { final guardedValue = map['errorMessage']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      peeringServicePrefixKey: (() { final guardedValue = map['peeringServicePrefixKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
      prefix: (() { final guardedValue = map['prefix']; if (guardedValue == null) return null; return guardedValue as String; })(),
      prefixValidationState: (() { final guardedValue = map['prefixValidationState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
