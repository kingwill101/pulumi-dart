// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// GroupVersion contains the "group/version" and "version" string of a version. It is made a struct to keep extensibility.
class GroupVersionForDiscoveryPatch {
  /// groupVersion specifies the API group and version in the form "group/version"
  final pulumi.Input<String>? groupVersion;
  /// version specifies the version in the form of "version". This is to save the clients the trouble of splitting the GroupVersion.
  final pulumi.Input<String>? version;

  /// Creates a new [GroupVersionForDiscoveryPatch].
  /// [groupVersion] groupVersion specifies the API group and version in the form "group/version"
  /// [version] version specifies the version in the form of "version". This is to save the clients the trouble of splitting the GroupVersion.
  GroupVersionForDiscoveryPatch({
    this.groupVersion,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupVersion': ?groupVersion,
      'version': ?version,
    };
  }

  factory GroupVersionForDiscoveryPatch.fromMap(Map<String, dynamic> map) {
    return GroupVersionForDiscoveryPatch(
      groupVersion: map['groupVersion'] == null ? null : (map['groupVersion'] as String).input(),
      version: map['version'] == null ? null : (map['version'] as String).input(),
    );
  }
}

