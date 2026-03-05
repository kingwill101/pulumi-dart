// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_waf_entity_parameter_url.dart';

/// {@template pulumi_ssl_get_waf_entity_parameter_get_waf_entity_parameter_args_doc}
/// Arguments for getWafEntityParameter.
/// {@endtemplate}
/// {@macro pulumi_ssl_get_waf_entity_parameter_get_waf_entity_parameter_args_doc}
class GetWafEntityParameterArgs {
  final pulumi.Input<bool>? allowEmptyType;
  final pulumi.Input<bool>? allowRepeatedParameterName;
  final pulumi.Input<bool>? attackSignaturesCheck;
  final pulumi.Input<bool>? checkMaxValueLength;
  final pulumi.Input<bool>? checkMinValueLength;
  final pulumi.Input<String>? dataType;
  final pulumi.Input<String>? description;
  final pulumi.Input<bool>? enableRegularExpression;
  final pulumi.Input<bool>? isBase64;
  final pulumi.Input<bool>? isCookie;
  final pulumi.Input<bool>? isHeader;
  final pulumi.Input<String>? json;
  final pulumi.Input<String>? level;
  final pulumi.Input<bool>? mandatory;
  final pulumi.Input<int>? maxValueLength;
  final pulumi.Input<bool>? metacharsOnParameterValueCheck;
  final pulumi.Input<int>? minValueLength;
  final pulumi.Input<String> name;
  final pulumi.Input<String>? parameterLocation;
  final pulumi.Input<bool>? performStaging;
  final pulumi.Input<bool>? sensitiveParameter;
  final pulumi.Input<List<int>>? signatureOverridesDisables;
  final pulumi.Input<String>? type;
  final pulumi.Input<GetWafEntityParameterUrl>? url;
  final pulumi.Input<String>? valueType;

  /// Creates a new [GetWafEntityParameterArgs].
  /// [allowEmptyType] Optional.
  /// [allowRepeatedParameterName] Optional.
  /// [attackSignaturesCheck] Optional.
  /// [checkMaxValueLength] Optional.
  /// [checkMinValueLength] Optional.
  /// [dataType] Optional.
  /// [description] Optional.
  /// [enableRegularExpression] Optional.
  /// [isBase64] Optional.
  /// [isCookie] Optional.
  /// [isHeader] Optional.
  /// [json] Optional.
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
  GetWafEntityParameterArgs({
    this.allowEmptyType,
    this.allowRepeatedParameterName,
    this.attackSignaturesCheck,
    this.checkMaxValueLength,
    this.checkMinValueLength,
    this.dataType,
    this.description,
    this.enableRegularExpression,
    this.isBase64,
    this.isCookie,
    this.isHeader,
    this.json,
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
      'isBase64': ?isBase64,
      'isCookie': ?isCookie,
      'isHeader': ?isHeader,
      'json': ?json,
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
      'url': ?pulumi.Input.mapOptionalInputValue<GetWafEntityParameterUrl, Map<String, dynamic>>(url, (value) => value.toMap()),
      'valueType': ?valueType,
    };
  }

  factory GetWafEntityParameterArgs.fromMap(Map<String, dynamic> map) {
    return GetWafEntityParameterArgs(
      allowEmptyType: (() { final guardedValue = map['allowEmptyType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      allowRepeatedParameterName: (() { final guardedValue = map['allowRepeatedParameterName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      attackSignaturesCheck: (() { final guardedValue = map['attackSignaturesCheck']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      checkMaxValueLength: (() { final guardedValue = map['checkMaxValueLength']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      checkMinValueLength: (() { final guardedValue = map['checkMinValueLength']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      dataType: (() { final guardedValue = map['dataType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enableRegularExpression: (() { final guardedValue = map['enableRegularExpression']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isBase64: (() { final guardedValue = map['isBase64']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isCookie: (() { final guardedValue = map['isCookie']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isHeader: (() { final guardedValue = map['isHeader']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      json: (() { final guardedValue = map['json']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      level: (() { final guardedValue = map['level']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mandatory: (() { final guardedValue = map['mandatory']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      maxValueLength: (() { final guardedValue = map['maxValueLength']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      metacharsOnParameterValueCheck: (() { final guardedValue = map['metacharsOnParameterValueCheck']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      minValueLength: (() { final guardedValue = map['minValueLength']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      parameterLocation: (() { final guardedValue = map['parameterLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      performStaging: (() { final guardedValue = map['performStaging']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      sensitiveParameter: (() { final guardedValue = map['sensitiveParameter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      signatureOverridesDisables: (() { final guardedValue = map['signatureOverridesDisables']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<int>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      url: (() { final guardedValue = map['url']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetWafEntityParameterUrl.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      valueType: (() { final guardedValue = map['valueType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

