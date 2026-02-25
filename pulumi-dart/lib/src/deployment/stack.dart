import 'dart:async';

import 'package:protobuf/well_known_types/google/protobuf/struct.pb.dart';

import '../constants.dart';
import '../output.dart';
import '../resource/component_resource.dart';
import '../resource/resource.dart';
import '../struct_converter.dart';
import '../resource/resource_transformation.dart';
import 'deployment.dart';

abstract class Stack extends ComponentResource {
  static Resource? root;

  static const String rootPulumiStackTypeName = 'pulumi:pulumi:Stack';

  late final Map<String, Object?> outputs;

  Stack([StackOptions? options])
    : super(
        rootPulumiStackTypeName,
        '${DeploymentImpl.instance.projectName}-${DeploymentImpl.instance.stackName}',
        null,
        _convertOptions(options),
      ) {
    DeploymentImpl.instance.setStack(this);
  }

  void registerPropertyOutputs() {
    final outputProperties = <String, Object?>{};
    final nullProperties = <String>[];
    final wrongTypeProperties = <String>[];

    for (var property in getOutputProperties()) {
      final name = property.name;
      final value = property.value;
      outputProperties[name] = value;
    }

    if (nullProperties.isNotEmpty) {
      throw StackException(
        "Output(s) '${nullProperties.join(', ')}' have no value assigned. [Output] attributed properties must be assigned inside Stack constructor.",
      );
    }

    if (wrongTypeProperties.isNotEmpty) {
      throw StackException.outputsHaveIncorrectType(wrongTypeProperties);
    }

    outputs = outputProperties;
    registerOutputs(outputProperties.cast<String, dynamic>());
  }

  List<OutputProperty> getOutputProperties() {
    // This method should be overridden in subclasses to return a list of OutputProperty
    // instances representing the Stack's output properties.
    return [];
  }

  Future<Value> serializeOutputValue(OutputData outputData) async {
    if (!outputData.isKnown) {
      return Value()..stringValue = Constants.unknownValue;
    }

    final inner = await StructConverter.toValue(outputData.value);
    if (!outputData.isSecret) {
      return inner;
    }

    final secret = Struct()
      ..fields[Constants.specialSigKey] = (Value()
        ..stringValue = Constants.specialSecretSig)
      ..fields[Constants.valueName] = inner;
    return Value()..structValue = secret;
  }

  static ComponentResourceOptions? _convertOptions(StackOptions? options) {
    if (options == null) return null;

    return ComponentResourceOptions(
      resourceTransformations: options.resourceTransformations,
      resourceTransforms: options.resourceTransforms,
    );
  }
}

class StackOptions {
  final List<ResourceTransformation>? resourceTransformations;
  final List<ResourceTransform>? resourceTransforms;

  StackOptions({this.resourceTransformations, this.resourceTransforms});
}

class OutputProperty {
  final String name;
  final Output<Object?> value;

  OutputProperty(this.name, this.value);
}

class StackException implements Exception {
  final String message;

  StackException(this.message);

  factory StackException.outputsHaveIncorrectType(List<String> propertyNames) {
    return StackException(
      "Output(s) '${propertyNames.join(', ')}' must be of type Output<T>.",
    );
  }

  @override
  String toString() => 'StackException: $message';
}
