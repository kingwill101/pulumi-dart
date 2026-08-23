// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_api_integrations_custom_vcsrepository_args_doc}
/// The set of arguments for CustomVCSRepository.
/// {@endtemplate}
/// {@macro pulumi_api_integrations_custom_vcsrepository_args_doc}
class CustomVCSRepositoryArgs {
  /// Human-readable display name for the repository. If not provided, the name is used for display purposes.
  final pulumi.Input<String>? displayName;
  /// The custom VCS integration identifier
  final pulumi.Input<String> integrationId;
  /// Repository name or path, joined with the integration's base URL to form the clone URL (e.g. 'myrepo' or 'subgroup/myrepo')
  final pulumi.Input<String> name;
  /// The organization name
  final pulumi.Input<String> orgName;

  /// Creates a new [CustomVCSRepositoryArgs].
  /// [displayName] Human-readable display name for the repository. If not provided, the name is used for display purposes.
  /// [integrationId] The custom VCS integration identifier
  /// [name] Repository name or path, joined with the integration's base URL to form the clone URL (e.g. 'myrepo' or 'subgroup/myrepo')
  /// [orgName] The organization name
  const CustomVCSRepositoryArgs({
    this.displayName,
    required this.integrationId,
    required this.name,
    required this.orgName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'integrationId': integrationId,
      'name': name,
      'orgName': orgName,
    };
  }

  factory CustomVCSRepositoryArgs.fromMap(Map<String, dynamic> map) {
    return CustomVCSRepositoryArgs(
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      integrationId: pulumi.Input.fromValue(map['integrationId'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      orgName: pulumi.Input.fromValue(map['orgName'] as String),
    );
  }
}
