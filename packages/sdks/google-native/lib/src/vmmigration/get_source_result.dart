// ignore_for_file: unused_element, unnecessary_cast

import 'aws_source_details_response.dart';
import 'azure_source_details_response.dart';
import 'encryption_response.dart';
import 'vmware_source_details_response.dart';

/// Result data returned by getSource.
class GetSourceResult {
  /// AWS type source details.
  final AwsSourceDetailsResponse aws;

  /// Azure type source details.
  final AzureSourceDetailsResponse azure;

  /// The create time timestamp.
  final String createTime;

  /// User-provided description of the source.
  final String description;

  /// Optional. Immutable. The encryption details of the source data stored by the service.
  final EncryptionResponse encryption;

  /// The labels of the source.
  final Map<String, String> labels;

  /// The Source name.
  final String name;

  /// The update time timestamp.
  final String updateTime;

  /// Vmware type source details.
  final VmwareSourceDetailsResponse vmware;

  /// Creates a new [GetSourceResult].
  /// [aws] AWS type source details.
  /// [azure] Azure type source details.
  /// [createTime] The create time timestamp.
  /// [description] User-provided description of the source.
  /// [encryption] Optional. Immutable. The encryption details of the source data stored by the service.
  /// [labels] The labels of the source.
  /// [name] The Source name.
  /// [updateTime] The update time timestamp.
  /// [vmware] Vmware type source details.
  GetSourceResult({
    required this.aws,
    required this.azure,
    required this.createTime,
    required this.description,
    required this.encryption,
    required this.labels,
    required this.name,
    required this.updateTime,
    required this.vmware,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aws': aws.toMap(),
      'azure': azure.toMap(),
      'createTime': createTime,
      'description': description,
      'encryption': encryption.toMap(),
      'labels': labels,
      'name': name,
      'updateTime': updateTime,
      'vmware': vmware.toMap(),
    };
  }

  factory GetSourceResult.fromMap(Map<String, dynamic> map) {
    return GetSourceResult(
      aws: AwsSourceDetailsResponse.fromMap(
        (map['aws']! as Map).cast<String, dynamic>(),
      ),
      azure: AzureSourceDetailsResponse.fromMap(
        (map['azure']! as Map).cast<String, dynamic>(),
      ),
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      encryption: EncryptionResponse.fromMap(
        (map['encryption']! as Map).cast<String, dynamic>(),
      ),
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      updateTime: map['updateTime'] as String,
      vmware: VmwareSourceDetailsResponse.fromMap(
        (map['vmware']! as Map).cast<String, dynamic>(),
      ),
    );
  }
}
