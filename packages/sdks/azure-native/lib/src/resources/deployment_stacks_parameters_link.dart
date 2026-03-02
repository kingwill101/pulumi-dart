// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Entity representing the reference to the deployment parameters.
class DeploymentStacksParametersLink {
  /// If included, must match the ContentVersion in the template.
  final pulumi.Input<String>? contentVersion;
  /// The URI of the parameters file.
  final pulumi.Input<String> uri;

  /// Creates a new [DeploymentStacksParametersLink].
  /// [contentVersion] If included, must match the ContentVersion in the template.
  /// [uri] The URI of the parameters file.
  DeploymentStacksParametersLink({
    this.contentVersion,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contentVersion': ?contentVersion,
      'uri': uri,
    };
  }

  factory DeploymentStacksParametersLink.fromMap(Map<String, dynamic> map) {
    return DeploymentStacksParametersLink(
      contentVersion: map['contentVersion'] == null ? null : (map['contentVersion'] as String).input(),
      uri: (map['uri'] as String).input(),
    );
  }
}

