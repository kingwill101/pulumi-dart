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
  CurationState({
    this.createTime,
    this.curationId,
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
      createTime: map['createTime'] == null ? null : (map['createTime'] as String).input(),
      curationId: map['curationId'] == null ? null : (map['curationId'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      endpoint: map['endpoint'] == null ? null : (CurationEndpoint.fromMap((map['endpoint'] as Map).cast<String, dynamic>())).input(),
      lastExecutionErrorCode: map['lastExecutionErrorCode'] == null ? null : (map['lastExecutionErrorCode'] as String).input(),
      lastExecutionErrorMessage: map['lastExecutionErrorMessage'] == null ? null : (map['lastExecutionErrorMessage'] as String).input(),
      lastExecutionState: map['lastExecutionState'] == null ? null : (map['lastExecutionState'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      pluginInstanceActions: map['pluginInstanceActions'] == null ? null : (pulumi.Input.decodeList<CurationPluginInstanceAction>(map['pluginInstanceActions'], (value) => CurationPluginInstanceAction.fromMap((value as Map).cast<String, dynamic>()))).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      updateTime: map['updateTime'] == null ? null : (map['updateTime'] as String).input(),
    );
  }
}

