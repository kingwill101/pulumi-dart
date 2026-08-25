// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'deployment_channel_profile.dart';

/// Input properties used for looking up and filtering Deployment resources.
class DeploymentState {
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String?>? app;
  /// The resource name of the app version to deploy.
  /// Format:
  /// projects/{project}/locations/{location}/apps/{app}/versions/{version}
  final pulumi.Input<String?>? appVersion;
  /// A ChannelProfile configures the agent's behavior for a specific communication
  /// channel, such as web UI or telephony.
  /// Structure is documented below.
  final pulumi.Input<DeploymentChannelProfile?>? channelProfile;
  /// Timestamp when this deployment was created.
  final pulumi.Input<String?>? createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// Display name of the deployment.
  final pulumi.Input<String?>? displayName;
  /// Etag used to ensure the object hasn't changed during a read-modify-write
  /// operation. If the etag is empty, the update will overwrite any concurrent
  /// changes.
  final pulumi.Input<String?>? etag;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String?>? location;
  /// Identifier. The resource name of the deployment.
  /// Format:
  /// projects/{project}/locations/{location}/apps/{app}/deployments/{deployment}
  final pulumi.Input<String?>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// Timestamp when this deployment was last updated.
  final pulumi.Input<String?>? updateTime;

  /// Creates a new [DeploymentState].
  /// [app] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [appVersion] The resource name of the app version to deploy.
  /// [channelProfile] A ChannelProfile configures the agent's behavior for a specific communication
  /// [createTime] Timestamp when this deployment was created.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [displayName] Display name of the deployment.
  /// [etag] Etag used to ensure the object hasn't changed during a read-modify-write
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [name] Identifier. The resource name of the deployment.
  /// [project] The ID of the project in which the resource belongs.
  /// [updateTime] Timestamp when this deployment was last updated.
  const DeploymentState({
    this.app,
    this.appVersion,
    this.channelProfile,
    this.createTime,
    this.deletionPolicy,
    this.displayName,
    this.etag,
    this.location,
    this.name,
    this.project,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'app': ?app,
      'appVersion': ?appVersion,
      'channelProfile': ?pulumi.Input.mapOptionalInputValue<DeploymentChannelProfile, Map<String, dynamic>>(channelProfile, (value) => value.toMap()),
      'createTime': ?createTime,
      'deletionPolicy': ?deletionPolicy,
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
      app: (() { final guardedValue = map['app']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      appVersion: (() { final guardedValue = map['appVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      channelProfile: (() { final guardedValue = map['channelProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DeploymentChannelProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
