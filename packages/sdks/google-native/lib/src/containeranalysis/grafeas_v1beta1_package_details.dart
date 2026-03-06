// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'installation_containeranalysis_v1beta1.dart';

/// Details of a package occurrence.
class GrafeasV1beta1PackageDetails {
  /// Where the package was installed.
  final pulumi.Input<InstallationContaineranalysisV1beta1> installation;

  /// Creates a new [GrafeasV1beta1PackageDetails].
  /// [installation] Where the package was installed.
  const GrafeasV1beta1PackageDetails({
    required this.installation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'installation': pulumi.Input.mapInputValue<InstallationContaineranalysisV1beta1, Map<String, dynamic>>(installation, (value) => value.toMap()),
    };
  }

  factory GrafeasV1beta1PackageDetails.fromMap(Map<String, dynamic> map) {
    return GrafeasV1beta1PackageDetails(
      installation: pulumi.Input.fromValue(InstallationContaineranalysisV1beta1.fromMap((map['installation']! as Map).cast<String, dynamic>())),
    );
  }
}

