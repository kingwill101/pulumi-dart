// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// GroupVersion contains the "group/version" and "version" string of a version. It is made a struct to keep extensibility.
class GroupVersionForDiscovery {
  /// groupVersion specifies the API group and version in the form "group/version"
  final pulumi.Input<String> groupVersion;
  /// version specifies the version in the form of "version". This is to save the clients the trouble of splitting the GroupVersion.
  final pulumi.Input<String> version;

  /// Creates a new [GroupVersionForDiscovery].
  /// [groupVersion] groupVersion specifies the API group and version in the form "group/version"
  /// [version] version specifies the version in the form of "version". This is to save the clients the trouble of splitting the GroupVersion.
  const GroupVersionForDiscovery({
    required this.groupVersion,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupVersion': groupVersion,
      'version': version,
    };
  }

  factory GroupVersionForDiscovery.fromMap(Map<String, dynamic> map) {
    return GroupVersionForDiscovery(
      groupVersion: pulumi.Input.fromValue(map['groupVersion'] as String),
      version: pulumi.Input.fromValue(map['version'] as String),
    );
  }
}
