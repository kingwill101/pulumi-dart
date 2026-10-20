import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the input/output type for the parameter.
enum EnterpriseCrmFrontendsEventbusProtoWorkflowParameterEntryInOutType implements pulumi.PulumiEnum<String> {
  inOutTypeUnspecified("IN_OUT_TYPE_UNSPECIFIED"),
  in_("IN"),
  out("OUT"),
  inOut("IN_OUT");

  const EnterpriseCrmFrontendsEventbusProtoWorkflowParameterEntryInOutType(this.wireValue);
  @override
  final String wireValue;

  static EnterpriseCrmFrontendsEventbusProtoWorkflowParameterEntryInOutType fromValue(String value) {
    for (final item in EnterpriseCrmFrontendsEventbusProtoWorkflowParameterEntryInOutType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EnterpriseCrmFrontendsEventbusProtoWorkflowParameterEntryInOutType value: $value');
  }
}
