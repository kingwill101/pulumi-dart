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
      allowEmptyType: map['allowEmptyType'] == null ? null : (map['allowEmptyType']! as bool).input(),
      allowRepeatedParameterName: map['allowRepeatedParameterName'] == null ? null : (map['allowRepeatedParameterName']! as bool).input(),
      attackSignaturesCheck: map['attackSignaturesCheck'] == null ? null : (map['attackSignaturesCheck']! as bool).input(),
      checkMaxValueLength: map['checkMaxValueLength'] == null ? null : (map['checkMaxValueLength']! as bool).input(),
      checkMinValueLength: map['checkMinValueLength'] == null ? null : (map['checkMinValueLength']! as bool).input(),
      dataType: map['dataType'] == null ? null : (map['dataType']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      enableRegularExpression: map['enableRegularExpression'] == null ? null : (map['enableRegularExpression']! as bool).input(),
      isBase64: map['isBase64'] == null ? null : (map['isBase64']! as bool).input(),
      isCookie: map['isCookie'] == null ? null : (map['isCookie']! as bool).input(),
      isHeader: map['isHeader'] == null ? null : (map['isHeader']! as bool).input(),
      json: map['json'] == null ? null : (map['json']! as String).input(),
      level: map['level'] == null ? null : (map['level']! as String).input(),
      mandatory: map['mandatory'] == null ? null : (map['mandatory']! as bool).input(),
      maxValueLength: map['maxValueLength'] == null ? null : (map['maxValueLength']! as int).input(),
      metacharsOnParameterValueCheck: map['metacharsOnParameterValueCheck'] == null ? null : (map['metacharsOnParameterValueCheck']! as bool).input(),
      minValueLength: map['minValueLength'] == null ? null : (map['minValueLength']! as int).input(),
      name: (map['name'] as String).input(),
      parameterLocation: map['parameterLocation'] == null ? null : (map['parameterLocation']! as String).input(),
      performStaging: map['performStaging'] == null ? null : (map['performStaging']! as bool).input(),
      sensitiveParameter: map['sensitiveParameter'] == null ? null : (map['sensitiveParameter']! as bool).input(),
      signatureOverridesDisables: map['signatureOverridesDisables'] == null ? null : ((map['signatureOverridesDisables']! as List).cast<int>()).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
      url: map['url'] == null ? null : (GetWafEntityParameterUrl.fromMap((map['url']! as Map).cast<String, dynamic>())).input(),
      valueType: map['valueType'] == null ? null : (map['valueType']! as String).input(),
    );
  }
}

