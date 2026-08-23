// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_integrations_v1alpha_integration_parameter_data_type.dart';
import 'google_cloud_integrations_v1alpha_integration_parameter_input_output_type.dart';
import 'google_cloud_integrations_v1alpha_value_type.dart';

/// Integration Parameter is defined in the integration config and are used to provide information about data types of the expected parameters and provide any default values if needed. They can also be used to add custom attributes. These are static in nature and should not be used for dynamic event definition.
class GoogleCloudIntegrationsV1alphaIntegrationParameter {
  /// Type of the parameter.
  final pulumi.Input<GoogleCloudIntegrationsV1alphaIntegrationParameterDataType>? dataType;
  /// Default values for the defined keys. Each value can either be string, int, double or any proto message or a serialized object.
  final pulumi.Input<GoogleCloudIntegrationsV1alphaValueType>? defaultValue;
  /// The name (without prefix) to be displayed in the UI for this parameter. E.g. if the key is "foo.bar.myName", then the name would be "myName".
  final pulumi.Input<String>? displayName;
  /// Specifies the input/output type for the parameter.
  final pulumi.Input<GoogleCloudIntegrationsV1alphaIntegrationParameterInputOutputType>? inputOutputType;
  /// Whether this parameter is a transient parameter.
  final pulumi.Input<bool>? isTransient;
  /// This schema will be used to validate runtime JSON-typed values of this parameter.
  final pulumi.Input<String>? jsonSchema;
  /// Key is used to retrieve the corresponding parameter value. This should be unique for a given fired event. These parameters must be predefined in the integration definition.
  final pulumi.Input<String>? key;
  /// The identifier of the node (TaskConfig/TriggerConfig) this parameter was produced by, if it is a transient param or a copy of an input param.
  final pulumi.Input<String>? producer;
  /// Searchable in the execution log or not.
  final pulumi.Input<bool>? searchable;

  /// Creates a new [GoogleCloudIntegrationsV1alphaIntegrationParameter].
  /// [dataType] Type of the parameter.
  /// [defaultValue] Default values for the defined keys. Each value can either be string, int, double or any proto message or a serialized object.
  /// [displayName] The name (without prefix) to be displayed in the UI for this parameter. E.g. if the key is "foo.bar.myName", then the name would be "myName".
  /// [inputOutputType] Specifies the input/output type for the parameter.
  /// [isTransient] Whether this parameter is a transient parameter.
  /// [jsonSchema] This schema will be used to validate runtime JSON-typed values of this parameter.
  /// [key] Key is used to retrieve the corresponding parameter value. This should be unique for a given fired event. These parameters must be predefined in the integration definition.
  /// [producer] The identifier of the node (TaskConfig/TriggerConfig) this parameter was produced by, if it is a transient param or a copy of an input param.
  /// [searchable] Searchable in the execution log or not.
  const GoogleCloudIntegrationsV1alphaIntegrationParameter({
    this.dataType,
    this.defaultValue,
    this.displayName,
    this.inputOutputType,
    this.isTransient,
    this.jsonSchema,
    this.key,
    this.producer,
    this.searchable,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataType': ?pulumi.Input.mapOptionalInputValue<GoogleCloudIntegrationsV1alphaIntegrationParameterDataType, String>(dataType, (value) => value.wireValue),
      'defaultValue': ?pulumi.Input.mapOptionalInputValue<GoogleCloudIntegrationsV1alphaValueType, Map<String, dynamic>>(defaultValue, (value) => value.toMap()),
      'displayName': ?displayName,
      'inputOutputType': ?pulumi.Input.mapOptionalInputValue<GoogleCloudIntegrationsV1alphaIntegrationParameterInputOutputType, String>(inputOutputType, (value) => value.wireValue),
      'isTransient': ?isTransient,
      'jsonSchema': ?jsonSchema,
      'key': ?key,
      'producer': ?producer,
      'searchable': ?searchable,
    };
  }

  factory GoogleCloudIntegrationsV1alphaIntegrationParameter.fromMap(Map<String, dynamic> map) {
    return GoogleCloudIntegrationsV1alphaIntegrationParameter(
      dataType: (() { final guardedValue = map['dataType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudIntegrationsV1alphaIntegrationParameterDataType.fromValue(guardedValue as String)); })(),
      defaultValue: (() { final guardedValue = map['defaultValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudIntegrationsV1alphaValueType.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      inputOutputType: (() { final guardedValue = map['inputOutputType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudIntegrationsV1alphaIntegrationParameterInputOutputType.fromValue(guardedValue as String)); })(),
      isTransient: (() { final guardedValue = map['isTransient']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      jsonSchema: (() { final guardedValue = map['jsonSchema']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      producer: (() { final guardedValue = map['producer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      searchable: (() { final guardedValue = map['searchable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
