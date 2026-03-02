// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'enterprise_crm_eventbus_proto_attributes_response.dart';
import 'enterprise_crm_eventbus_proto_node_identifier_response.dart';
import 'enterprise_crm_frontends_eventbus_proto_parameter_value_type_response.dart';

class EnterpriseCrmFrontendsEventbusProtoWorkflowParameterEntryResponse {
  /// Metadata information about the parameters.
  final pulumi.Input<EnterpriseCrmEventbusProtoAttributesResponse> attributes;
  /// Child parameters nested within this parameter. This field only applies to protobuf parameters
  final pulumi.Input<List<EnterpriseCrmFrontendsEventbusProtoWorkflowParameterEntryResponse>> children;
  /// The data type of the parameter.
  final pulumi.Input<String> dataType;
  /// Default values for the defined keys. Each value can either be string, int, double or any proto message or a serialized object.
  final pulumi.Input<EnterpriseCrmFrontendsEventbusProtoParameterValueTypeResponse> defaultValue;
  /// Optional. The description about the parameter
  final pulumi.Input<String> description;
  /// Specifies the input/output type for the parameter.
  final pulumi.Input<String> inOutType;
  /// Whether this parameter is a transient parameter.
  final pulumi.Input<bool> isTransient;
  /// This schema will be used to validate runtime JSON-typed values of this parameter.
  final pulumi.Input<String> jsonSchema;
  /// Key is used to retrieve the corresponding parameter value. This should be unique for a given fired event. These parameters must be predefined in the workflow definition.
  final pulumi.Input<String> key;
  /// The name (without prefix) to be displayed in the UI for this parameter. E.g. if the key is "foo.bar.myName", then the name would be "myName".
  final pulumi.Input<String> name;
  /// The identifier of the node (TaskConfig/TriggerConfig) this parameter was produced by, if it is a transient param or a copy of an input param.
  final pulumi.Input<EnterpriseCrmEventbusProtoNodeIdentifierResponse> producedBy;
  final pulumi.Input<String> producer;
  /// The name of the protobuf type if the parameter has a protobuf data type.
  final pulumi.Input<String> protoDefName;
  /// If the data type is of type proto or proto array, this field needs to be populated with the fully qualified proto name. This message, for example, would be "enterprise.crm.frontends.eventbus.proto.WorkflowParameterEntry".
  final pulumi.Input<String> protoDefPath;

  /// Creates a new [EnterpriseCrmFrontendsEventbusProtoWorkflowParameterEntryResponse].
  /// [attributes] Metadata information about the parameters.
  /// [children] Child parameters nested within this parameter. This field only applies to protobuf parameters
  /// [dataType] The data type of the parameter.
  /// [defaultValue] Default values for the defined keys. Each value can either be string, int, double or any proto message or a serialized object.
  /// [description] Optional. The description about the parameter
  /// [inOutType] Specifies the input/output type for the parameter.
  /// [isTransient] Whether this parameter is a transient parameter.
  /// [jsonSchema] This schema will be used to validate runtime JSON-typed values of this parameter.
  /// [key] Key is used to retrieve the corresponding parameter value. This should be unique for a given fired event. These parameters must be predefined in the workflow definition.
  /// [name] The name (without prefix) to be displayed in the UI for this parameter. E.g. if the key is "foo.bar.myName", then the name would be "myName".
  /// [producedBy] The identifier of the node (TaskConfig/TriggerConfig) this parameter was produced by, if it is a transient param or a copy of an input param.
  /// [producer] Required.
  /// [protoDefName] The name of the protobuf type if the parameter has a protobuf data type.
  /// [protoDefPath] If the data type is of type proto or proto array, this field needs to be populated with the fully qualified proto name. This message, for example, would be "enterprise.crm.frontends.eventbus.proto.WorkflowParameterEntry".
  EnterpriseCrmFrontendsEventbusProtoWorkflowParameterEntryResponse({
    required this.attributes,
    required this.children,
    required this.dataType,
    required this.defaultValue,
    required this.description,
    required this.inOutType,
    required this.isTransient,
    required this.jsonSchema,
    required this.key,
    required this.name,
    required this.producedBy,
    required this.producer,
    required this.protoDefName,
    required this.protoDefPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributes': pulumi.Input.mapInputValue<EnterpriseCrmEventbusProtoAttributesResponse, Map<String, dynamic>>(attributes, (value) => value.toMap()),
      'children': pulumi.Input.mapInputValue<List<EnterpriseCrmFrontendsEventbusProtoWorkflowParameterEntryResponse>, List<Map<String, dynamic>>>(children, (value) => pulumi.Input.encodeList<EnterpriseCrmFrontendsEventbusProtoWorkflowParameterEntryResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dataType': dataType,
      'defaultValue': pulumi.Input.mapInputValue<EnterpriseCrmFrontendsEventbusProtoParameterValueTypeResponse, Map<String, dynamic>>(defaultValue, (value) => value.toMap()),
      'description': description,
      'inOutType': inOutType,
      'isTransient': isTransient,
      'jsonSchema': jsonSchema,
      'key': key,
      'name': name,
      'producedBy': pulumi.Input.mapInputValue<EnterpriseCrmEventbusProtoNodeIdentifierResponse, Map<String, dynamic>>(producedBy, (value) => value.toMap()),
      'producer': producer,
      'protoDefName': protoDefName,
      'protoDefPath': protoDefPath,
    };
  }

  factory EnterpriseCrmFrontendsEventbusProtoWorkflowParameterEntryResponse.fromMap(Map<String, dynamic> map) {
    return EnterpriseCrmFrontendsEventbusProtoWorkflowParameterEntryResponse(
      attributes: (EnterpriseCrmEventbusProtoAttributesResponse.fromMap((map['attributes'] as Map).cast<String, dynamic>())).input(),
      children: (pulumi.Input.decodeList<EnterpriseCrmFrontendsEventbusProtoWorkflowParameterEntryResponse>(map['children'], (value) => EnterpriseCrmFrontendsEventbusProtoWorkflowParameterEntryResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      dataType: (map['dataType'] as String).input(),
      defaultValue: (EnterpriseCrmFrontendsEventbusProtoParameterValueTypeResponse.fromMap((map['defaultValue'] as Map).cast<String, dynamic>())).input(),
      description: (map['description'] as String).input(),
      inOutType: (map['inOutType'] as String).input(),
      isTransient: (map['isTransient'] as bool).input(),
      jsonSchema: (map['jsonSchema'] as String).input(),
      key: (map['key'] as String).input(),
      name: (map['name'] as String).input(),
      producedBy: (EnterpriseCrmEventbusProtoNodeIdentifierResponse.fromMap((map['producedBy'] as Map).cast<String, dynamic>())).input(),
      producer: (map['producer'] as String).input(),
      protoDefName: (map['protoDefName'] as String).input(),
      protoDefPath: (map['protoDefPath'] as String).input(),
    );
  }
}

