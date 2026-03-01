// ignore_for_file: unused_element, unnecessary_cast


class DeploymentWebApplicationFirewallStatusBotSignaturesPackage {
  /// The revision date and time of the threat campaigns package.
  final String? revisionDatetime;
  /// The version of the threat campaigns package.
  final String? version;

  /// Creates a new [DeploymentWebApplicationFirewallStatusBotSignaturesPackage].
  /// [revisionDatetime] The revision date and time of the threat campaigns package.
  /// [version] The version of the threat campaigns package.
  DeploymentWebApplicationFirewallStatusBotSignaturesPackage({
    this.revisionDatetime,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'revisionDatetime': ?revisionDatetime,
      'version': ?version,
    };
  }

  factory DeploymentWebApplicationFirewallStatusBotSignaturesPackage.fromMap(Map<String, dynamic> map) {
    return DeploymentWebApplicationFirewallStatusBotSignaturesPackage(
      revisionDatetime: map['revisionDatetime'] == null ? null : map['revisionDatetime'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

