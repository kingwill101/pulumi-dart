// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'deployment_channel_profile.dart';
import 'deployment_instagram_credentials.dart';
import 'deployment_whatsapp_credentials.dart';

/// {@template pulumi_ces_deployment_deployment_args_doc}
/// The set of arguments for Deployment.
/// {@endtemplate}
/// {@macro pulumi_ces_deployment_deployment_args_doc}
class DeploymentArgs {
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> app;
  /// The resource name of the app version to deploy.
  /// Format:
  /// projects/{project}/locations/{location}/apps/{app}/versions/{version}
  final pulumi.Input<String> appVersion;
  /// A ChannelProfile configures the agent's behavior for a specific communication
  /// channel, such as web UI or telephony.
  /// Structure is documented below.
  final pulumi.Input<DeploymentChannelProfile> channelProfile;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// Display name of the deployment.
  final pulumi.Input<String> displayName;
  /// Ephemeral Meta credentials required when configuring an Instagram channel profile.
  /// Structure is documented below.
  final pulumi.Input<DeploymentInstagramCredentials?>? instagramCredentials;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// Ephemeral Meta credentials required when configuring a WhatsApp channel profile.
  /// Structure is documented below.
  final pulumi.Input<DeploymentWhatsappCredentials?>? whatsappCredentials;

  /// Creates a new [DeploymentArgs].
  /// [app] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [appVersion] The resource name of the app version to deploy.
  /// [channelProfile] A ChannelProfile configures the agent's behavior for a specific communication
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [displayName] Display name of the deployment.
  /// [instagramCredentials] Ephemeral Meta credentials required when configuring an Instagram channel profile.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [project] The ID of the project in which the resource belongs.
  /// [whatsappCredentials] Ephemeral Meta credentials required when configuring a WhatsApp channel profile.
  const DeploymentArgs({
    required this.app,
    required this.appVersion,
    required this.channelProfile,
    this.deletionPolicy,
    required this.displayName,
    this.instagramCredentials,
    required this.location,
    this.project,
    this.whatsappCredentials,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'app': app,
      'appVersion': appVersion,
      'channelProfile': pulumi.Input.mapInputValue<DeploymentChannelProfile, Map<String, dynamic>>(channelProfile, (value) => value.toMap()),
      'deletionPolicy': ?deletionPolicy,
      'displayName': displayName,
      'instagramCredentials': ?pulumi.Input.mapOptionalInputValue<DeploymentInstagramCredentials, Map<String, dynamic>>(instagramCredentials, (value) => value.toMap()),
      'location': location,
      'project': ?project,
      'whatsappCredentials': ?pulumi.Input.mapOptionalInputValue<DeploymentWhatsappCredentials, Map<String, dynamic>>(whatsappCredentials, (value) => value.toMap()),
    };
  }

  factory DeploymentArgs.fromMap(Map<String, dynamic> map) {
    return DeploymentArgs(
      app: pulumi.Input.fromValue(map['app'] as String),
      appVersion: pulumi.Input.fromValue(map['appVersion'] as String),
      channelProfile: pulumi.Input.fromValue(DeploymentChannelProfile.fromMap((map['channelProfile']! as Map).cast<String, dynamic>())),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      instagramCredentials: (() { final guardedValue = map['instagramCredentials']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DeploymentInstagramCredentials.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      whatsappCredentials: (() { final guardedValue = map['whatsappCredentials']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DeploymentWhatsappCredentials.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
