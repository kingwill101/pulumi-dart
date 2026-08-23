// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// This type describes a volume provided by an Azure Files file share.
class VolumeProviderParametersAzureFileResponse {
  /// Access key of the Azure storage account for the File Share.
  final pulumi.Input<String>? accountKey;
  /// Name of the Azure storage account for the File Share.
  final pulumi.Input<String> accountName;
  /// Name of the Azure Files file share that provides storage for the volume.
  final pulumi.Input<String> shareName;

  /// Creates a new [VolumeProviderParametersAzureFileResponse].
  /// [accountKey] Access key of the Azure storage account for the File Share.
  /// [accountName] Name of the Azure storage account for the File Share.
  /// [shareName] Name of the Azure Files file share that provides storage for the volume.
  const VolumeProviderParametersAzureFileResponse({
    this.accountKey,
    required this.accountName,
    required this.shareName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountKey': ?accountKey,
      'accountName': accountName,
      'shareName': shareName,
    };
  }

  factory VolumeProviderParametersAzureFileResponse.fromMap(Map<String, dynamic> map) {
    return VolumeProviderParametersAzureFileResponse(
      accountKey: (() { final guardedValue = map['accountKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      shareName: pulumi.Input.fromValue(map['shareName'] as String),
    );
  }
}
