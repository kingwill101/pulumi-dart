// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ospolicy_resource_file_response.dart';

/// A deb package file. dpkg packages only support INSTALLED state.
class OSPolicyResourcePackageResourceDebResponse {
  /// Whether dependencies should also be installed. - install when false: `dpkg -i package` - install when true: `apt-get update && apt-get -y install package.deb`
  final pulumi.Input<bool> pullDeps;
  /// A deb package.
  final pulumi.Input<OSPolicyResourceFileResponse> source;

  /// Creates a new [OSPolicyResourcePackageResourceDebResponse].
  /// [pullDeps] Whether dependencies should also be installed. - install when false: `dpkg -i package` - install when true: `apt-get update && apt-get -y install package.deb`
  /// [source] A deb package.
  OSPolicyResourcePackageResourceDebResponse({
    required this.pullDeps,
    required this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pullDeps': pullDeps,
      'source': pulumi.Input.mapInputValue<OSPolicyResourceFileResponse, Map<String, dynamic>>(source, (value) => value.toMap()),
    };
  }

  factory OSPolicyResourcePackageResourceDebResponse.fromMap(Map<String, dynamic> map) {
    return OSPolicyResourcePackageResourceDebResponse(
      pullDeps: (map['pullDeps'] as bool).input(),
      source: (OSPolicyResourceFileResponse.fromMap((map['source'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

