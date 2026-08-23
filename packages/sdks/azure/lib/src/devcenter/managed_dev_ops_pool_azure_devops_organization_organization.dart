// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ManagedDevOpsPoolAzureDevopsOrganizationOrganization {
  /// Specifies how many machines can be created at maximum in this organization out of the `maximumConcurrency` of the pool. Possible values range between `1` and `10000`.
  ///
  /// &gt; **Note:** The sum of `parallelism` across orgs should be equal to `maximumConcurrency`.
  final pulumi.Input<int> parallelism;
  /// List of projects in which the pool should be created.
  ///
  /// &gt; **Note:** Please refer to [Azure DevOps Project Names](https://learn.microsoft.com/azure/devops/organizations/settings/naming-restrictions?view=azure-devops#project-names) for more information on project naming restrictions.
  final pulumi.Input<List<String>>? projects;
  /// The Azure DevOps organization URL in which the pool should be created. It must end with a letter or number.
  final pulumi.Input<String> url;

  /// Creates a new [ManagedDevOpsPoolAzureDevopsOrganizationOrganization].
  /// [parallelism] Specifies how many machines can be created at maximum in this organization out of the `maximumConcurrency` of the pool. Possible values range between `1` and `10000`.
  /// [projects] List of projects in which the pool should be created.
  /// [url] The Azure DevOps organization URL in which the pool should be created. It must end with a letter or number.
  const ManagedDevOpsPoolAzureDevopsOrganizationOrganization({
    required this.parallelism,
    this.projects,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parallelism': parallelism,
      'projects': ?projects,
      'url': url,
    };
  }

  factory ManagedDevOpsPoolAzureDevopsOrganizationOrganization.fromMap(Map<String, dynamic> map) {
    return ManagedDevOpsPoolAzureDevopsOrganizationOrganization(
      parallelism: pulumi.Input.fromValue(map['parallelism'] as int),
      projects: (() { final guardedValue = map['projects']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      url: pulumi.Input.fromValue(map['url'] as String),
    );
  }
}
