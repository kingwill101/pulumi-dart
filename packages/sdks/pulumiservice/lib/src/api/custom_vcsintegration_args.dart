// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_api_integrations_custom_vcsintegration_args_doc}
/// The set of arguments for CustomVCSIntegration.
/// {@endtemplate}
/// {@macro pulumi_api_integrations_custom_vcsintegration_args_doc}
class CustomVCSIntegrationArgs {
  /// URL prefix for repositories covered by this integration (e.g. 'https://gitea.example.com/myorg'). Used to match repositories to integrations.
  final pulumi.Input<String> baseUrl;
  /// ESC environment reference in 'project/envName' format containing VCS credentials (e.g. SSH keys, access tokens) used for repository operations
  final pulumi.Input<String> environment;
  /// The custom VCS integration identifier
  final pulumi.Input<String>? integrationId;
  /// Human-readable name for the integration, unique within the organization (e.g. 'Gitea Production')
  final pulumi.Input<String> name;
  /// The organization name
  final pulumi.Input<String> orgName;
  /// Version control system type. Defaults to 'git' if not specified.
  final pulumi.Input<String>? vcsType;

  /// Creates a new [CustomVCSIntegrationArgs].
  /// [baseUrl] URL prefix for repositories covered by this integration (e.g. 'https://gitea.example.com/myorg'). Used to match repositories to integrations.
  /// [environment] ESC environment reference in 'project/envName' format containing VCS credentials (e.g. SSH keys, access tokens) used for repository operations
  /// [integrationId] The custom VCS integration identifier
  /// [name] Human-readable name for the integration, unique within the organization (e.g. 'Gitea Production')
  /// [orgName] The organization name
  /// [vcsType] Version control system type. Defaults to 'git' if not specified.
  const CustomVCSIntegrationArgs({
    required this.baseUrl,
    required this.environment,
    this.integrationId,
    required this.name,
    required this.orgName,
    this.vcsType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'baseUrl': baseUrl,
      'environment': environment,
      'integrationId': ?integrationId,
      'name': name,
      'orgName': orgName,
      'vcsType': ?vcsType,
    };
  }

  factory CustomVCSIntegrationArgs.fromMap(Map<String, dynamic> map) {
    return CustomVCSIntegrationArgs(
      baseUrl: pulumi.Input.fromValue(map['baseUrl'] as String),
      environment: pulumi.Input.fromValue(map['environment'] as String),
      integrationId: (() { final guardedValue = map['integrationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      orgName: pulumi.Input.fromValue(map['orgName'] as String),
      vcsType: (() { final guardedValue = map['vcsType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
