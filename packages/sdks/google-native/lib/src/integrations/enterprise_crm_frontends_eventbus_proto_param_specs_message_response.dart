// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'enterprise_crm_frontends_eventbus_proto_param_spec_entry_response.dart';

class EnterpriseCrmFrontendsEventbusProtoParamSpecsMessageResponse {
  final pulumi.Input<List<EnterpriseCrmFrontendsEventbusProtoParamSpecEntryResponse>> parameters;

  /// Creates a new [EnterpriseCrmFrontendsEventbusProtoParamSpecsMessageResponse].
  /// [parameters] Required.
  const EnterpriseCrmFrontendsEventbusProtoParamSpecsMessageResponse({
    required this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parameters': pulumi.Input.mapInputValue<List<EnterpriseCrmFrontendsEventbusProtoParamSpecEntryResponse>, List<Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeList<EnterpriseCrmFrontendsEventbusProtoParamSpecEntryResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory EnterpriseCrmFrontendsEventbusProtoParamSpecsMessageResponse.fromMap(Map<String, dynamic> map) {
    return EnterpriseCrmFrontendsEventbusProtoParamSpecsMessageResponse(
      parameters: pulumi.Input.fromValue(pulumi.Input.decodeList<EnterpriseCrmFrontendsEventbusProtoParamSpecEntryResponse>(map['parameters']!, (value) => EnterpriseCrmFrontendsEventbusProtoParamSpecEntryResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

