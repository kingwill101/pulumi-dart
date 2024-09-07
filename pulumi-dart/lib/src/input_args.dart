import 'dart:async';
import 'dart:convert';

import 'package:pulumi_dart/src/output.dart';

import 'input.dart';

abstract class InputArgs {
  Map<String, InputInfo> get inputInfos;

  InputArgs();

  void validateMember(Type memberType, String fullName) {
    // Implement any necessary validation here
  }

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

  Future<Input<String>?> convertToJson(String context, dynamic input) async {
    if (input == null) return null;

    Future<String> serialize(dynamic value) async {
      if (value is List) {
        var serializedList = await Future.wait(value.map((item) => serialize(item)));
        return jsonEncode(serializedList);
      } else if (value is Map) {
        var serializedMap = {};
        for (var entry in value.entries) {
          serializedMap[entry.key] = await serialize(entry.value);
        }
        return jsonEncode(serializedMap);
      } else if (value is bool || value is num || value is String) {
        return jsonEncode(value);
      } else if (value is Output) {
        var data = await value.getData();
        return serialize(data.value);
      } else {
        throw ArgumentError('Unsupported type for JSON serialization: ${value.runtimeType}');
      }
    }

    if (input is Input) {
      var output = input.toOutput();
      return Input.fromOutput(output.apply((value) async {
        var serialized = await serialize(value);
        return serialized;
      }));
    } else {
      var serialized = await serialize(input);
      return Input.fromValue(serialized);
    }
  }
}

class InputInfo {
  final InputInfoArg attribute;
  final String memberName;
  final Type memberType;
  final dynamic Function(dynamic) getValue;

  InputInfo(this.attribute, this.memberName, this.memberType, this.getValue);
}

class InputInfoArg {
  final String name;
  final bool isRequired;
  final bool json;

  const InputInfoArg(
      {required this.name, this.isRequired = false, this.json = false});
}
