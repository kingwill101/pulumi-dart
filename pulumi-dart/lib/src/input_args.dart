import 'dart:async';
import 'dart:convert';

import 'package:pulumi/src/output.dart';

import 'input.dart';

/// {@template pulumi.input_args.summary}
/// Base class for strongly-typed argument objects that serialize to Pulumi maps.
///
/// Generated provider SDK argument classes can extend this type to centralize
/// field metadata and serialization behavior.
/// {@endtemplate}
///
abstract class InputArgs {
  Map<String, InputInfo> get inputInfos;

  InputArgs();

  /// Validates an argument member before serialization.
  void validateMember(Type memberType, String fullName) {
    // Implement any necessary validation here
  }

  /// Converts this argument object to a plain dictionary.
  Future<Map<String, dynamic>> toDictionary() async {
    var result = <String, dynamic>{};
    for (var entry in inputInfos.entries) {
      var info = entry.value;
      var fullName = '$runtimeType.${info.memberName}';
      var value = info.getValue(this);

      if (info.attribute.isRequired && value == null) {
        throw ArgumentError('$fullName is required but was not given a value');
      }

      if (value != null) {
        if (info.attribute.json) {
          value = await convertToJson(fullName, value);
        }
        result[info.attribute.name] = value;
      }
    }
    return result;
  }

  /// Converts input values into JSON-encoded string inputs.
  Future<Input<String>?> convertToJson(String context, dynamic input) async {
    if (input == null) return null;

    Future<dynamic> serialize(dynamic value) async {
      if (value is List) {
        return Future.wait(value.map((item) => serialize(item)));
      } else if (value is Map) {
        var serializedMap = {};
        for (var entry in value.entries) {
          serializedMap[entry.key] = await serialize(entry.value);
        }
        return serializedMap;
      } else if (value is bool || value is num || value is String) {
        return value;
      } else if (value is Output) {
        var data = await value.getData();
        return serialize(data.value);
      } else {
        throw ArgumentError(
          'Unsupported type for JSON serialization: ${value.runtimeType}',
        );
      }
    }

    if (input is Input) {
      var output = input.toOutput();
      return Input.fromOutput(
        output.apply((value) async {
          var serialized = await serialize(value);
          return jsonEncode(serialized);
        }),
      );
    } else {
      var serialized = await serialize(input);
      return Input.fromValue(jsonEncode(serialized));
    }
  }
}

/// Metadata describing one argument field.
class InputInfo {
  /// Field serialization attributes.
  final InputInfoArg attribute;

  /// Dart member name.
  final String memberName;

  /// Dart member type.
  final Type memberType;

  /// Extractor function from instance -> member value.
  final dynamic Function(dynamic) getValue;

  InputInfo(this.attribute, this.memberName, this.memberType, this.getValue);
}

/// Field-level serialization attributes for [InputInfo].
class InputInfoArg {
  /// Serialized property name.
  final String name;

  /// Whether the property is required.
  final bool isRequired;

  /// Whether the property should be JSON-encoded.
  final bool json;

  const InputInfoArg({
    required this.name,
    this.isRequired = false,
    this.json = false,
  });
}
