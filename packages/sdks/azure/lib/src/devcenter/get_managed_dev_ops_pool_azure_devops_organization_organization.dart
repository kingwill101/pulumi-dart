// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetManagedDevOpsPoolAzureDevopsOrganizationOrganization {
  /// Maximum numbers of machines in this organization out of the `maximumConcurrency` of the pool.
  final pulumi.Input<int> parallelism;
  /// A list of projects in which the pool should be created.
  final pulumi.Input<List<String>> projects;
  /// The URL of the Azure DevOps organization.
  final pulumi.Input<String> url;

  /// Creates a new [GetManagedDevOpsPoolAzureDevopsOrganizationOrganization].
  /// [parallelism] Maximum numbers of machines in this organization out of the `maximumConcurrency` of the pool.
  /// [projects] A list of projects in which the pool should be created.
  /// [url] The URL of the Azure DevOps organization.
  const GetManagedDevOpsPoolAzureDevopsOrganizationOrganization({
    required this.parallelism,
    required this.projects,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parallelism': parallelism,
      'projects': projects,
      'url': url,
    };
  }

  factory GetManagedDevOpsPoolAzureDevopsOrganizationOrganization.fromMap(Map<String, dynamic> map) {
    return GetManagedDevOpsPoolAzureDevopsOrganizationOrganization(
      parallelism: pulumi.Input.fromValue((map['parallelism'] as num).toInt()),
      projects: pulumi.Input.fromValue((map['projects'] as List).cast<String>()),
      url: pulumi.Input.fromValue(map['url'] as String),
    );
  }
}
