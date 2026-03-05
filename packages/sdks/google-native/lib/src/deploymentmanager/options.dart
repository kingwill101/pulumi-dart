// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'async_options.dart';
import 'input_mapping.dart';
import 'validation_options.dart';

/// Options allows customized resource handling by Deployment Manager.
class Options {
  /// Options regarding how to thread async requests.
  final pulumi.Input<List<AsyncOptions>>? asyncOptions;
  /// The mappings that apply for requests.
  final pulumi.Input<List<InputMapping>>? inputMappings;
  /// The json path to the field in the resource JSON body into which the resource name should be mapped. Leaving this empty indicates that there should be no mapping performed.
  final pulumi.Input<String>? nameProperty;
  /// Options for how to validate and process properties on a resource.
  final pulumi.Input<ValidationOptions>? validationOptions;

  /// Creates a new [Options].
  /// [asyncOptions] Options regarding how to thread async requests.
  /// [inputMappings] The mappings that apply for requests.
  /// [nameProperty] The json path to the field in the resource JSON body into which the resource name should be mapped. Leaving this empty indicates that there should be no mapping performed.
  /// [validationOptions] Options for how to validate and process properties on a resource.
  Options({
    this.asyncOptions,
    this.inputMappings,
    this.nameProperty,
    this.validationOptions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'asyncOptions': ?pulumi.Input.mapOptionalInputValue<List<AsyncOptions>, List<Map<String, dynamic>>>(asyncOptions, (value) => pulumi.Input.encodeList<AsyncOptions, Map<String, dynamic>>(value, (value) => value.toMap())),
      'inputMappings': ?pulumi.Input.mapOptionalInputValue<List<InputMapping>, List<Map<String, dynamic>>>(inputMappings, (value) => pulumi.Input.encodeList<InputMapping, Map<String, dynamic>>(value, (value) => value.toMap())),
      'nameProperty': ?nameProperty,
      'validationOptions': ?pulumi.Input.mapOptionalInputValue<ValidationOptions, Map<String, dynamic>>(validationOptions, (value) => value.toMap()),
    };
  }

  factory Options.fromMap(Map<String, dynamic> map) {
    return Options(
      asyncOptions: (() { final guardedValue = map['asyncOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AsyncOptions>(guardedValue, (value) => AsyncOptions.fromMap((value as Map).cast<String, dynamic>()))); })(),
      inputMappings: (() { final guardedValue = map['inputMappings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InputMapping>(guardedValue, (value) => InputMapping.fromMap((value as Map).cast<String, dynamic>()))); })(),
      nameProperty: (() { final guardedValue = map['nameProperty']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      validationOptions: (() { final guardedValue = map['validationOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ValidationOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

