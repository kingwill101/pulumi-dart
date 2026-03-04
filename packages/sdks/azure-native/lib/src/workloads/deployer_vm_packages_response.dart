// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines the url and storage account ID where deployer VM packages are uploaded
class DeployerVmPackagesResponse {
  /// The deployer VM packages storage account id
  final pulumi.Input<String>? storageAccountId;

  /// The URL to the deployer VM packages file.
  final pulumi.Input<String>? url;

  /// Creates a new [DeployerVmPackagesResponse].
  /// [storageAccountId] The deployer VM packages storage account id
  /// [url] The URL to the deployer VM packages file.
  DeployerVmPackagesResponse({this.storageAccountId, this.url});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'storageAccountId': ?storageAccountId,
      'url': ?url,
    };
  }

  factory DeployerVmPackagesResponse.fromMap(Map<String, dynamic> map) {
    return DeployerVmPackagesResponse(
      storageAccountId: (() {
        final guardedValue = map['storageAccountId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      url: (() {
        final guardedValue = map['url'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
