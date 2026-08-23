// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'curation_endpoint.dart';
import 'curation_plugin_instance_action.dart';

/// Input properties used for looking up and filtering Curation resources.
class CurationState {
  /// The time at which the curation was created.
  final pulumi.Input<String>? createTime;
  /// The ID to use for the curation resource, which will become the final
  /// component of the curations's resource name. This field is optional.
  /// * If provided, the same will be used. The service will throw an error if
  /// the specified ID is already used by another curation resource in the API
  /// hub.
  /// * If not provided, a system generated ID will be used.
  /// This value should be 4-500 characters, and valid characters
  /// are /a-z[0-9]-_/.
  final pulumi.Input<String>? curationId;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// The description of the curation.
  final pulumi.Input<String>? description;
  /// The display name of the curation.
  final pulumi.Input<String>? displayName;
  /// The endpoint to be triggered for curation.
  /// The endpoint will be invoked with a request payload containing
  /// ApiMetadata.
  /// Response should contain curated data in the form of
  /// ApiMetadata.
  /// Structure is documented below.
  final pulumi.Input<CurationEndpoint>? endpoint;
  /// The error code of the last execution of the curation. The error code is
  /// populated only when the last execution state is failed.
  /// Possible values:
  /// ERROR_CODE_UNSPECIFIED
  /// INTERNAL_ERROR
  /// UNAUTHORIZED
  final pulumi.Input<String>? lastExecutionErrorCode;
  /// Error message describing the failure, if any, during the last execution of
  /// the curation.
  final pulumi.Input<String>? lastExecutionErrorMessage;
  /// The last execution state of the curation.
  /// Possible values:
  /// LAST_EXECUTION_STATE_UNSPECIFIED
  /// SUCCEEDED
  /// FAILED
  final pulumi.Input<String>? lastExecutionState;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String>? location;
  /// Identifier. The name of the curation.
  /// Format:
  /// `projects/{project}/locations/{location}/curations/{curation}`
  final pulumi.Input<String>? name;
  /// The plugin instances and associated actions that are using the curation.
  /// Note: A particular curation could be used by multiple plugin instances or
  /// multiple actions in a plugin instance.
  /// Structure is documented below.
  final pulumi.Input<List<CurationPluginInstanceAction>>? pluginInstanceActions;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The time at which the curation was last updated.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [CurationState].
  /// [createTime] The time at which the curation was created.
  /// [curationId] The ID to use for the curation resource, which will become the final
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] The description of the curation.
  /// [displayName] The display name of the curation.
  /// [endpoint] The endpoint to be triggered for curation.
  /// [lastExecutionErrorCode] The error code of the last execution of the curation. The error code is
  /// [lastExecutionErrorMessage] Error message describing the failure, if any, during the last execution of
  /// [lastExecutionState] The last execution state of the curation.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [name] Identifier. The name of the curation.
  /// [pluginInstanceActions] The plugin instances and associated actions that are using the curation.
  /// [project] The ID of the project in which the resource belongs.
  /// [updateTime] The time at which the curation was last updated.
  const CurationState({
    this.createTime,
    this.curationId,
    this.deletionPolicy,
    this.description,
    this.displayName,
    this.endpoint,
    this.lastExecutionErrorCode,
    this.lastExecutionErrorMessage,
    this.lastExecutionState,
    this.location,
    this.name,
    this.pluginInstanceActions,
    this.project,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'curationId': ?curationId,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'displayName': ?displayName,
      'endpoint': ?pulumi.Input.mapOptionalInputValue<CurationEndpoint, Map<String, dynamic>>(endpoint, (value) => value.toMap()),
      'lastExecutionErrorCode': ?lastExecutionErrorCode,
      'lastExecutionErrorMessage': ?lastExecutionErrorMessage,
      'lastExecutionState': ?lastExecutionState,
      'location': ?location,
      'name': ?name,
      'pluginInstanceActions': ?pulumi.Input.mapOptionalInputValue<List<CurationPluginInstanceAction>, List<Map<String, dynamic>>>(pluginInstanceActions, (value) => pulumi.Input.encodeList<CurationPluginInstanceAction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'project': ?project,
      'updateTime': ?updateTime,
    };
  }

  factory CurationState.fromMap(Map<String, dynamic> map) {
    return CurationState(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      curationId: (() { final guardedValue = map['curationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endpoint: (() { final guardedValue = map['endpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CurationEndpoint.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      lastExecutionErrorCode: (() { final guardedValue = map['lastExecutionErrorCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastExecutionErrorMessage: (() { final guardedValue = map['lastExecutionErrorMessage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastExecutionState: (() { final guardedValue = map['lastExecutionState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pluginInstanceActions: (() { final guardedValue = map['pluginInstanceActions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CurationPluginInstanceAction>(guardedValue, (value) => CurationPluginInstanceAction.fromMap((value as Map).cast<String, dynamic>()))); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
