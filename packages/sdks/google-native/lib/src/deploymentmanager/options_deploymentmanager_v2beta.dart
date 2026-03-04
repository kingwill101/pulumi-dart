// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'async_options_deploymentmanager_v2beta.dart';
import 'input_mapping_deploymentmanager_v2beta.dart';
import 'validation_options_deploymentmanager_v2beta.dart';

/// Options allows customized resource handling by Deployment Manager.
class OptionsDeploymentmanagerV2beta {
  /// Options regarding how to thread async requests.
  final pulumi.Input<List<AsyncOptionsDeploymentmanagerV2beta>>? asyncOptions;

  /// The mappings that apply for requests.
  final pulumi.Input<List<InputMappingDeploymentmanagerV2beta>>? inputMappings;

  /// Options for how to validate and process properties on a resource.
  final pulumi.Input<ValidationOptionsDeploymentmanagerV2beta>?
  validationOptions;

  /// Additional properties block described as a jsonSchema, these properties will never be part of the json payload, but they can be consumed by InputMappings, this must be a valid json schema draft-04. The properties specified here will be decouple in a different section. This schema will be merged to the schema validation, and properties here will be extracted From the payload and consumed explicitly by InputMappings. ex: field1: type: string field2: type: number
  final pulumi.Input<String>? virtualProperties;

  /// Creates a new [OptionsDeploymentmanagerV2beta].
  /// [asyncOptions] Options regarding how to thread async requests.
  /// [inputMappings] The mappings that apply for requests.
  /// [validationOptions] Options for how to validate and process properties on a resource.
  /// [virtualProperties] Additional properties block described as a jsonSchema, these properties will never be part of the json payload, but they can be consumed by InputMappings, this must be a valid json schema draft-04. The properties specified here will be decouple in a different section. This schema will be merged to the schema validation, and properties here will be extracted From the payload and consumed explicitly by InputMappings. ex: field1: type: string field2: type: number
  OptionsDeploymentmanagerV2beta({
    this.asyncOptions,
    this.inputMappings,
    this.validationOptions,
    this.virtualProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'asyncOptions':
          ?pulumi.Input.mapOptionalInputValue<
            List<AsyncOptionsDeploymentmanagerV2beta>,
            List<Map<String, dynamic>>
          >(
            asyncOptions,
            (value) =>
                pulumi.Input.encodeList<
                  AsyncOptionsDeploymentmanagerV2beta,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'inputMappings':
          ?pulumi.Input.mapOptionalInputValue<
            List<InputMappingDeploymentmanagerV2beta>,
            List<Map<String, dynamic>>
          >(
            inputMappings,
            (value) =>
                pulumi.Input.encodeList<
                  InputMappingDeploymentmanagerV2beta,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'validationOptions':
          ?pulumi.Input.mapOptionalInputValue<
            ValidationOptionsDeploymentmanagerV2beta,
            Map<String, dynamic>
          >(validationOptions, (value) => value.toMap()),
      'virtualProperties': ?virtualProperties,
    };
  }

  factory OptionsDeploymentmanagerV2beta.fromMap(Map<String, dynamic> map) {
    return OptionsDeploymentmanagerV2beta(
      asyncOptions: (() {
        final guardedValue = map['asyncOptions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<AsyncOptionsDeploymentmanagerV2beta>(
            guardedValue,
            (value) => AsyncOptionsDeploymentmanagerV2beta.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      inputMappings: (() {
        final guardedValue = map['inputMappings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<InputMappingDeploymentmanagerV2beta>(
            guardedValue,
            (value) => InputMappingDeploymentmanagerV2beta.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      validationOptions: (() {
        final guardedValue = map['validationOptions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ValidationOptionsDeploymentmanagerV2beta.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      virtualProperties: (() {
        final guardedValue = map['virtualProperties'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
