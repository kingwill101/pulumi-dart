// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'source_control_security.dart';

/// {@template pulumi_automation_source_control_source_control_args_doc}
/// The set of arguments for SourceControl.
/// {@endtemplate}
/// {@macro pulumi_automation_source_control_source_control_args_doc}
class SourceControlArgs {
  /// Whether auto async the Source Control.
  final pulumi.Input<bool>? automaticSync;
  /// The ID of Automation Account to manage this Source Control. Changing this forces a new Automation Source Control to be created.
  final pulumi.Input<String> automationAccountId;
  /// Specify the repo branch of the Source Control. Empty value is valid only for `VsoTfvc`.
  final pulumi.Input<String>? branch;
  /// A short description of the Source Control.
  final pulumi.Input<String>? description;
  /// The folder path of the source control. This Path must be relative.
  final pulumi.Input<String> folderPath;
  /// The name which should be used for this Automation Source Control. Changing this forces a new Automation Source Control to be created.
  final pulumi.Input<String>? name;
  /// Whether auto publish the Source Control. Defaults to `true`.
  final pulumi.Input<bool>? publishRunbookEnabled;
  /// The Repository URL of the source control.
  final pulumi.Input<String> repositoryUrl;
  /// A `security` block as defined below.
  final pulumi.Input<SourceControlSecurity> security;
  /// The source type of Source Control, possible vaules are `VsoGit`, `VsoTfvc` and `GitHub`, and the value is case sensitive.
  final pulumi.Input<String> sourceControlType;

  /// Creates a new [SourceControlArgs].
  /// [automaticSync] Whether auto async the Source Control.
  /// [automationAccountId] The ID of Automation Account to manage this Source Control. Changing this forces a new Automation Source Control to be created.
  /// [branch] Specify the repo branch of the Source Control. Empty value is valid only for `VsoTfvc`.
  /// [description] A short description of the Source Control.
  /// [folderPath] The folder path of the source control. This Path must be relative.
  /// [name] The name which should be used for this Automation Source Control. Changing this forces a new Automation Source Control to be created.
  /// [publishRunbookEnabled] Whether auto publish the Source Control. Defaults to `true`.
  /// [repositoryUrl] The Repository URL of the source control.
  /// [security] A `security` block as defined below.
  /// [sourceControlType] The source type of Source Control, possible vaules are `VsoGit`, `VsoTfvc` and `GitHub`, and the value is case sensitive.
  const SourceControlArgs({
    this.automaticSync,
    required this.automationAccountId,
    this.branch,
    this.description,
    required this.folderPath,
    this.name,
    this.publishRunbookEnabled,
    required this.repositoryUrl,
    required this.security,
    required this.sourceControlType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automaticSync': ?automaticSync,
      'automationAccountId': automationAccountId,
      'branch': ?branch,
      'description': ?description,
      'folderPath': folderPath,
      'name': ?name,
      'publishRunbookEnabled': ?publishRunbookEnabled,
      'repositoryUrl': repositoryUrl,
      'security': pulumi.Input.mapInputValue<SourceControlSecurity, Map<String, dynamic>>(security, (value) => value.toMap()),
      'sourceControlType': sourceControlType,
    };
  }

  factory SourceControlArgs.fromMap(Map<String, dynamic> map) {
    return SourceControlArgs(
      automaticSync: (() { final guardedValue = map['automaticSync']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      automationAccountId: pulumi.Input.fromValue(map['automationAccountId'] as String),
      branch: (() { final guardedValue = map['branch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      folderPath: pulumi.Input.fromValue(map['folderPath'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publishRunbookEnabled: (() { final guardedValue = map['publishRunbookEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      repositoryUrl: pulumi.Input.fromValue(map['repositoryUrl'] as String),
      security: pulumi.Input.fromValue(SourceControlSecurity.fromMap((map['security']! as Map).cast<String, dynamic>())),
      sourceControlType: pulumi.Input.fromValue(map['sourceControlType'] as String),
    );
  }
}
