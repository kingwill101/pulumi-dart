// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'async_options_response.dart';
import 'input_mapping_response.dart';
import 'validation_options_response.dart';

/// Options allows customized resource handling by Deployment Manager.
class OptionsResponse {
  /// Options regarding how to thread async requests.
  final pulumi.Input<List<AsyncOptionsResponse>> asyncOptions;
  /// The mappings that apply for requests.
  final pulumi.Input<List<InputMappingResponse>> inputMappings;
  /// The json path to the field in the resource JSON body into which the resource name should be mapped. Leaving this empty indicates that there should be no mapping performed.
  final pulumi.Input<String> nameProperty;
  /// Options for how to validate and process properties on a resource.
  final pulumi.Input<ValidationOptionsResponse> validationOptions;

  /// Creates a new [OptionsResponse].
  /// [asyncOptions] Options regarding how to thread async requests.
  /// [inputMappings] The mappings that apply for requests.
  /// [nameProperty] The json path to the field in the resource JSON body into which the resource name should be mapped. Leaving this empty indicates that there should be no mapping performed.
  /// [validationOptions] Options for how to validate and process properties on a resource.
  const OptionsResponse({
    required this.asyncOptions,
    required this.inputMappings,
    required this.nameProperty,
    required this.validationOptions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'asyncOptions': pulumi.Input.mapInputValue<List<AsyncOptionsResponse>, List<Map<String, dynamic>>>(asyncOptions, (value) => pulumi.Input.encodeList<AsyncOptionsResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'inputMappings': pulumi.Input.mapInputValue<List<InputMappingResponse>, List<Map<String, dynamic>>>(inputMappings, (value) => pulumi.Input.encodeList<InputMappingResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'nameProperty': nameProperty,
      'validationOptions': pulumi.Input.mapInputValue<ValidationOptionsResponse, Map<String, dynamic>>(validationOptions, (value) => value.toMap()),
    };
  }

  factory OptionsResponse.fromMap(Map<String, dynamic> map) {
    return OptionsResponse(
      asyncOptions: pulumi.Input.fromValue(pulumi.Input.decodeList<AsyncOptionsResponse>(map['asyncOptions']!, (value) => AsyncOptionsResponse.fromMap((value as Map).cast<String, dynamic>()))),
      inputMappings: pulumi.Input.fromValue(pulumi.Input.decodeList<InputMappingResponse>(map['inputMappings']!, (value) => InputMappingResponse.fromMap((value as Map).cast<String, dynamic>()))),
      nameProperty: pulumi.Input.fromValue(map['nameProperty'] as String),
      validationOptions: pulumi.Input.fromValue(ValidationOptionsResponse.fromMap((map['validationOptions']! as Map).cast<String, dynamic>())),
    );
  }
}

