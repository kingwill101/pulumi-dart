// ignore_for_file: unused_element, unnecessary_cast

import 'aws_source_details_response_vmmigration_v1alpha1.dart';
import 'azure_source_details_response_vmmigration_v1alpha1.dart';
import 'encryption_response_vmmigration_v1alpha1.dart';
import 'status_response_vmmigration_v1alpha1.dart';
import 'vmware_source_details_response_vmmigration_v1alpha1.dart';

/// Result data returned by getSource.
class GetSourceVmmigrationV1alpha1Result {
  /// AWS type source details.
  final AwsSourceDetailsResponseVmmigrationV1alpha1 aws;
  /// Azure type source details.
  final AzureSourceDetailsResponseVmmigrationV1alpha1 azure;
  /// The create time timestamp.
  final String createTime;
  /// User-provided description of the source.
  final String description;
  /// Optional. Immutable. The encryption details of the source data stored by the service.
  final EncryptionResponseVmmigrationV1alpha1 encryption;
  /// Provides details on the state of the Source in case of an error.
  final StatusResponseVmmigrationV1alpha1 error;
  /// The labels of the source.
  final Map<String, String> labels;
  /// The Source name.
  final String name;
  /// The update time timestamp.
  final String updateTime;
  /// Vmware type source details.
  final VmwareSourceDetailsResponseVmmigrationV1alpha1 vmware;

  /// Creates a new [GetSourceVmmigrationV1alpha1Result].
  /// [aws] AWS type source details.
  /// [azure] Azure type source details.
  /// [createTime] The create time timestamp.
  /// [description] User-provided description of the source.
  /// [encryption] Optional. Immutable. The encryption details of the source data stored by the service.
  /// [error] Provides details on the state of the Source in case of an error.
  /// [labels] The labels of the source.
  /// [name] The Source name.
  /// [updateTime] The update time timestamp.
  /// [vmware] Vmware type source details.
  const GetSourceVmmigrationV1alpha1Result({
    required this.aws,
    required this.azure,
    required this.createTime,
    required this.description,
    required this.encryption,
    required this.error,
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
      'error': error.toMap(),
      'labels': labels,
      'name': name,
      'updateTime': updateTime,
      'vmware': vmware.toMap(),
    };
  }

  factory GetSourceVmmigrationV1alpha1Result.fromMap(Map<String, dynamic> map) {
    return GetSourceVmmigrationV1alpha1Result(
      aws: AwsSourceDetailsResponseVmmigrationV1alpha1.fromMap((map['aws']! as Map).cast<String, dynamic>()),
      azure: AzureSourceDetailsResponseVmmigrationV1alpha1.fromMap((map['azure']! as Map).cast<String, dynamic>()),
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      encryption: EncryptionResponseVmmigrationV1alpha1.fromMap((map['encryption']! as Map).cast<String, dynamic>()),
      error: StatusResponseVmmigrationV1alpha1.fromMap((map['error']! as Map).cast<String, dynamic>()),
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      updateTime: map['updateTime'] as String,
      vmware: VmwareSourceDetailsResponseVmmigrationV1alpha1.fromMap((map['vmware']! as Map).cast<String, dynamic>()),
    );
  }
}
