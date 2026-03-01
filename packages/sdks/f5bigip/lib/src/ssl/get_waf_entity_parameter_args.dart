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
    pulumi.Output<bool>? allowEmptyType,
    pulumi.Output<bool>? allowRepeatedParameterName,
    pulumi.Output<bool>? attackSignaturesCheck,
    pulumi.Output<bool>? checkMaxValueLength,
    pulumi.Output<bool>? checkMinValueLength,
    pulumi.Output<String>? dataType,
    pulumi.Output<String>? description,
    pulumi.Output<bool>? enableRegularExpression,
    pulumi.Output<bool>? isBase64,
    pulumi.Output<bool>? isCookie,
    pulumi.Output<bool>? isHeader,
    pulumi.Output<String>? json,
    pulumi.Output<String>? level,
    pulumi.Output<bool>? mandatory,
    pulumi.Output<int>? maxValueLength,
    pulumi.Output<bool>? metacharsOnParameterValueCheck,
    pulumi.Output<int>? minValueLength,
    required pulumi.Output<String> name,
    pulumi.Output<String>? parameterLocation,
    pulumi.Output<bool>? performStaging,
    pulumi.Output<bool>? sensitiveParameter,
    pulumi.Output<List<int>>? signatureOverridesDisables,
    pulumi.Output<String>? type,
    pulumi.Output<GetWafEntityParameterUrl>? url,
    pulumi.Output<String>? valueType,
  }) :
      allowEmptyType = pulumi.Input.asOptionalInput<bool>(allowEmptyType),
      allowRepeatedParameterName = pulumi.Input.asOptionalInput<bool>(allowRepeatedParameterName),
      attackSignaturesCheck = pulumi.Input.asOptionalInput<bool>(attackSignaturesCheck),
      checkMaxValueLength = pulumi.Input.asOptionalInput<bool>(checkMaxValueLength),
      checkMinValueLength = pulumi.Input.asOptionalInput<bool>(checkMinValueLength),
      dataType = pulumi.Input.asOptionalInput<String>(dataType),
      description = pulumi.Input.asOptionalInput<String>(description),
      enableRegularExpression = pulumi.Input.asOptionalInput<bool>(enableRegularExpression),
      isBase64 = pulumi.Input.asOptionalInput<bool>(isBase64),
      isCookie = pulumi.Input.asOptionalInput<bool>(isCookie),
      isHeader = pulumi.Input.asOptionalInput<bool>(isHeader),
      json = pulumi.Input.asOptionalInput<String>(json),
      level = pulumi.Input.asOptionalInput<String>(level),
      mandatory = pulumi.Input.asOptionalInput<bool>(mandatory),
      maxValueLength = pulumi.Input.asOptionalInput<int>(maxValueLength),
      metacharsOnParameterValueCheck = pulumi.Input.asOptionalInput<bool>(metacharsOnParameterValueCheck),
      minValueLength = pulumi.Input.asOptionalInput<int>(minValueLength),
      name = pulumi.Input.asInput<String>(name),
      parameterLocation = pulumi.Input.asOptionalInput<String>(parameterLocation),
      performStaging = pulumi.Input.asOptionalInput<bool>(performStaging),
      sensitiveParameter = pulumi.Input.asOptionalInput<bool>(sensitiveParameter),
      signatureOverridesDisables = pulumi.Input.asOptionalInput<List<int>>(signatureOverridesDisables),
      type = pulumi.Input.asOptionalInput<String>(type),
      url = pulumi.Input.asOptionalInput<GetWafEntityParameterUrl>(url),
      valueType = pulumi.Input.asOptionalInput<String>(valueType);

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
      allowEmptyType: map['allowEmptyType'] == null ? null : pulumi.Output.create<bool>(map['allowEmptyType'] as bool),
      allowRepeatedParameterName: map['allowRepeatedParameterName'] == null ? null : pulumi.Output.create<bool>(map['allowRepeatedParameterName'] as bool),
      attackSignaturesCheck: map['attackSignaturesCheck'] == null ? null : pulumi.Output.create<bool>(map['attackSignaturesCheck'] as bool),
      checkMaxValueLength: map['checkMaxValueLength'] == null ? null : pulumi.Output.create<bool>(map['checkMaxValueLength'] as bool),
      checkMinValueLength: map['checkMinValueLength'] == null ? null : pulumi.Output.create<bool>(map['checkMinValueLength'] as bool),
      dataType: map['dataType'] == null ? null : pulumi.Output.create<String>(map['dataType'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      enableRegularExpression: map['enableRegularExpression'] == null ? null : pulumi.Output.create<bool>(map['enableRegularExpression'] as bool),
      isBase64: map['isBase64'] == null ? null : pulumi.Output.create<bool>(map['isBase64'] as bool),
      isCookie: map['isCookie'] == null ? null : pulumi.Output.create<bool>(map['isCookie'] as bool),
      isHeader: map['isHeader'] == null ? null : pulumi.Output.create<bool>(map['isHeader'] as bool),
      json: map['json'] == null ? null : pulumi.Output.create<String>(map['json'] as String),
      level: map['level'] == null ? null : pulumi.Output.create<String>(map['level'] as String),
      mandatory: map['mandatory'] == null ? null : pulumi.Output.create<bool>(map['mandatory'] as bool),
      maxValueLength: map['maxValueLength'] == null ? null : pulumi.Output.create<int>(map['maxValueLength'] as int),
      metacharsOnParameterValueCheck: map['metacharsOnParameterValueCheck'] == null ? null : pulumi.Output.create<bool>(map['metacharsOnParameterValueCheck'] as bool),
      minValueLength: map['minValueLength'] == null ? null : pulumi.Output.create<int>(map['minValueLength'] as int),
      name: pulumi.Output.create<String>(map['name'] as String),
      parameterLocation: map['parameterLocation'] == null ? null : pulumi.Output.create<String>(map['parameterLocation'] as String),
      performStaging: map['performStaging'] == null ? null : pulumi.Output.create<bool>(map['performStaging'] as bool),
      sensitiveParameter: map['sensitiveParameter'] == null ? null : pulumi.Output.create<bool>(map['sensitiveParameter'] as bool),
      signatureOverridesDisables: map['signatureOverridesDisables'] == null ? null : pulumi.Output.create<List<int>>((map['signatureOverridesDisables'] as List).cast<int>()),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
      url: map['url'] == null ? null : pulumi.Output.create<GetWafEntityParameterUrl>(GetWafEntityParameterUrl.fromMap((map['url'] as Map).cast<String, dynamic>())),
      valueType: map['valueType'] == null ? null : pulumi.Output.create<String>(map['valueType'] as String),
    );
  }
}

