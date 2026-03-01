// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'deployment_channel_profile.dart';

/// Input properties used for looking up and filtering Deployment resources.
class DeploymentState {
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String>? app;
  /// The resource name of the app version to deploy.
  /// Format:
  /// projects/{project}/locations/{location}/apps/{app}/versions/{version}
  final pulumi.Input<String>? appVersion;
  /// A ChannelProfile configures the agent's behavior for a specific communication
  /// channel, such as web UI or telephony.
  /// Structure is documented below.
  final pulumi.Input<DeploymentChannelProfile>? channelProfile;
  /// Timestamp when this deployment was created.
  final pulumi.Input<String>? createTime;
  /// Display name of the deployment.
  final pulumi.Input<String>? displayName;
  /// Etag used to ensure the object hasn't changed during a read-modify-write
  /// operation. If the etag is empty, the update will overwrite any concurrent
  /// changes.
  final pulumi.Input<String>? etag;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String>? location;
  /// Identifier. The resource name of the deployment.
  /// Format:
  /// projects/{project}/locations/{location}/apps/{app}/deployments/{deployment}
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Timestamp when this deployment was last updated.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [DeploymentState].
  /// [app] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [appVersion] The resource name of the app version to deploy.
  /// [channelProfile] A ChannelProfile configures the agent's behavior for a specific communication
  /// [createTime] Timestamp when this deployment was created.
  /// [displayName] Display name of the deployment.
  /// [etag] Etag used to ensure the object hasn't changed during a read-modify-write
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [name] Identifier. The resource name of the deployment.
  /// [project] The ID of the project in which the resource belongs.
  /// [updateTime] Timestamp when this deployment was last updated.
  DeploymentState({
    pulumi.Output<String>? app,
    pulumi.Output<String>? appVersion,
    pulumi.Output<DeploymentChannelProfile>? channelProfile,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? displayName,
    pulumi.Output<String>? etag,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<String>? updateTime,
  }) :
      app = pulumi.Input.asOptionalInput<String>(app),
      appVersion = pulumi.Input.asOptionalInput<String>(appVersion),
      channelProfile = pulumi.Input.asOptionalInput<DeploymentChannelProfile>(channelProfile),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'app': ?app,
      'appVersion': ?appVersion,
      'channelProfile': ?pulumi.Input.mapOptionalInputValue<DeploymentChannelProfile, Map<String, dynamic>>(channelProfile, (value) => value.toMap()),
      'createTime': ?createTime,
      'displayName': ?displayName,
      'etag': ?etag,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'updateTime': ?updateTime,
    };
  }

  factory DeploymentState.fromMap(Map<String, dynamic> map) {
    return DeploymentState(
      app: map['app'] == null ? null : pulumi.Output.create<String>(map['app'] as String),
      appVersion: map['appVersion'] == null ? null : pulumi.Output.create<String>(map['appVersion'] as String),
      channelProfile: map['channelProfile'] == null ? null : pulumi.Output.create<DeploymentChannelProfile>(DeploymentChannelProfile.fromMap((map['channelProfile'] as Map).cast<String, dynamic>())),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

