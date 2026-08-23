// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetFactoryVstsConfiguration {
  /// The VSTS account name.
  final pulumi.Input<String> accountName;
  /// The branch of the repository to get code from.
  final pulumi.Input<String> branchName;
  /// The name of the VSTS project.
  final pulumi.Input<String> projectName;
  /// The name of the git repository.
  final pulumi.Input<String> repositoryName;
  /// The root folder within the repository.
  final pulumi.Input<String> rootFolder;
  /// The Tenant ID associated with the VSTS account.
  final pulumi.Input<String> tenantId;

  /// Creates a new [GetFactoryVstsConfiguration].
  /// [accountName] The VSTS account name.
  /// [branchName] The branch of the repository to get code from.
  /// [projectName] The name of the VSTS project.
  /// [repositoryName] The name of the git repository.
  /// [rootFolder] The root folder within the repository.
  /// [tenantId] The Tenant ID associated with the VSTS account.
  const GetFactoryVstsConfiguration({
    required this.accountName,
    required this.branchName,
    required this.projectName,
    required this.repositoryName,
    required this.rootFolder,
    required this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'branchName': branchName,
      'projectName': projectName,
      'repositoryName': repositoryName,
      'rootFolder': rootFolder,
      'tenantId': tenantId,
    };
  }

  factory GetFactoryVstsConfiguration.fromMap(Map<String, dynamic> map) {
    return GetFactoryVstsConfiguration(
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      branchName: pulumi.Input.fromValue(map['branchName'] as String),
      projectName: pulumi.Input.fromValue(map['projectName'] as String),
      repositoryName: pulumi.Input.fromValue(map['repositoryName'] as String),
      rootFolder: pulumi.Input.fromValue(map['rootFolder'] as String),
      tenantId: pulumi.Input.fromValue(map['tenantId'] as String),
    );
  }
}
