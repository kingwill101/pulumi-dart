// ignore_for_file: unused_element, unnecessary_cast

import 'get_waf_entity_parameter_url.dart';

/// Result data returned by getWafEntityParameter.
class GetWafEntityParameterResult {
  final bool? allowEmptyType;
  final bool? allowRepeatedParameterName;
  final bool? attackSignaturesCheck;
  final bool? checkMaxValueLength;
  final bool? checkMinValueLength;
  final String? dataType;
  final String? description;
  final bool? enableRegularExpression;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final bool? isBase64;
  final bool? isCookie;
  final bool? isHeader;
  final String json;
  final String? level;
  final bool? mandatory;
  final int? maxValueLength;
  final bool? metacharsOnParameterValueCheck;
  final int? minValueLength;
  final String name;
  final String? parameterLocation;
  final bool? performStaging;
  final bool? sensitiveParameter;
  final List<int>? signatureOverridesDisables;
  final String? type;
  final GetWafEntityParameterUrl? url;
  final String? valueType;

  /// Creates a new [GetWafEntityParameterResult].
  /// [allowEmptyType] Optional.
  /// [allowRepeatedParameterName] Optional.
  /// [attackSignaturesCheck] Optional.
  /// [checkMaxValueLength] Optional.
  /// [checkMinValueLength] Optional.
  /// [dataType] Optional.
  /// [description] Optional.
  /// [enableRegularExpression] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [isBase64] Optional.
  /// [isCookie] Optional.
  /// [isHeader] Optional.
  /// [json] Required.
  /// [level] Optional.
  /// [mandatory] Optional.
  /// [maxValueLength] Optional.
  /// [metacharsOnParameterValueCheck] Optional.
  /// [minValueLength] Optional.
  /// [name] Required.
  /// [parameterLocation] Optional.
  /// [performStaging] Optional.
  /// [sensitiveParameter] Optional.
  /// [signatureOverridesDisables] Optional.
  /// [type] Optional.
  /// [url] Optional.
  /// [valueType] Optional.
  const GetWafEntityParameterResult({
    this.allowEmptyType,
    this.allowRepeatedParameterName,
    this.attackSignaturesCheck,
    this.checkMaxValueLength,
    this.checkMinValueLength,
    this.dataType,
    this.description,
    this.enableRegularExpression,
    required this.id,
    this.isBase64,
    this.isCookie,
    this.isHeader,
    required this.json,
    this.level,
    this.mandatory,
    this.maxValueLength,
    this.metacharsOnParameterValueCheck,
    this.minValueLength,
    required this.name,
    this.parameterLocation,
    this.performStaging,
    this.sensitiveParameter,
    this.signatureOverridesDisables,
    this.type,
    this.url,
    this.valueType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowEmptyType': ?allowEmptyType,
      'allowRepeatedParameterName': ?allowRepeatedParameterName,
      'attackSignaturesCheck': ?attackSignaturesCheck,
      'checkMaxValueLength': ?checkMaxValueLength,
      'checkMinValueLength': ?checkMinValueLength,
      'dataType': ?dataType,
      'description': ?description,
      'enableRegularExpression': ?enableRegularExpression,
      'id': id,
      'isBase64': ?isBase64,
      'isCookie': ?isCookie,
      'isHeader': ?isHeader,
      'json': json,
      'level': ?level,
      'mandatory': ?mandatory,
      'maxValueLength': ?maxValueLength,
      'metacharsOnParameterValueCheck': ?metacharsOnParameterValueCheck,
      'minValueLength': ?minValueLength,
      'name': name,
      'parameterLocation': ?parameterLocation,
      'performStaging': ?performStaging,
      'sensitiveParameter': ?sensitiveParameter,
      'signatureOverridesDisables': ?signatureOverridesDisables,
      'type': ?type,
      'url': ?url?.toMap(),
      'valueType': ?valueType,
    };
  }

  factory GetWafEntityParameterResult.fromMap(Map<String, dynamic> map) {
    return GetWafEntityParameterResult(
      allowEmptyType: (() { final guardedValue = map['allowEmptyType']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      allowRepeatedParameterName: (() { final guardedValue = map['allowRepeatedParameterName']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      attackSignaturesCheck: (() { final guardedValue = map['attackSignaturesCheck']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      checkMaxValueLength: (() { final guardedValue = map['checkMaxValueLength']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      checkMinValueLength: (() { final guardedValue = map['checkMinValueLength']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      dataType: (() { final guardedValue = map['dataType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      enableRegularExpression: (() { final guardedValue = map['enableRegularExpression']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: map['id'] as String,
      isBase64: (() { final guardedValue = map['isBase64']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      isCookie: (() { final guardedValue = map['isCookie']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      isHeader: (() { final guardedValue = map['isHeader']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      json: map['json'] as String,
      level: (() { final guardedValue = map['level']; if (guardedValue == null) return null; return guardedValue as String; })(),
      mandatory: (() { final guardedValue = map['mandatory']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      maxValueLength: (() { final guardedValue = map['maxValueLength']; if (guardedValue == null) return null; return guardedValue as int; })(),
      metacharsOnParameterValueCheck: (() { final guardedValue = map['metacharsOnParameterValueCheck']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      minValueLength: (() { final guardedValue = map['minValueLength']; if (guardedValue == null) return null; return guardedValue as int; })(),
      name: map['name'] as String,
      parameterLocation: (() { final guardedValue = map['parameterLocation']; if (guardedValue == null) return null; return guardedValue as String; })(),
      performStaging: (() { final guardedValue = map['performStaging']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      sensitiveParameter: (() { final guardedValue = map['sensitiveParameter']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      signatureOverridesDisables: (() { final guardedValue = map['signatureOverridesDisables']; if (guardedValue == null) return null; return (guardedValue as List).cast<int>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      url: (() { final guardedValue = map['url']; if (guardedValue == null) return null; return GetWafEntityParameterUrl.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      valueType: (() { final guardedValue = map['valueType']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

