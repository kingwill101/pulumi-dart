// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_integrations_v1alpha_value_type_response.dart';

/// Integration Parameter is defined in the integration config and are used to provide information about data types of the expected parameters and provide any default values if needed. They can also be used to add custom attributes. These are static in nature and should not be used for dynamic event definition.
class GoogleCloudIntegrationsV1alphaIntegrationParameterResponse {
  /// Type of the parameter.
  final pulumi.Input<String> dataType;
  /// Default values for the defined keys. Each value can either be string, int, double or any proto message or a serialized object.
  final pulumi.Input<GoogleCloudIntegrationsV1alphaValueTypeResponse> defaultValue;
  /// The name (without prefix) to be displayed in the UI for this parameter. E.g. if the key is "foo.bar.myName", then the name would be "myName".
  final pulumi.Input<String> displayName;
  /// Specifies the input/output type for the parameter.
  final pulumi.Input<String> inputOutputType;
  /// Whether this parameter is a transient parameter.
  final pulumi.Input<bool> isTransient;
  /// This schema will be used to validate runtime JSON-typed values of this parameter.
  final pulumi.Input<String> jsonSchema;
  /// Key is used to retrieve the corresponding parameter value. This should be unique for a given fired event. These parameters must be predefined in the integration definition.
  final pulumi.Input<String> key;
  /// The identifier of the node (TaskConfig/TriggerConfig) this parameter was produced by, if it is a transient param or a copy of an input param.
  final pulumi.Input<String> producer;
  /// Searchable in the execution log or not.
  final pulumi.Input<bool> searchable;

  /// Creates a new [GoogleCloudIntegrationsV1alphaIntegrationParameterResponse].
  /// [dataType] Type of the parameter.
  /// [defaultValue] Default values for the defined keys. Each value can either be string, int, double or any proto message or a serialized object.
  /// [displayName] The name (without prefix) to be displayed in the UI for this parameter. E.g. if the key is "foo.bar.myName", then the name would be "myName".
  /// [inputOutputType] Specifies the input/output type for the parameter.
  /// [isTransient] Whether this parameter is a transient parameter.
  /// [jsonSchema] This schema will be used to validate runtime JSON-typed values of this parameter.
  /// [key] Key is used to retrieve the corresponding parameter value. This should be unique for a given fired event. These parameters must be predefined in the integration definition.
  /// [producer] The identifier of the node (TaskConfig/TriggerConfig) this parameter was produced by, if it is a transient param or a copy of an input param.
  /// [searchable] Searchable in the execution log or not.
  GoogleCloudIntegrationsV1alphaIntegrationParameterResponse({
    required this.dataType,
    required this.defaultValue,
    required this.displayName,
    required this.inputOutputType,
    required this.isTransient,
    required this.jsonSchema,
    required this.key,
    required this.producer,
    required this.searchable,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataType': dataType,
      'defaultValue': pulumi.Input.mapInputValue<GoogleCloudIntegrationsV1alphaValueTypeResponse, Map<String, dynamic>>(defaultValue, (value) => value.toMap()),
      'displayName': displayName,
      'inputOutputType': inputOutputType,
      'isTransient': isTransient,
      'jsonSchema': jsonSchema,
      'key': key,
      'producer': producer,
      'searchable': searchable,
    };
  }

  factory GoogleCloudIntegrationsV1alphaIntegrationParameterResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudIntegrationsV1alphaIntegrationParameterResponse(
      dataType: (map['dataType'] as String).input(),
      defaultValue: (GoogleCloudIntegrationsV1alphaValueTypeResponse.fromMap((map['defaultValue'] as Map).cast<String, dynamic>())).input(),
      displayName: (map['displayName'] as String).input(),
      inputOutputType: (map['inputOutputType'] as String).input(),
      isTransient: (map['isTransient'] as bool).input(),
      jsonSchema: (map['jsonSchema'] as String).input(),
      key: (map['key'] as String).input(),
      producer: (map['producer'] as String).input(),
      searchable: (map['searchable'] as bool).input(),
    );
  }
}

