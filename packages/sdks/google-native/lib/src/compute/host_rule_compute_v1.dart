// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// UrlMaps A host-matching rule for a URL. If matched, will use the named PathMatcher to select the BackendService.
class HostRuleComputeV1 {
  /// An optional description of this resource. Provide this property when you create the resource.
  final pulumi.Input<String>? description;
  /// The list of host patterns to match. They must be valid hostnames with optional port numbers in the format host:port. * matches any string of ([a-z0-9-.]*). In that case, * must be the first character, and if followed by anything, the immediate following character must be either - or .. * based matching is not supported when the URL map is bound to a target gRPC proxy that has the validateForProxyless field set to true.
  final pulumi.Input<List<String>>? hosts;
  /// The name of the PathMatcher to use to match the path portion of the URL if the hostRule matches the URL's host portion.
  final pulumi.Input<String>? pathMatcher;

  /// Creates a new [HostRuleComputeV1].
  /// [description] An optional description of this resource. Provide this property when you create the resource.
  /// [hosts] The list of host patterns to match. They must be valid hostnames with optional port numbers in the format host:port. * matches any string of ([a-z0-9-.]*). In that case, * must be the first character, and if followed by anything, the immediate following character must be either - or .. * based matching is not supported when the URL map is bound to a target gRPC proxy that has the validateForProxyless field set to true.
  /// [pathMatcher] The name of the PathMatcher to use to match the path portion of the URL if the hostRule matches the URL's host portion.
  HostRuleComputeV1({
    this.description,
    this.hosts,
    this.pathMatcher,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'hosts': ?hosts,
      'pathMatcher': ?pathMatcher,
    };
  }

  factory HostRuleComputeV1.fromMap(Map<String, dynamic> map) {
    return HostRuleComputeV1(
      description: map['description'] == null ? null : (map['description'] as String).input(),
      hosts: map['hosts'] == null ? null : ((map['hosts'] as List).cast<String>()).input(),
      pathMatcher: map['pathMatcher'] == null ? null : (map['pathMatcher'] as String).input(),
    );
  }
}

