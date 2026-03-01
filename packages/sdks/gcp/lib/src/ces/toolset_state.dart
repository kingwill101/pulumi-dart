// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'toolset_open_api_toolset.dart';

/// Input properties used for looking up and filtering Toolset resources.
class ToolsetState {
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String>? app;
  /// Timestamp when the toolset was created.
  final pulumi.Input<String>? createTime;
  /// The description of the toolset.
  final pulumi.Input<String>? description;
  /// The display name of the toolset. Must be unique within the same app.
  final pulumi.Input<String>? displayName;
  /// ETag used to ensure the object hasn't changed during a read-modify-write
  /// operation. If the etag is empty, the update will overwrite any concurrent
  /// changes.
  final pulumi.Input<String>? etag;
  /// Possible values:
  /// SYNCHRONOUS
  /// ASYNCHRONOUS
  final pulumi.Input<String>? executionType;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String>? location;
  /// Identifier. The unique identifier of the toolset.
  /// Format:
  /// `projects/{project}/locations/{location}/apps/{app}/toolsets/{toolset}`
  final pulumi.Input<String>? name;
  /// A toolset that contains a list of tools that are defined by an OpenAPI
  /// schema.
  /// Structure is documented below.
  final pulumi.Input<ToolsetOpenApiToolset>? openApiToolset;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The ID to use for the toolset, which will become the final component of
  /// the toolset's resource name. If not provided, a unique ID will be
  /// automatically assigned for the toolset.
  final pulumi.Input<String>? toolsetId;
  /// Timestamp when the toolset was last updated.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [ToolsetState].
  /// [app] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [createTime] Timestamp when the toolset was created.
  /// [description] The description of the toolset.
  /// [displayName] The display name of the toolset. Must be unique within the same app.
  /// [etag] ETag used to ensure the object hasn't changed during a read-modify-write
  /// [executionType] Possible values:
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [name] Identifier. The unique identifier of the toolset.
  /// [openApiToolset] A toolset that contains a list of tools that are defined by an OpenAPI
  /// [project] The ID of the project in which the resource belongs.
  /// [toolsetId] The ID to use for the toolset, which will become the final component of
  /// [updateTime] Timestamp when the toolset was last updated.
  ToolsetState({
    pulumi.Output<String>? app,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? description,
    pulumi.Output<String>? displayName,
    pulumi.Output<String>? etag,
    pulumi.Output<String>? executionType,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<ToolsetOpenApiToolset>? openApiToolset,
    pulumi.Output<String>? project,
    pulumi.Output<String>? toolsetId,
    pulumi.Output<String>? updateTime,
  }) :
      app = pulumi.Input.asOptionalInput<String>(app),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      executionType = pulumi.Input.asOptionalInput<String>(executionType),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      openApiToolset = pulumi.Input.asOptionalInput<ToolsetOpenApiToolset>(openApiToolset),
      project = pulumi.Input.asOptionalInput<String>(project),
      toolsetId = pulumi.Input.asOptionalInput<String>(toolsetId),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'app': ?app,
      'createTime': ?createTime,
      'description': ?description,
      'displayName': ?displayName,
      'etag': ?etag,
      'executionType': ?executionType,
      'location': ?location,
      'name': ?name,
      'openApiToolset': ?pulumi.Input.mapOptionalInputValue<ToolsetOpenApiToolset, Map<String, dynamic>>(openApiToolset, (value) => value.toMap()),
      'project': ?project,
      'toolsetId': ?toolsetId,
      'updateTime': ?updateTime,
    };
  }

  factory ToolsetState.fromMap(Map<String, dynamic> map) {
    return ToolsetState(
      app: map['app'] == null ? null : pulumi.Output.create<String>(map['app'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      executionType: map['executionType'] == null ? null : pulumi.Output.create<String>(map['executionType'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      openApiToolset: map['openApiToolset'] == null ? null : pulumi.Output.create<ToolsetOpenApiToolset>(ToolsetOpenApiToolset.fromMap((map['openApiToolset'] as Map).cast<String, dynamic>())),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      toolsetId: map['toolsetId'] == null ? null : pulumi.Output.create<String>(map['toolsetId'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

