// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'project_kaj_policy_config_default_key_access_justification_policy.dart';

/// {@template pulumi_kms_project_kaj_policy_config_project_kaj_policy_config_args_doc}
/// The set of arguments for ProjectKajPolicyConfig.
/// {@endtemplate}
/// {@macro pulumi_kms_project_kaj_policy_config_project_kaj_policy_config_args_doc}
class ProjectKajPolicyConfigArgs {
  /// The default key access justification policy used when a CryptoKey is
  /// created in this project. This is only used when a Key Access Justifications
  /// policy is not provided in the CreateCryptoKeyRequest.
  /// Structure is documented below.
  final pulumi.Input<ProjectKajPolicyConfigDefaultKeyAccessJustificationPolicy>? defaultKeyAccessJustificationPolicy;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [ProjectKajPolicyConfigArgs].
  /// [defaultKeyAccessJustificationPolicy] The default key access justification policy used when a CryptoKey is
  /// [project] The ID of the project in which the resource belongs.
  ProjectKajPolicyConfigArgs({
    this.defaultKeyAccessJustificationPolicy,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultKeyAccessJustificationPolicy': ?pulumi.Input.mapOptionalInputValue<ProjectKajPolicyConfigDefaultKeyAccessJustificationPolicy, Map<String, dynamic>>(defaultKeyAccessJustificationPolicy, (value) => value.toMap()),
      'project': ?project,
    };
  }

  factory ProjectKajPolicyConfigArgs.fromMap(Map<String, dynamic> map) {
    return ProjectKajPolicyConfigArgs(
      defaultKeyAccessJustificationPolicy: map['defaultKeyAccessJustificationPolicy'] == null ? null : (ProjectKajPolicyConfigDefaultKeyAccessJustificationPolicy.fromMap((map['defaultKeyAccessJustificationPolicy']! as Map).cast<String, dynamic>())).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

