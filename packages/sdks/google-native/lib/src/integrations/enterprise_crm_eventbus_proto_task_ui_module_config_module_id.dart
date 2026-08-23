/// ID of the config module.
enum EnterpriseCrmEventbusProtoTaskUiModuleConfigModuleId {
  unspecifiedTaskModule("UNSPECIFIED_TASK_MODULE"),
  label("LABEL"),
  errorHandling("ERROR_HANDLING"),
  taskParamTable("TASK_PARAM_TABLE"),
  taskParamForm("TASK_PARAM_FORM"),
  precondition("PRECONDITION"),
  scriptEditor("SCRIPT_EDITOR"),
  rpc("RPC"),
  taskSummary("TASK_SUMMARY"),
  suspension("SUSPENSION"),
  rpcTyped("RPC_TYPED"),
  subWorkflow("SUB_WORKFLOW"),
  appsScriptNavigator("APPS_SCRIPT_NAVIGATOR"),
  subWorkflowForEachLoop("SUB_WORKFLOW_FOR_EACH_LOOP"),
  fieldMapping("FIELD_MAPPING"),
  readme("README"),
  restCaller("REST_CALLER"),
  subWorkflowScatterGather("SUB_WORKFLOW_SCATTER_GATHER"),
  cloudSql("CLOUD_SQL"),
  genericConnectorTask("GENERIC_CONNECTOR_TASK");

  const EnterpriseCrmEventbusProtoTaskUiModuleConfigModuleId(this.wireValue);
  final String wireValue;

  static EnterpriseCrmEventbusProtoTaskUiModuleConfigModuleId fromValue(String value) {
    for (final item in EnterpriseCrmEventbusProtoTaskUiModuleConfigModuleId.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EnterpriseCrmEventbusProtoTaskUiModuleConfigModuleId value: $value');
  }
}
