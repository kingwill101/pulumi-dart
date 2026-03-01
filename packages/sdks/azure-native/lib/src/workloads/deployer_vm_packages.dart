// ignore_for_file: unused_element, unnecessary_cast


/// Defines the url and storage account ID where deployer VM packages are uploaded
class DeployerVmPackages {
  /// The deployer VM packages storage account id
  final String? storageAccountId;
  /// The URL to the deployer VM packages file.
  final String? url;

  /// Creates a new [DeployerVmPackages].
  /// [storageAccountId] The deployer VM packages storage account id
  /// [url] The URL to the deployer VM packages file.
  DeployerVmPackages({
    this.storageAccountId,
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'storageAccountId': ?storageAccountId,
      'url': ?url,
    };
  }

  factory DeployerVmPackages.fromMap(Map<String, dynamic> map) {
    return DeployerVmPackages(
      storageAccountId: map['storageAccountId'] == null ? null : map['storageAccountId'] as String,
      url: map['url'] == null ? null : map['url'] as String,
    );
  }
}

