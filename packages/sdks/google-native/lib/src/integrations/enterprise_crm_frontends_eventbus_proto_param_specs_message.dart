// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'enterprise_crm_frontends_eventbus_proto_param_spec_entry.dart';

class EnterpriseCrmFrontendsEventbusProtoParamSpecsMessage {
  final pulumi.Input<List<EnterpriseCrmFrontendsEventbusProtoParamSpecEntry>>? parameters;

  /// Creates a new [EnterpriseCrmFrontendsEventbusProtoParamSpecsMessage].
  /// [parameters] Optional.
  const EnterpriseCrmFrontendsEventbusProtoParamSpecsMessage({
    this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parameters': ?pulumi.Input.mapOptionalInputValue<List<EnterpriseCrmFrontendsEventbusProtoParamSpecEntry>, List<Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeList<EnterpriseCrmFrontendsEventbusProtoParamSpecEntry, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory EnterpriseCrmFrontendsEventbusProtoParamSpecsMessage.fromMap(Map<String, dynamic> map) {
    return EnterpriseCrmFrontendsEventbusProtoParamSpecsMessage(
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EnterpriseCrmFrontendsEventbusProtoParamSpecEntry>(guardedValue, (value) => EnterpriseCrmFrontendsEventbusProtoParamSpecEntry.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

