// ignore_for_file: unused_element, unnecessary_cast

import 'installation_containeranalysis_v1beta1.dart';

/// Details of a package occurrence.
class GrafeasV1beta1PackageDetails {
  /// Where the package was installed.
  final InstallationContaineranalysisV1beta1 installation;

  /// Creates a new [GrafeasV1beta1PackageDetails].
  /// [installation] Where the package was installed.
  GrafeasV1beta1PackageDetails({
    required this.installation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'installation': installation.toMap(),
    };
  }

  factory GrafeasV1beta1PackageDetails.fromMap(Map<String, dynamic> map) {
    return GrafeasV1beta1PackageDetails(
      installation: InstallationContaineranalysisV1beta1.fromMap((map['installation'] as Map).cast<String, dynamic>()),
    );
  }
}

