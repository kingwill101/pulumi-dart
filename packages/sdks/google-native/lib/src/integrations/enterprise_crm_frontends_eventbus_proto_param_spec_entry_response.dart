// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'enterprise_crm_eventbus_proto_param_spec_entry_config_response.dart';
import 'enterprise_crm_eventbus_proto_param_spec_entry_proto_definition_response.dart';
import 'enterprise_crm_eventbus_proto_param_spec_entry_validation_rule_response.dart';
import 'enterprise_crm_frontends_eventbus_proto_parameter_value_type_response.dart';

/// Key-value pair of EventBus task parameters. Next id: 13
class EnterpriseCrmFrontendsEventbusProtoParamSpecEntryResponse {
  /// The FQCN of the Java object this represents. A string, for example, would be "java.lang.String". If this is "java.lang.Object", the parameter can be of any type.
  final pulumi.Input<String> className;
  /// If it is a collection of objects, this would be the FCQN of every individual element in the collection. If this is "java.lang.Object", the parameter is a collection of any type.
  final pulumi.Input<String> collectionElementClassName;
  /// Optional fields, such as help text and other useful info.
  final pulumi.Input<EnterpriseCrmEventbusProtoParamSpecEntryConfigResponse> config;
  /// The data type of the parameter.
  final pulumi.Input<String> dataType;
  /// Default values for the defined keys. Each value can either be string, int, double or any proto message or a serialized object.
  final pulumi.Input<EnterpriseCrmFrontendsEventbusProtoParameterValueTypeResponse> defaultValue;
  /// If set, this entry is deprecated, so further use of this parameter should be prohibited.
  final pulumi.Input<bool> isDeprecated;
  final pulumi.Input<bool> isOutput;
  /// If the data_type is JSON_VALUE, then this will define its schema.
  final pulumi.Input<String> jsonSchema;
  /// Key is used to retrieve the corresponding parameter value. This should be unique for a given task. These parameters must be predefined in the workflow definition.
  final pulumi.Input<String> key;
  /// Populated if this represents a proto or proto array.
  final pulumi.Input<EnterpriseCrmEventbusProtoParamSpecEntryProtoDefinitionResponse> protoDef;
  /// If set, the user must provide an input value for this parameter.
  final pulumi.Input<bool> required;
  /// Rule used to validate inputs (individual values and collection elements) for this parameter.
  final pulumi.Input<EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleResponse> validationRule;

  /// Creates a new [EnterpriseCrmFrontendsEventbusProtoParamSpecEntryResponse].
  /// [className] The FQCN of the Java object this represents. A string, for example, would be "java.lang.String". If this is "java.lang.Object", the parameter can be of any type.
  /// [collectionElementClassName] If it is a collection of objects, this would be the FCQN of every individual element in the collection. If this is "java.lang.Object", the parameter is a collection of any type.
  /// [config] Optional fields, such as help text and other useful info.
  /// [dataType] The data type of the parameter.
  /// [defaultValue] Default values for the defined keys. Each value can either be string, int, double or any proto message or a serialized object.
  /// [isDeprecated] If set, this entry is deprecated, so further use of this parameter should be prohibited.
  /// [isOutput] Required.
  /// [jsonSchema] If the data_type is JSON_VALUE, then this will define its schema.
  /// [key] Key is used to retrieve the corresponding parameter value. This should be unique for a given task. These parameters must be predefined in the workflow definition.
  /// [protoDef] Populated if this represents a proto or proto array.
  /// [required] If set, the user must provide an input value for this parameter.
  /// [validationRule] Rule used to validate inputs (individual values and collection elements) for this parameter.
  const EnterpriseCrmFrontendsEventbusProtoParamSpecEntryResponse({
    required this.className,
    required this.collectionElementClassName,
    required this.config,
    required this.dataType,
    required this.defaultValue,
    required this.isDeprecated,
    required this.isOutput,
    required this.jsonSchema,
    required this.key,
    required this.protoDef,
    required this.required,
    required this.validationRule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'className': className,
      'collectionElementClassName': collectionElementClassName,
      'config': pulumi.Input.mapInputValue<EnterpriseCrmEventbusProtoParamSpecEntryConfigResponse, Map<String, dynamic>>(config, (value) => value.toMap()),
      'dataType': dataType,
      'defaultValue': pulumi.Input.mapInputValue<EnterpriseCrmFrontendsEventbusProtoParameterValueTypeResponse, Map<String, dynamic>>(defaultValue, (value) => value.toMap()),
      'isDeprecated': isDeprecated,
      'isOutput': isOutput,
      'jsonSchema': jsonSchema,
      'key': key,
      'protoDef': pulumi.Input.mapInputValue<EnterpriseCrmEventbusProtoParamSpecEntryProtoDefinitionResponse, Map<String, dynamic>>(protoDef, (value) => value.toMap()),
      'required': required,
      'validationRule': pulumi.Input.mapInputValue<EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleResponse, Map<String, dynamic>>(validationRule, (value) => value.toMap()),
    };
  }

  factory EnterpriseCrmFrontendsEventbusProtoParamSpecEntryResponse.fromMap(Map<String, dynamic> map) {
    return EnterpriseCrmFrontendsEventbusProtoParamSpecEntryResponse(
      className: pulumi.Input.fromValue(map['className'] as String),
      collectionElementClassName: pulumi.Input.fromValue(map['collectionElementClassName'] as String),
      config: pulumi.Input.fromValue(EnterpriseCrmEventbusProtoParamSpecEntryConfigResponse.fromMap((map['config']! as Map).cast<String, dynamic>())),
      dataType: pulumi.Input.fromValue(map['dataType'] as String),
      defaultValue: pulumi.Input.fromValue(EnterpriseCrmFrontendsEventbusProtoParameterValueTypeResponse.fromMap((map['defaultValue']! as Map).cast<String, dynamic>())),
      isDeprecated: pulumi.Input.fromValue(map['isDeprecated'] as bool),
      isOutput: pulumi.Input.fromValue(map['isOutput'] as bool),
      jsonSchema: pulumi.Input.fromValue(map['jsonSchema'] as String),
      key: pulumi.Input.fromValue(map['key'] as String),
      protoDef: pulumi.Input.fromValue(EnterpriseCrmEventbusProtoParamSpecEntryProtoDefinitionResponse.fromMap((map['protoDef']! as Map).cast<String, dynamic>())),
      required: pulumi.Input.fromValue(map['required'] as bool),
      validationRule: pulumi.Input.fromValue(EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleResponse.fromMap((map['validationRule']! as Map).cast<String, dynamic>())),
    );
  }
}
