// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'async_options_response_deploymentmanager_v2beta.dart';
import 'input_mapping_response_deploymentmanager_v2beta.dart';
import 'validation_options_response_deploymentmanager_v2beta.dart';

/// Options allows customized resource handling by Deployment Manager.
class OptionsResponseDeploymentmanagerV2beta {
  /// Options regarding how to thread async requests.
  final pulumi.Input<List<AsyncOptionsResponseDeploymentmanagerV2beta>>
  asyncOptions;

  /// The mappings that apply for requests.
  final pulumi.Input<List<InputMappingResponseDeploymentmanagerV2beta>>
  inputMappings;

  /// Options for how to validate and process properties on a resource.
  final pulumi.Input<ValidationOptionsResponseDeploymentmanagerV2beta>
  validationOptions;

  /// Additional properties block described as a jsonSchema, these properties will never be part of the json payload, but they can be consumed by InputMappings, this must be a valid json schema draft-04. The properties specified here will be decouple in a different section. This schema will be merged to the schema validation, and properties here will be extracted From the payload and consumed explicitly by InputMappings. ex: field1: type: string field2: type: number
  final pulumi.Input<String> virtualProperties;

  /// Creates a new [OptionsResponseDeploymentmanagerV2beta].
  /// [asyncOptions] Options regarding how to thread async requests.
  /// [inputMappings] The mappings that apply for requests.
  /// [validationOptions] Options for how to validate and process properties on a resource.
  /// [virtualProperties] Additional properties block described as a jsonSchema, these properties will never be part of the json payload, but they can be consumed by InputMappings, this must be a valid json schema draft-04. The properties specified here will be decouple in a different section. This schema will be merged to the schema validation, and properties here will be extracted From the payload and consumed explicitly by InputMappings. ex: field1: type: string field2: type: number
  OptionsResponseDeploymentmanagerV2beta({
    required this.asyncOptions,
    required this.inputMappings,
    required this.validationOptions,
    required this.virtualProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'asyncOptions':
          pulumi.Input.mapInputValue<
            List<AsyncOptionsResponseDeploymentmanagerV2beta>,
            List<Map<String, dynamic>>
          >(
            asyncOptions,
            (value) =>
                pulumi.Input.encodeList<
                  AsyncOptionsResponseDeploymentmanagerV2beta,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'inputMappings':
          pulumi.Input.mapInputValue<
            List<InputMappingResponseDeploymentmanagerV2beta>,
            List<Map<String, dynamic>>
          >(
            inputMappings,
            (value) =>
                pulumi.Input.encodeList<
                  InputMappingResponseDeploymentmanagerV2beta,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'validationOptions':
          pulumi.Input.mapInputValue<
            ValidationOptionsResponseDeploymentmanagerV2beta,
            Map<String, dynamic>
          >(validationOptions, (value) => value.toMap()),
      'virtualProperties': virtualProperties,
    };
  }

  factory OptionsResponseDeploymentmanagerV2beta.fromMap(
    Map<String, dynamic> map,
  ) {
    return OptionsResponseDeploymentmanagerV2beta(
      asyncOptions: pulumi.Input.fromValue(
        pulumi.Input.decodeList<AsyncOptionsResponseDeploymentmanagerV2beta>(
          map['asyncOptions']!,
          (value) => AsyncOptionsResponseDeploymentmanagerV2beta.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      inputMappings: pulumi.Input.fromValue(
        pulumi.Input.decodeList<InputMappingResponseDeploymentmanagerV2beta>(
          map['inputMappings']!,
          (value) => InputMappingResponseDeploymentmanagerV2beta.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      validationOptions: pulumi.Input.fromValue(
        ValidationOptionsResponseDeploymentmanagerV2beta.fromMap(
          (map['validationOptions']! as Map).cast<String, dynamic>(),
        ),
      ),
      virtualProperties: pulumi.Input.fromValue(
        map['virtualProperties'] as String,
      ),
    );
  }
}
