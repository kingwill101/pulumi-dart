// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ospolicy_resource_file_response.dart';

/// An RPM package file. RPM packages only support INSTALLED state.
class OSPolicyResourcePackageResourceRPMResponse {
  /// Whether dependencies should also be installed. - install when false: `rpm --upgrade --replacepkgs package.rpm` - install when true: `yum -y install package.rpm` or `zypper -y install package.rpm`
  final pulumi.Input<bool> pullDeps;
  /// An rpm package.
  final pulumi.Input<OSPolicyResourceFileResponse> source;

  /// Creates a new [OSPolicyResourcePackageResourceRPMResponse].
  /// [pullDeps] Whether dependencies should also be installed. - install when false: `rpm --upgrade --replacepkgs package.rpm` - install when true: `yum -y install package.rpm` or `zypper -y install package.rpm`
  /// [source] An rpm package.
  OSPolicyResourcePackageResourceRPMResponse({
    required this.pullDeps,
    required this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pullDeps': pullDeps,
      'source': pulumi.Input.mapInputValue<OSPolicyResourceFileResponse, Map<String, dynamic>>(source, (value) => value.toMap()),
    };
  }

  factory OSPolicyResourcePackageResourceRPMResponse.fromMap(Map<String, dynamic> map) {
    return OSPolicyResourcePackageResourceRPMResponse(
      pullDeps: pulumi.Input.fromValue(map['pullDeps'] as bool),
      source: pulumi.Input.fromValue(OSPolicyResourceFileResponse.fromMap((map['source']! as Map).cast<String, dynamic>())),
    );
  }
}

