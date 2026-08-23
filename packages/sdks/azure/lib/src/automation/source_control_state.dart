// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'source_control_security.dart';

/// Input properties used for looking up and filtering SourceControl resources.
class SourceControlState {
  /// Whether auto async the Source Control.
  final pulumi.Input<bool>? automaticSync;
  /// The ID of Automation Account to manage this Source Control. Changing this forces a new Automation Source Control to be created.
  final pulumi.Input<String>? automationAccountId;
  /// Specify the repo branch of the Source Control. Empty value is valid only for `VsoTfvc`.
  final pulumi.Input<String>? branch;
  /// A short description of the Source Control.
  final pulumi.Input<String>? description;
  /// The folder path of the source control. This Path must be relative.
  final pulumi.Input<String>? folderPath;
  /// The name which should be used for this Automation Source Control. Changing this forces a new Automation Source Control to be created.
  final pulumi.Input<String>? name;
  /// Whether auto publish the Source Control. Defaults to `true`.
  final pulumi.Input<bool>? publishRunbookEnabled;
  /// The Repository URL of the source control.
  final pulumi.Input<String>? repositoryUrl;
  /// A `security` block as defined below.
  final pulumi.Input<SourceControlSecurity>? security;
  /// The source type of Source Control, possible vaules are `VsoGit`, `VsoTfvc` and `GitHub`, and the value is case sensitive.
  final pulumi.Input<String>? sourceControlType;

  /// Creates a new [SourceControlState].
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
  const SourceControlState({
    this.automaticSync,
    this.automationAccountId,
    this.branch,
    this.description,
    this.folderPath,
    this.name,
    this.publishRunbookEnabled,
    this.repositoryUrl,
    this.security,
    this.sourceControlType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automaticSync': ?automaticSync,
      'automationAccountId': ?automationAccountId,
      'branch': ?branch,
      'description': ?description,
      'folderPath': ?folderPath,
      'name': ?name,
      'publishRunbookEnabled': ?publishRunbookEnabled,
      'repositoryUrl': ?repositoryUrl,
      'security': ?pulumi.Input.mapOptionalInputValue<SourceControlSecurity, Map<String, dynamic>>(security, (value) => value.toMap()),
      'sourceControlType': ?sourceControlType,
    };
  }

  factory SourceControlState.fromMap(Map<String, dynamic> map) {
    return SourceControlState(
      automaticSync: (() { final guardedValue = map['automaticSync']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      automationAccountId: (() { final guardedValue = map['automationAccountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      branch: (() { final guardedValue = map['branch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      folderPath: (() { final guardedValue = map['folderPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publishRunbookEnabled: (() { final guardedValue = map['publishRunbookEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      repositoryUrl: (() { final guardedValue = map['repositoryUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      security: (() { final guardedValue = map['security']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SourceControlSecurity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sourceControlType: (() { final guardedValue = map['sourceControlType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
