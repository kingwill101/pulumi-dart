// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FactoryVstsConfiguration {
  /// Specifies the VSTS account name.
  final pulumi.Input<String> accountName;
  /// Specifies the branch of the repository to get code from.
  final pulumi.Input<String> branchName;
  /// Specifies the name of the VSTS project.
  final pulumi.Input<String> projectName;
  /// Is automated publishing enabled? Defaults to `true`.
  final pulumi.Input<bool?>? publishingEnabled;
  /// Specifies the name of the git repository.
  final pulumi.Input<String> repositoryName;
  /// Specifies the root folder within the repository. Set to `/` for the top level.
  final pulumi.Input<String> rootFolder;
  /// Specifies the Tenant ID associated with the VSTS account.
  final pulumi.Input<String> tenantId;

  /// Creates a new [FactoryVstsConfiguration].
  /// [accountName] Specifies the VSTS account name.
  /// [branchName] Specifies the branch of the repository to get code from.
  /// [projectName] Specifies the name of the VSTS project.
  /// [publishingEnabled] Is automated publishing enabled? Defaults to `true`.
  /// [repositoryName] Specifies the name of the git repository.
  /// [rootFolder] Specifies the root folder within the repository. Set to `/` for the top level.
  /// [tenantId] Specifies the Tenant ID associated with the VSTS account.
  const FactoryVstsConfiguration({
    required this.accountName,
    required this.branchName,
    required this.projectName,
    this.publishingEnabled,
    required this.repositoryName,
    required this.rootFolder,
    required this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'branchName': branchName,
      'projectName': projectName,
      'publishingEnabled': ?publishingEnabled,
      'repositoryName': repositoryName,
      'rootFolder': rootFolder,
      'tenantId': tenantId,
    };
  }

  factory FactoryVstsConfiguration.fromMap(Map<String, dynamic> map) {
    return FactoryVstsConfiguration(
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      branchName: pulumi.Input.fromValue(map['branchName'] as String),
      projectName: pulumi.Input.fromValue(map['projectName'] as String),
      publishingEnabled: (() { final guardedValue = map['publishingEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      repositoryName: pulumi.Input.fromValue(map['repositoryName'] as String),
      rootFolder: pulumi.Input.fromValue(map['rootFolder'] as String),
      tenantId: pulumi.Input.fromValue(map['tenantId'] as String),
    );
  }
}
