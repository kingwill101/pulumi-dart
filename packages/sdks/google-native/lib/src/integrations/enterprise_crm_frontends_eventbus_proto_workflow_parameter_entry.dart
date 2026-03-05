// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'enterprise_crm_eventbus_proto_attributes.dart';
import 'enterprise_crm_eventbus_proto_node_identifier.dart';
import 'enterprise_crm_frontends_eventbus_proto_parameter_value_type.dart';
import 'enterprise_crm_frontends_eventbus_proto_workflow_parameter_entry_data_type.dart';
import 'enterprise_crm_frontends_eventbus_proto_workflow_parameter_entry_in_out_type.dart';

class EnterpriseCrmFrontendsEventbusProtoWorkflowParameterEntry {
  /// Metadata information about the parameters.
  final pulumi.Input<EnterpriseCrmEventbusProtoAttributes>? attributes;
  /// Child parameters nested within this parameter. This field only applies to protobuf parameters
  final pulumi.Input<List<EnterpriseCrmFrontendsEventbusProtoWorkflowParameterEntry>>? children;
  /// The data type of the parameter.
  final pulumi.Input<EnterpriseCrmFrontendsEventbusProtoWorkflowParameterEntryDataType>? dataType;
  /// Default values for the defined keys. Each value can either be string, int, double or any proto message or a serialized object.
  final pulumi.Input<EnterpriseCrmFrontendsEventbusProtoParameterValueType>? defaultValue;
  /// Optional. The description about the parameter
  final pulumi.Input<String>? description;
  /// Specifies the input/output type for the parameter.
  final pulumi.Input<EnterpriseCrmFrontendsEventbusProtoWorkflowParameterEntryInOutType>? inOutType;
  /// Whether this parameter is a transient parameter.
  final pulumi.Input<bool>? isTransient;
  /// This schema will be used to validate runtime JSON-typed values of this parameter.
  final pulumi.Input<String>? jsonSchema;
  /// Key is used to retrieve the corresponding parameter value. This should be unique for a given fired event. These parameters must be predefined in the workflow definition.
  final pulumi.Input<String>? key;
  /// The name (without prefix) to be displayed in the UI for this parameter. E.g. if the key is "foo.bar.myName", then the name would be "myName".
  final pulumi.Input<String>? name;
  /// The identifier of the node (TaskConfig/TriggerConfig) this parameter was produced by, if it is a transient param or a copy of an input param.
  final pulumi.Input<EnterpriseCrmEventbusProtoNodeIdentifier>? producedBy;
  final pulumi.Input<String>? producer;
  /// The name of the protobuf type if the parameter has a protobuf data type.
  final pulumi.Input<String>? protoDefName;
  /// If the data type is of type proto or proto array, this field needs to be populated with the fully qualified proto name. This message, for example, would be "enterprise.crm.frontends.eventbus.proto.WorkflowParameterEntry".
  final pulumi.Input<String>? protoDefPath;

  /// Creates a new [EnterpriseCrmFrontendsEventbusProtoWorkflowParameterEntry].
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
  /// [producer] Optional.
  /// [protoDefName] The name of the protobuf type if the parameter has a protobuf data type.
  /// [protoDefPath] If the data type is of type proto or proto array, this field needs to be populated with the fully qualified proto name. This message, for example, would be "enterprise.crm.frontends.eventbus.proto.WorkflowParameterEntry".
  EnterpriseCrmFrontendsEventbusProtoWorkflowParameterEntry({
    this.attributes,
    this.children,
    this.dataType,
    this.defaultValue,
    this.description,
    this.inOutType,
    this.isTransient,
    this.jsonSchema,
    this.key,
    this.name,
    this.producedBy,
    this.producer,
    this.protoDefName,
    this.protoDefPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributes': ?pulumi.Input.mapOptionalInputValue<EnterpriseCrmEventbusProtoAttributes, Map<String, dynamic>>(attributes, (value) => value.toMap()),
      'children': ?pulumi.Input.mapOptionalInputValue<List<EnterpriseCrmFrontendsEventbusProtoWorkflowParameterEntry>, List<Map<String, dynamic>>>(children, (value) => pulumi.Input.encodeList<EnterpriseCrmFrontendsEventbusProtoWorkflowParameterEntry, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dataType': ?pulumi.Input.mapOptionalInputValue<EnterpriseCrmFrontendsEventbusProtoWorkflowParameterEntryDataType, String>(dataType, (value) => value.wireValue),
      'defaultValue': ?pulumi.Input.mapOptionalInputValue<EnterpriseCrmFrontendsEventbusProtoParameterValueType, Map<String, dynamic>>(defaultValue, (value) => value.toMap()),
      'description': ?description,
      'inOutType': ?pulumi.Input.mapOptionalInputValue<EnterpriseCrmFrontendsEventbusProtoWorkflowParameterEntryInOutType, String>(inOutType, (value) => value.wireValue),
      'isTransient': ?isTransient,
      'jsonSchema': ?jsonSchema,
      'key': ?key,
      'name': ?name,
      'producedBy': ?pulumi.Input.mapOptionalInputValue<EnterpriseCrmEventbusProtoNodeIdentifier, Map<String, dynamic>>(producedBy, (value) => value.toMap()),
      'producer': ?producer,
      'protoDefName': ?protoDefName,
      'protoDefPath': ?protoDefPath,
    };
  }

  factory EnterpriseCrmFrontendsEventbusProtoWorkflowParameterEntry.fromMap(Map<String, dynamic> map) {
    return EnterpriseCrmFrontendsEventbusProtoWorkflowParameterEntry(
      attributes: (() { final guardedValue = map['attributes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EnterpriseCrmEventbusProtoAttributes.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      children: (() { final guardedValue = map['children']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EnterpriseCrmFrontendsEventbusProtoWorkflowParameterEntry>(guardedValue, (value) => EnterpriseCrmFrontendsEventbusProtoWorkflowParameterEntry.fromMap((value as Map).cast<String, dynamic>()))); })(),
      dataType: (() { final guardedValue = map['dataType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EnterpriseCrmFrontendsEventbusProtoWorkflowParameterEntryDataType.fromValue(guardedValue as String)); })(),
      defaultValue: (() { final guardedValue = map['defaultValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EnterpriseCrmFrontendsEventbusProtoParameterValueType.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      inOutType: (() { final guardedValue = map['inOutType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EnterpriseCrmFrontendsEventbusProtoWorkflowParameterEntryInOutType.fromValue(guardedValue as String)); })(),
      isTransient: (() { final guardedValue = map['isTransient']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      jsonSchema: (() { final guardedValue = map['jsonSchema']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      producedBy: (() { final guardedValue = map['producedBy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EnterpriseCrmEventbusProtoNodeIdentifier.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      producer: (() { final guardedValue = map['producer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      protoDefName: (() { final guardedValue = map['protoDefName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      protoDefPath: (() { final guardedValue = map['protoDefPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

