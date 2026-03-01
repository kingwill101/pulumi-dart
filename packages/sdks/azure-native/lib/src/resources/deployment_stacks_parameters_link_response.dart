// ignore_for_file: unused_element, unnecessary_cast


/// Entity representing the reference to the deployment parameters.
class DeploymentStacksParametersLinkResponse {
  /// If included, must match the ContentVersion in the template.
  final String? contentVersion;
  /// The URI of the parameters file.
  final String uri;

  /// Creates a new [DeploymentStacksParametersLinkResponse].
  /// [contentVersion] If included, must match the ContentVersion in the template.
  /// [uri] The URI of the parameters file.
  DeploymentStacksParametersLinkResponse({
    this.contentVersion,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contentVersion': ?contentVersion,
      'uri': uri,
    };
  }

  factory DeploymentStacksParametersLinkResponse.fromMap(Map<String, dynamic> map) {
    return DeploymentStacksParametersLinkResponse(
      contentVersion: map['contentVersion'] == null ? null : map['contentVersion'] as String,
      uri: map['uri'] as String,
    );
  }
}

