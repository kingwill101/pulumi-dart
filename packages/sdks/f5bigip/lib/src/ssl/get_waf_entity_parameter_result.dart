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
  GetWafEntityParameterResult({
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
      'url': ?url == null ? null : url!.toMap(),
      'valueType': ?valueType,
    };
  }

  factory GetWafEntityParameterResult.fromMap(Map<String, dynamic> map) {
    return GetWafEntityParameterResult(
      allowEmptyType: map['allowEmptyType'] == null ? null : map['allowEmptyType'] as bool,
      allowRepeatedParameterName: map['allowRepeatedParameterName'] == null ? null : map['allowRepeatedParameterName'] as bool,
      attackSignaturesCheck: map['attackSignaturesCheck'] == null ? null : map['attackSignaturesCheck'] as bool,
      checkMaxValueLength: map['checkMaxValueLength'] == null ? null : map['checkMaxValueLength'] as bool,
      checkMinValueLength: map['checkMinValueLength'] == null ? null : map['checkMinValueLength'] as bool,
      dataType: map['dataType'] == null ? null : map['dataType'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      enableRegularExpression: map['enableRegularExpression'] == null ? null : map['enableRegularExpression'] as bool,
      id: map['id'] as String,
      isBase64: map['isBase64'] == null ? null : map['isBase64'] as bool,
      isCookie: map['isCookie'] == null ? null : map['isCookie'] as bool,
      isHeader: map['isHeader'] == null ? null : map['isHeader'] as bool,
      json: map['json'] as String,
      level: map['level'] == null ? null : map['level'] as String,
      mandatory: map['mandatory'] == null ? null : map['mandatory'] as bool,
      maxValueLength: map['maxValueLength'] == null ? null : map['maxValueLength'] as int,
      metacharsOnParameterValueCheck: map['metacharsOnParameterValueCheck'] == null ? null : map['metacharsOnParameterValueCheck'] as bool,
      minValueLength: map['minValueLength'] == null ? null : map['minValueLength'] as int,
      name: map['name'] as String,
      parameterLocation: map['parameterLocation'] == null ? null : map['parameterLocation'] as String,
      performStaging: map['performStaging'] == null ? null : map['performStaging'] as bool,
      sensitiveParameter: map['sensitiveParameter'] == null ? null : map['sensitiveParameter'] as bool,
      signatureOverridesDisables: map['signatureOverridesDisables'] == null ? null : (map['signatureOverridesDisables'] as List).cast<int>(),
      type: map['type'] == null ? null : map['type'] as String,
      url: map['url'] == null ? null : GetWafEntityParameterUrl.fromMap((map['url'] as Map).cast<String, dynamic>()),
      valueType: map['valueType'] == null ? null : map['valueType'] as String,
    );
  }
}

